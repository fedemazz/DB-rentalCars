DELIMITER $$

DROP PROCEDURE IF EXISTS `getCodicePrenotazione`$$

DELIMITER $$
#UTENTI ricerca utenti per email nome e cognome
CREATE PROCEDURE allUtenti()
BEGIN
SELECT * FROM utente,immaginiUtente 
WHERE (email=emailUtente);
END$$ 

DELIMITER $$
CREATE PROCEDURE getLog (IN emailUtente VARCHAR(50))  
BEGIN
    SELECT email,nome,cognome FROM  utente WHERE email=emailUtente;
END$$




CREATE PROCEDURE getSocieta()
BEGIN
 SELECT * FROM societa;
END$$


#REGISTRAZIONE in utenteStandard

CREATE PROCEDURE insertUtenteStandard(IN emailUt varchar(50))
BEGIN
 INSERT INTO utenteStandard (emailUtente) 
    VALUES (emailUt);
END$$

 
CREATE PROCEDURE InsertUtente(IN email varchar(50),IN nome char(20),IN cognome char(20),IN luogo char(20), IN dataNasc date ,IN passwordUtente char(20))
BEGIN
 INSERT INTO utente (email,nome,cognome,luogo,dataNasc,passwordUtente)
    VALUES (email,nome,cognome,luogo,dataNasc,passwordUtente);
END$$
    

CREATE PROCEDURE eliminaUtente(IN emailUtente varchar(30))
BEGIN
 DELETE FROM utente WHERE email=emailUtente;
END$$



CREATE PROCEDURE ricercaUtente(IN ricerca varchar(50))
BEGIN
SELECT * FROM utente,immaginiUtente 
WHERE( (email LIKE concat(ricerca,'%') OR 
	nome LIKE concat(ricerca,'%')  OR 
    cognome LIKE concat(ricerca,'%'))AND email=emailUtente);
                                  
END$$
    
    

    
    DELIMITER $$
    CREATE PROCEDURE ricercaUtente2()
BEGIN
 SELECT * FROM  utente,immaginiUtente WHERE email=emailUtente;
    END$$
    
    
    
DELIMITER $$
 
CREATE PROCEDURE InsertImmaginiUtente(IN emailUt varchar(50),IN imm longblob)
BEGIN
 INSERT INTO immaginiUtente (emailUtente,foto)
    VALUES (emailUt,imm);
    END$$
    


DELIMITER $$
 
CREATE PROCEDURE InsertUtenteAziendale(IN emailUtente varchar(50),IN nomeAzienda char(20),IN indirizzo char(20),IN telefono char (20),IN contattoResp char(20))
BEGIN
INSERT INTO utenteVip values (emailUtente);
 INSERT INTO utenteAziendale (emailUtente,nomeAzienda,indirizzo,telefono,contattoResp)
    VALUES (emailUtente,nomeAzienda,indirizzo,telefono,contattoResp);
    END$$

DELIMITER $$
CREATE PROCEDURE richiestaPrenotazione2 
				(IN areaPartenza int,IN dataRichiestaInizio datetime, IN dataRichiestaFine DATETIME, tipoAuto varchar(20))
BEGIN
select * 
from veicolo,autoInSosta 
where (autoInSosta.codiceArea=areaPartenza) 
		and (veicolo.tipo=tipoAuto)
		and targa NOT IN( select targaVeicolo 
						  from prenotazione 
						  where ((dataRichiestaInizio between dataOraInizio and dataOraFine) 
							      or (dataRIchiestaFine between dataOraInizio and dataOraFine)))
								and (targa=targaAuto);
END$$



DELIMITER $$

CREATE PROCEDURE richiestaPrenotazione
				(IN cittaPartenza varchar(30),IN dataRichiestaInizio datetime, IN dataRichiestaFine DATETIME)
BEGIN
select *
from veicolo,autoInSosta,areaSosta,fotoModelloAuto
where (areaSosta.citta=cittaPartenza) 
		and (areaSosta.codiceArea=autoInSosta.codiceArea)
        and (veicolo.modello=fotoModelloAuto.modelloAuto)
		and targa NOT IN( select targaVeicolo 
						  from prenotazione 
						  where ((dataRichiestaInizio between dataOraInizio and dataOraFine) 
							      or (dataRIchiestaFine between dataOraInizio and dataOraFine)))
								and (targa=targaAuto);
END$$

                 
                 
DELIMITER $$
CREATE PROCEDURE insertPrenotazione(IN emailUtente varchar(50),IN targa varchar(10),IN dataOraInizio datetime,IN dataOraFine datetime, IN  note varchar(250),
									IN codPartenza int, IN codArrivo int)
BEGIN
 INSERT INTO prenotazione (emailUtente,targaVeicolo,dataOrainizio,dataOraFine,note,codAreaPartenza,codAreaArrivo)
    VALUES (emailUtente,targa,dataOrainizio,dataOraFine,note,codPartenza,codArrivo);
    END$$
 


