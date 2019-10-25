DROP DATABASE offCarpool;
CREATE DATABASE offCarpool;
USE offCarpool;

CREATE TABLE utente (
    email VARCHAR(50) NOT NULL,
    nome CHAR(20) NOT NULL,
    cognome CHAR(20) NOT NULL,
    luogo CHAR(20) NOT NULL,
    dataNasc DATE NOT NULL,
    passwordUtente CHAR(20) NOT NULL,
    PRIMARY KEY (email)
)  ENGINE=INNODB;


CREATE TABLE immaginiUtente (
    emailUtente VARCHAR(50) NOT NULL,
    foto LONGBLOB NOT NULL,
    PRIMARY KEY (emailUtente),
    FOREIGN KEY (emailUtente)
        REFERENCES utente (email)
        ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE utenteStandard (
    emailUtente VARCHAR(50) NOT NULL PRIMARY KEY,
    FOREIGN KEY (emailUtente)
        REFERENCES utente (email)
        ON DELETE CASCADE
)  ENGINE=INNODB;

CREATE TABLE utenteVip (
    emailUtente VARCHAR(50) NOT NULL PRIMARY KEY,
    FOREIGN KEY (emailUtente)
        REFERENCES utente (email)
        ON DELETE CASCADE
)  ENGINE=INNODB;

CREATE TABLE utentePremium (
    emailUtente VARCHAR(50) NOT NULL PRIMARY KEY,
    FOREIGN KEY (emailUtente)
        REFERENCES utenteVip (emailUtente)
        ON DELETE CASCADE
)  ENGINE=INNODB;

CREATE TABLE utenteAziendale (
    emailUtente VARCHAR(50) NOT NULL PRIMARY KEY,
    nomeAzienda VARCHAR(30) NOT NULL,
    indirizzo VARCHAR(30),
    telefono VARCHAR(10),
    contattoResp VARCHAR(12),
    FOREIGN KEY (emailUtente)
        REFERENCES utenteVip (emailUtente)
        ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE societa (
    nome VARCHAR(50) NOT NULL PRIMARY KEY,
    url VARCHAR(60) NOT NULL,
    contattoTelefonico VARCHAR(10),
    logo VARCHAR(20),
    numeroVeicoli INT
)  ENGINE=INNODB;
alter table societa add passwordSocieta varchar(10);
    
CREATE TABLE societaPubb (
    nome VARCHAR(50) NOT NULL PRIMARY KEY,
    FOREIGN KEY (nome)
        REFERENCES societa (nome)
        ON DELETE CASCADE
)  ENGINE=INNODB;
    
CREATE TABLE societaPriv (
    nome VARCHAR(50) NOT NULL PRIMARY KEY,
    brochure BLOB,
    FOREIGN KEY (nome)
        REFERENCES societa (nome)
        ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE veicolo (
    targa VARCHAR(7) NOT NULL PRIMARY KEY,
    modello VARCHAR(20) NOT NULL,
    tipo ENUM('compatta', 'berlina', 'monoposto', 'familiare') NOT NULL,
    nomeSocieta VARCHAR(50) NOT NULL,
    capienza INTEGER NOT NULL,
    descrizione VARCHAR(100),
    tariffaFeriale INTEGER,
    tariffaFestiva INTEGER,
    FOREIGN KEY (nomeSocieta)
        REFERENCES societa (nome)
        ON DELETE CASCADE
)  ENGINE=INNODB;

CREATE TABLE fotoModelloAuto (
    modelloAuto VARCHAR(20) NOT NULL,
    foto VARCHAR(200),
    PRIMARY KEY (modelloAuto)
)  ENGINE=INNODB;

CREATE TABLE areaSosta (
    codiceArea INT AUTO_INCREMENT NOT NULL,
    latitudine VARCHAR(20),
    longitudine VARCHAR(20),
    indirizzo VARCHAR(100),
    citta VARCHAR(20),
    stato ENUM('Possibilità di ricarica', 'Assenza di prese di ricarica') DEFAULT 'Assenza di prese di ricarica',
    place_id VARCHAR(150) DEFAULT NULL,
    PRIMARY KEY (codiceArea)
)  ENGINE=INNODB;
ALTER TABLE areaSosta ADD UNIQUE (latitudine,longitudine,indirizzo,citta);


CREATE TABLE autoInSosta (
    codiceArea INT NOT NULL,
    targaAuto VARCHAR(10) NOT NULL,
    PRIMARY KEY (targaAuto),
    FOREIGN KEY (codiceArea)
        REFERENCES areaSosta (codiceArea),
    FOREIGN KEY (targaAuto)
        REFERENCES veicolo (targa)
)  ENGINE=INNODB;


CREATE TABLE prenotazione (
    codice INT AUTO_INCREMENT NOT NULL,
    emailUtente VARCHAR(50) NOT NULL,
    targaVeicolo VARCHAR(10) NOT NULL,
    dataOraInizio DATETIME NOT NULL,
    dataOraFine DATETIME NOT NULL,
    note VARCHAR(250),
    codAreaPartenza INT NOT NULL,
    codAreaArrivo INT NOT NULL,
    PRIMARY KEY (codice),
    UNIQUE (targaVeicolo , dataOraInizio , dataOraFine),
    FOREIGN KEY (emailUtente)
        REFERENCES utente (email)
        ON DELETE CASCADE,
    FOREIGN KEY (targaVeicolo)
        REFERENCES veicolo (targa)
        ON DELETE CASCADE,
    FOREIGN KEY (codAreaPartenza)
        REFERENCES areaSosta (codiceArea)
        ON DELETE CASCADE,
    FOREIGN KEY (codAreaArrivo)
        REFERENCES areaSosta (codiceArea)
        ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE domandaCarpooling (
    codicePrenotazione INT NOT NULL PRIMARY KEY,
    codPartenza INT NOT NULL,
    codArrivo INT NOT NULL,
    numeroKm INT(100) NOT NULL,
    tipologia ENUM('urbano', 'extra-urbano', 'autostradale', 'misto') NOT NULL,
    FOREIGN KEY (codicePrenotazione)
        REFERENCES prenotazione (codice)
        ON DELETE CASCADE
)  ENGINE=INNODB;
alter table domandaCarpooling add foreign key (codPartenza) references prenotazione(codAreaPartenza);
alter table domandaCarpooling add foreign key (codArrivo) references prenotazione(codAreaArrivo);


CREATE TABLE tappa (
    codicePrenotazione INT NOT NULL,
    numeroTappa INTEGER NOT NULL,
    via VARCHAR(50) NOT NULL,
    citta VARCHAR(50) NOT NULL,
    latitudine FLOAT NOT NULL,
    longitudine FLOAT NOT NULL,
    orario TIME,
    stato VARCHAR(10) DEFAULT 'aperta',
    PRIMARY KEY (numeroTappa , codicePrenotazione)
)  ENGINE=INNODB;
alter table tappa add foreign key (codicePrenotazione) references domandaCarpooling(codicePrenotazione) ON DELETE CASCADE;

CREATE TABLE prenotazioneCarpooling (
    codicePrenotazione INT NOT NULL,
    emailPasseggero VARCHAR(30) NOT NULL,
    numeroTappaPartenza INTEGER NOT NULL,
    numeroTappaArrivo INTEGER NOT NULL,
    PRIMARY KEY (codicePrenotazione , emailPasseggero),
    FOREIGN KEY (emailPasseggero)
        REFERENCES utenteVip (emailUtente)
        ON DELETE CASCADE,
    FOREIGN KEY (numeroTappaPartenza , codicePrenotazione)
        REFERENCES tappa (numeroTappa , codicePrenotazione)
        ON DELETE CASCADE,
    FOREIGN KEY (numeroTappaArrivo , codicePrenotazione)
        REFERENCES tappa (numeroTappa , codicePrenotazione)
        ON DELETE CASCADE
)  ENGINE=INNODB;




CREATE TABLE valutazione (
    codice INT AUTO_INCREMENT,
    dataValutazione DATE,
    testo VARCHAR(500) NOT NULL,
    voto INT NOT NULL,
    mittente VARCHAR(30) NOT NULL,
    destinatario VARCHAR(30) NOT NULL,
    PRIMARY KEY (codice),
    FOREIGN KEY (mittente)
        REFERENCES utentePremium (emailUtente)
        ON DELETE CASCADE,
    FOREIGN KEY (destinatario)
        REFERENCES utentePremium (emailUtente)
        ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE segnalazioneUtente (
    codice INT AUTO_INCREMENT,
    titolo VARCHAR(50) NOT NULL,
    targaVeicolo VARCHAR(10) NOT NULL,
    autoreUtente VARCHAR(30) NOT NULL,
    dataSegnalazione DATE,
    testo VARCHAR(250),
    PRIMARY KEY (codice),
    FOREIGN KEY (targaVeicolo)
        REFERENCES veicolo (targa)
        ON DELETE CASCADE,
    FOREIGN KEY (autoreUtente)
        REFERENCES utente (email)
        ON DELETE CASCADE
)  ENGINE=INNODB;



CREATE TABLE segnalazioneSocieta (
    codice INT AUTO_INCREMENT,
    titolo VARCHAR(50) NOT NULL,
    targaVeicolo VARCHAR(10) NOT NULL,
    autoreSocieta VARCHAR(30) NOT NULL,
    dataSegnalazione DATE,
    testo VARCHAR(250),
    PRIMARY KEY (codice),
    FOREIGN KEY (targaVeicolo)
        REFERENCES veicolo (targa)
        ON DELETE CASCADE,
    FOREIGN KEY (autoreSocieta)
        REFERENCES societa (nome)
        ON DELETE CASCADE
)  ENGINE=INNODB;