DELIMITER $$ 
CREATE PROCEDURE insertCarpooling(IN codice int, IN codicePartenza int, IN codiceArrivo int, IN numeroKm int, IN tipologia varchar (20))
BEGIN
#declare email varchar (20);
if exists (select utenteVip.emailUtente from prenotazione,utenteVip where prenotazione.emailUtente=utenteVip.emailUtente and prenotazione.codice=codice) then
INSERT INTO domandaCarpooling VALUES (codice,codicePartenza,codiceArrivo,numeroKm,tipologia);
end if;
END$$

DELIMITER $$
CREATE PROCEDURE eliminaSosta (IN targa varchar(10))
BEGIN
DELETE FROM autoInSosta WHERE targaAuto=targa;
END$$

DELIMITER $$
CREATE PROCEDURE aggiungiSosta (IN codiceArea int,IN targa varchar(10))
BEGIN
INSERT INTO autoInSosta VALUES (codiceArea,targa);
END$$



DELIMITER $$
CREATE PROCEDURE getCodice (IN nomeArea varchar(40))
BEGIN
SELECT codiceArea FROM areaSosta WHERE (indirizzo=nomeArea);
END$$


DELIMITER $$
CREATE PROCEDURE getVeicoloScelto (IN targaVeicolo varchar(7))
BEGIN
SELECT  *
FROM veicolo,autoInSosta,fotoModelloAuto,areaSosta 
WHERE targa=targaVeicolo and targa=targaAuto and modello=modelloAuto and autoInSosta.codiceArea=areaSosta.codiceArea;
END$$

DELIMITER $$
CREATE PROCEDURE getCodicePrenotazione (IN email varchar(50))
BEGIN
select codice 
from prenotazione 
where codice = (select max(codice) from prenotazione where emailUtente=email);
END$$


DELIMITER $$
CREATE PROCEDURE storicoPrenotazioni (IN email varchar(50))
BEGIN
select * 
from prenotazione,veicolo 
where emailUtente=email and targaVeicolo=targa
order by dataOraInizio asc;
END$$


DELIMITER $$
CREATE PROCEDURE getDettagliPrenotazione (IN codicePrenotazione INT)
BEGIN
SELECT * 
FROM prenotazione,veicolo
WHERE codice=codicePrenotazione and prenotazione.targaVeicolo=veicolo.targa;
END$$


DELIMITER $$
CREATE PROCEDURE getDettagliAreaSosta (IN codiceAreaSosta INT)
BEGIN
SELECT citta,indirizzo,latitudine,longitudine
FROM areaSosta
WHERE codiceArea=codiceAreaSosta;
END$$


DELIMITER $$
CREATE PROCEDURE aggiungiTappa (IN codPrenotazione int,IN nTappa int,via varchar(50),city varchar(50),lat float,longi float,ora time)
BEGIN
INSERT INTO tappa (codicePrenotazione,numeroTappa,via,citta,latitudine,longitudine,orario) VALUES (codPrenotazione,nTappa,via,city,lat,longi,ora);
END$$


DELIMITER $$
CREATE PROCEDURE getLatLongAreaSosta (IN codiceAreaSosta INT)
BEGIN
SELECT latitudine,longitudine,citta,indirizzo 
FROM areaSosta
WHERE codiceArea=codiceAreaSosta;
END$$


DELIMITER $$
CREATE PROCEDURE getSocAppartenenza (IN email varchar(20), out soc varchar (20))
BEGIN
set soc = (SELECT nomeAzienda
FROM utenteAziendale
WHERE emailUtente=email);
END$$


DELIMITER $$
CREATE PROCEDURE ricercaPooling(IN email varchar (30),IN cittaPartenza varchar(50),IN cittaArrivo varchar(50))
BEGIN
call infoUtente(email,@stato);
if (@stato='premium')  then
    Select a1.codicePrenotazione as codice,a1.via as via1,a1.citta as citta1, a2.via as via2, a2.citta as citta2,
		   a1.orario as orario1, a2.orario as orario2, a1.numeroTappa as num1, a2.numeroTappa as num2, modello, prenotazione.emailUtente
    from tappa as a1, tappa as a2,prenotazione,veicolo,utentePremium
    where   a1.citta=cittaPartenza AND a2.citta=cittaArrivo
			AND prenotazione.codice=a1.codicePrenotazione AND prenotazione.codice=a2.codicePrenotazione
			AND prenotazione.dataOraInizio > NOW()
			AND a1.numeroTappa<a2.numeroTappa 
            and prenotazione.targaVeicolo=veicolo.targa
            and a1.stato = 'aperta'
            and prenotazione.emailUtente=utentePremium.emailUtente; 
            
            elseif (@stato='aziendale') then
            
    call getSocAppartenenza (email,@soc);     
	Select a1.codicePrenotazione as codice,a1.via as via1,a1.citta as citta1, a2.via as via2, a2.citta as citta2,
		   a1.orario as orario1, a2.orario as orario2, a1.numeroTappa as num1, a2.numeroTappa as num2, modello, prenotazione.emailUtente
    from tappa as a1, tappa as a2,prenotazione,veicolo,utenteAziendale
    where   a1.citta=cittaPartenza AND a2.citta=cittaArrivo
			AND prenotazione.codice=a1.codicePrenotazione AND prenotazione.codice=a2.codicePrenotazione
			AND prenotazione.dataOraInizio > NOW()
			AND a1.numeroTappa<a2.numeroTappa 
            and prenotazione.targaVeicolo=veicolo.targa
            and a1.stato = 'aperta'
            and prenotazione.emailUtente=utenteAziendale.emailUtente
            and (prenotazione.emailUtente in ( select emailUtente
										   from utenteAziendale
                                           where utenteAziendale.nomeAzienda=@soc));
end if;
END$$


DELIMITER $$
CREATE PROCEDURE insertPrenotazionePooling(IN codice int, IN email varchar (30), IN codPar int, IN codArr int)
BEGIN
insert into prenotazioneCarpooling values (codice,email,codPar,codArr);
END$$




DELIMITER $$
CREATE PROCEDURE infoUtente(IN email varchar(50), out info varchar(20) )
BEGIN
IF exists (SELECT email from utenteStandard where utenteStandard.emailUtente=email) then
set info='standard';
else if exists (SELECT email from utentePremium where utentePremium.emailUtente=email) then
set info='premium';
else if exists (SELECT email from utenteAziendale where utenteAziendale.emailUtente=email) then
set info='aziendale';
else set info='non trovato';
end if;
end if;
end if;
END$$

DELIMITER $$
CREATE PROCEDURE infoUtenteVip(IN email varchar(50), out info varchar(20) )
BEGIN
IF exists (SELECT email from utenteVip where utenteVip.emailUtente=email) then
set info='vip';
else set info='non trovato';
end if;
END$$


DELIMITER $$
CREATE PROCEDURE insertValutazione(IN mittente varchar(50), IN destinatario varchar(50),IN dataValutazione date,testo varchar (500), voto varchar (10))
BEGIN
IF exists(select * from prenotazione,prenotazioneCarpooling where emailPasseggero=mittente 
									 and  codice=codicePrenotazione
                                     and emailUtente=destinatario)
then insert into valutazione(dataValutazione,testo,voto,mittente,destinatario) values (dataValutazione,testo,voto,mittente,destinatario);
end if;
END$$


DELIMITER $$
CREATE PROCEDURE visualizzaFeedback (IN email varchar(50))
BEGIN
SELECT * 
FROM  valutazione
WHERE destinatario=email;
END$$				
                

DELIMITER $$
CREATE PROCEDURE insertSegnalazioneUtente(IN mittente varchar(50), IN targa varchar(7),IN dataSegnalazione date,testo varchar (250), titolo varchar (10))
BEGIN
IF exists(select * from prenotazione where emailUtente=mittente
									 and  targaVeicolo=targa)
then insert into segnalazioneUtente(titolo,targaVeicolo,autoreUtente,dataSegnalazione,testo) values (titolo,targa,mittente,dataSegnalazione,testo);
end if;
END$$                

               
DELIMITER $$
CREATE PROCEDURE insertSegnalazioneSocieta(IN mittente varchar(50), IN targa varchar(7),IN dataSegnalazione date,testo varchar (250), titolo varchar (10))
BEGIN
IF exists(select * from veicolo where nomeSocieta=mittente
									 and  veicolo.targa=targa)
then insert into segnalazioneSocieta(titolo,targaVeicolo,autoreSocieta,dataSegnalazione,testo) values (titolo,targa,mittente,dataSegnalazione,testo);
end if;
END$$     
			
         
         
DELIMITER $$
CREATE PROCEDURE visualizzaSegnalazioni ()
BEGIN
select * from segnalazioneUtente
union
select * from segnalazioneSocieta;
END$$		
   
    
    
DELIMITER $$
CREATE PROCEDURE visualizzaSegnalazioniSocieta (IN nome varchar (20))
BEGIN
select * from segnalazioneUtente where targaVeicolo in (select targa from veicolo where nomeSocieta=nome)
union
select * from segnalazioneSocieta where targaVeicolo in (select targa from veicolo where nomeSocieta=nome);
END$$		
     
call classificaModelli

DELIMITER $$
CREATE PROCEDURE votiMedi ()
BEGIN
select avg(voto) as voto,destinatario as utente
from valutazione
group by destinatario;
END$$	

DELIMITER $$
CREATE PROCEDURE classificaSegnalazioni ()
BEGIN
select autoreUtente,count(*) as numSegnalazioni
from segnalazioneUtente
group by autoreUtente
order by numSegnalazioni desc;
END$$


DELIMITER $$
CREATE PROCEDURE classificaModelli ()
BEGIN
select count(*)as numPrenotazioni,modello
from prenotazione,veicolo
where targaVeicolo=targa
group by modello
order by numPrenotazioni desc;
END$$

