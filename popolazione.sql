#INSERIMENTO SOCIETA
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('CARTV','www.cartv.it','3457684939','CARTV.png','cartv');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('REDLINE','www.redline.it','3483498336','REDLINE.png','redline');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('TAROCCHI AUTO','www.tarocchiauto.it','3482649598','TAROCCHIAUTO.png','tarocchi');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('WIKIAUTO','www.wikiauto.it','3482539450','WIKIAUTO.png','wikiauto');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('ZOOM','www.zoom.it','3548792548','ZOOM.png','zoom');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('SKRRT','www.skrrt.it','3549565816','SKRRT.png','skrrt');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('BOLOCAR','www.bolocar.it','3549565816','BOLOCAR.png','bolocar');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('MILANCAR','www.milancar.it','3563737336','MILANCAR.png','milancar');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('ROMECAR','www.romecar.it','3546273546','ROMECAR.png','romecar');
INSERT INTO societa(nome,url,contattoTelefonico,logo,passwordSocieta) VALUES ('AUTODIDATTA','www.autodidatta.it','3543473546','AUTODIDATTA.png','auto');



#INSERIMENTO SOCIETA 
INSERT INTO societaPriv(nome) VALUES ('CARTV');
INSERT INTO societaPriv(nome) VALUES ('REDLINE');
INSERT INTO societaPriv(nome) VALUES ('TAROCCHI AUTO');
INSERT INTO societaPriv(nome) VALUES ('ZOOM');
INSERT INTO societaPriv(nome) VALUES ('SKRRT');
INSERT INTO societaPriv(nome) VALUES ('WIKIAUTO');
INSERT INTO societaPubb(nome) VALUES ('BOLOCAR');
INSERT INTO societaPubb(nome) VALUES ('MILANCAR');
INSERT INTO societaPubb(nome) VALUES ('ROMECAR');
INSERT INTO societaPubb(nome) VALUES ('AUTODIDATTA');

#SOCIETA CARTV
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FR435PL','RENAULT ZOE','compatta','CARTV',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FT852LD','RENAULT ZOE','compatta','CARTV',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FX938KL','RENAULT ZOE','compatta','CARTV',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP873KD','RENAULT ZOE','compatta','CARTV',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('ER729PL','CHEVROLET VOLT','berlina','CARTV',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('ER345DK','CHEVROLET VOLT','berlina','CARTV',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('ER324PA','CHEVROLET VOLT','berlina','CARTV',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);



#SOCIETA REDLINE
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ832FJ','FORD FOCUS ELECTRIC','berlina','REDLINE',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ749KD','FORD FOCUS ELECTRIC','berlina','REDLINE',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ729JK','FORD FOCUS ELECTRIC','berlina','REDLINE',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ029KS','FORD FOCUS ELECTRIC','berlina','REDLINE',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ628MC','FORD FOCUS ELECTRIC','berlina','REDLINE',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ738LD','NISSAN LEAF','compatta','REDLINE',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ726JS','NISSAN LEAF','compatta','REDLINE',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);




#TAROCCHI AUTO
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FS736PL','TESLA MODEL S','berlina','TAROCCHI AUTO',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FH923HL','TESLA MODEL S','berlina','TAROCCHI AUTO',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FT367JD','TESLA MODEL S','berlina','TAROCCHI AUTO',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP738AV','TESLA MODEL S','berlina','TAROCCHI AUTO',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FS634KP','TESLA MODEL X','familiare','TAROCCHI AUTO',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FH637PL','TESLA MODEL X','familiare','TAROCCHI AUTO',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FT344JD','TESLA MODEL X','familiare','TAROCCHI AUTO',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);

#ZOOM
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FR829KJ','KIA SOUL','familiare','ZOOM',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FK345ER','KIA SOUL','familiare','ZOOM',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FR321LF','KIA SOUL','familiare','ZOOM',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP982FF','KIA SOUL','familiare','ZOOM',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FR757KJ','KIA SOUL','familiare','ZOOM',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FK656ER','KIA SOUL','familiare','ZOOM',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FR123LF','KIA SOUL','familiare','ZOOM',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);

#SKRRT
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FA738LD','RENAULT TWIZY','monoposto','SKRRT',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FK638JH','RENAULT TWIZY','monoposto','SKRRT',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP829HS','RENAULT TWIZY','monoposto','SKRRT',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FS834PS','RENAULT TWIZY','monoposto','SKRRT',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FF929HA','RENAULT TWIZY','monoposto','SKRRT',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FH728BX','RENAULT TWIZY','monoposto','SKRRT',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FA768LD','RENAULT TWIZY','monoposto','SKRRT',1,'Minicar. Autonomia stimata 100 km',8,10);



#SOCIETA WIKIAUTO
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FR4325P','RENAULT ZOE','compatta','WIKIAUTO',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FT844LD','RENAULT ZOE','compatta','WIKIAUTO',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FX838KL','RENAULT ZOE','compatta','WIKIAUTO',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP823KD','RENAULT ZOE','compatta','WIKIAUTO',4,'Auto nuova modello 2019',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('ER839PL','CHEVROLET VOLT','berlina','WIKIAUTO',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('ER325DK','CHEVROLET VOLT','berlina','WIKIAUTO',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('ER826PA','CHEVROLET VOLT','berlina','WIKIAUTO',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);


#BOLOCAR
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ712FJ','FORD FOCUS ELECTRIC','berlina','BOLOCAR',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ234KD','FORD FOCUS ELECTRIC','berlina','BOLOCAR',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ819JK','FORD FOCUS ELECTRIC','berlina','BOLOCAR',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ716KS','FORD FOCUS ELECTRIC','berlina','BOLOCAR',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EZ817MC','FORD FOCUS ELECTRIC','berlina','BOLOCAR',5,'Auto modello 2015. Autonomia stimata 400 km',13,15);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ913LD','NISSAN LEAF','compatta','BOLOCAR',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ817JS','NISSAN LEAF','compatta','BOLOCAR',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);


#MILANCAR
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FS827PL','TESLA MODEL S','berlina','MILANCAR',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FH123HL','TESLA MODEL S','berlina','MILANCAR',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FT738JD','TESLA MODEL S','berlina','MILANCAR',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP859AV','TESLA MODEL S','berlina','MILANCAR',7,'Berlina di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FS098KP','TESLA MODEL X','familiare','MILANCAR',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FH019PL','TESLA MODEL X','familiare','MILANCAR',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FT739JD','TESLA MODEL X','familiare','MILANCAR',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);

#ROMECAR
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EM235PZ','CHEVROLET VOLT','berlina','ROMECAR',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ736HD','NISSAN LEAF','compatta','ROMECAR',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP334FF','TESLA MODEL X','familiare','ROMECAR',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP829FF','KIA SOUL','familiare','ROMECAR',7,'Compatta modello 2018. Autonomia stimata 300 km',10,12);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FK869JH','RENAULT TWIZY','monoposto','ROMECAR',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP129HS','RENAULT TWIZY','monoposto','ROMECAR',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FS738PS','RENAULT TWIZY','monoposto','ROMECAR',1,'Minicar. Autonomia stimata 100 km',8,10);

#AUTODIDATTA
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FF897HA','RENAULT TWIZY','monoposto','AUTODIDATTA',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FH020BX','RENAULT TWIZY','monoposto','AUTODIDATTA',1,'Minicar. Autonomia stimata 100 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('EM723PZ','CHEVROLET VOLT','berlina','AUTODIDATTA',5,'Auto modello 2013. Autonomia stimata 300 km',12,14);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ634HD','NISSAN LEAF','compatta','AUTODIDATTA',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ734HD','NISSAN LEAF','compatta','AUTODIDATTA',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FP758FF','TESLA MODEL X','familiare','AUTODIDATTA',7,'Familiare di lusso modello 2018. Autonomia stimata 400 km',25,30);
INSERT INTO veicolo( targa, modello, tipo, nomeSocieta, capienza, descrizione, tariffaFeriale, tariffaFestiva) 
VALUES ('FJ732HD','NISSAN LEAF','compatta','AUTODIDATTA',4,'Auto modello 2018. Autonomia stimata 400 km',8,10);


INSERT INTO `areaSosta` (`codiceArea`, `latitudine`, `longitudine`, `indirizzo`, `citta`, `stato`, `place_id`) VALUES
(3, '45.479788', '9.123861', 'Piazzale Angelo Moratti', 'Milano', 'Possibilità di ricarica', 'ChIJYXhw5pPBhkcRbPY8b4jGuBw'),
(4, '45.464169', '9.191926', 'Piazza del Duomo', 'Milano', 'Assenza di prese di ricarica', 'ChIJY1073q7GhkcRe4eAXwoOpYI'),
(5, '45.465942', '9.185668', 'Via Dante', 'Milano', 'Possibilità di ricarica', 'ChIJPXDTHK3GhkcRuTesMRWKdm0'),
(6, '45.460667', '9.192405', 'Via Chiaravalle', 'Milano', 'Assenza di prese di ricarica', 'ChIJlcFj9KjGhkcR3iVLieGlqr4 '),
(7, '45.077122', '7.671728', 'Quadrilatero', 'Torino', 'Possibilità di ricarica', 'ChIJKVICnQltiEcRPTgV3ggaP8Q'),
(8, '45.069296', '7.693215', 'Via Alessandro Riberi', 'Torino', 'Possibilità di ricarica', 'ChIJdeBgpXxtiEcRCA1w65O0FjM'),
(9, '43.852357', '13.008369', 'Via del Moletto', 'Fano', 'Possibilità di ricarica', 'ChIJfyAZ5Y0QLRMRLGQLZ6E1BCM'),
(10, '44.416375', '12.200936', 'Via Dante Alighieri', 'Ravenna', 'Assenza di prese di ricarica', 'ChIJb0zW2Fb5fUcRhi1IFmX2QWk'),
(11, '43.768880', '11.262217', 'Piazza di Santa Croce', 'Firenze', 'Possibilità di ricarica', 'ChIJZXR-uAdUKhMR67keWiqjIeo'),
(12, '43.764063', '11.265288', 'Viale Giuseppe Poggi', 'Firenze', 'Assenza di prese di ricarica', 'ChIJEwC1pvdTKhMRqzcxU626pT8'),
(13, '40.835947', '14.248645', 'Piazza Plebiscito', 'Napoli', 'Assenza di prese di ricarica', 'ChIJMYmkslMIOxMRE6ryQc7iIMA'),
(14, '40.828099', '14.193072', 'Fuorigrotta', 'Napoli', 'Assenza di prese di ricarica', 'Ei5WaWEgTHVpZ2kgVGFuc2lsbG8sIDI1LCA4MDEyNSBOYXBvbGkgTkEsIEl0YWx5IhoSGAoUChIJ35GXvzIJOxMRSRy4E_P95FYQGQ'),
(15, '40.843757', '14.239003', 'Largo S. Martino', 'Napoli', 'Possibilità di ricarica', 'ChIJ0Sk48vcIOxMRp3gEQgoiNlU'),
(16, '44.498634', '11.356357', 'Porta San Donato', 'Bologna', 'Possibilità di ricarica', 'ChIJlVxgAKXUf0cRcWS5ORtkqTo'),
(17, '44.505999', '11.343337', 'Stazione Centrale', 'Bologna', 'Possibilità di ricarica', 'ChIJDzWrv57Uf0cRkBE-rYqbts4'),
(18, '44.486133', '11.248174', 'Unipol Arena', 'Bologna', 'Assenza di prese di ricarica', 'ChIJL6PbmovWf0cR6Spb-2InAZc'),
(19, '44.356814', '11.845542', 'JFK', 'Solarolo', 'Possibilità di ricarica', 'ChIJgboZFx1NKxMR0N-wwlcbHCg'),
(20, '41.901107', '12.501861', 'Termini', 'Roma', 'Possibilità di ricarica', 'ChIJ7__AOaRhLxMRlKlh8r59MKQ'),
(21, '41.886436', '12.485038', 'Circo Massimo', 'Roma', 'Assenza di prese di ricarica', 'EihWaWEgZGVpIENlcmNoaSwgODYsIDAwMTg2IFJvbWEgUk0sIEl0YWx5IhoSGAoUChIJdam5v8phLxMRApvVsGLUC-4QVg'),
(22, '41.928309', '12.491824', 'Parioli-Villa Ada', 'Roma', 'Possibilità di ricarica', 'ChIJyzjUWiJhLxMRPPyFxGXH40o'),
(23, '41.903175', '12.463885', 'Castel Sant Angelo', 'Roma', 'Possibilità di ricarica', 'ChIJwzourV1gLxMRiG8nUivaW5U');


INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(3, 'EM235PZ');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(3, 'EM723PZ');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(3, 'ER324PA');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(3, 'ER325DK');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(4, 'ER345DK');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(4, 'ER729PL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(4, 'ER826PA');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(4, 'ER839PL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(5, 'EZ029KS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(5, 'EZ234KD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(5, 'EZ628MC');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(5, 'EZ712FJ');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(6, 'EZ716KS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(6, 'EZ729JK');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(6, 'EZ749KD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(6, 'EZ817MC');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(7, 'EZ819JK');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(7, 'EZ832FJ');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(7, 'FA738LD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(7, 'FA768LD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(8, 'FF897HA');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(8, 'FF929HA');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(8, 'FH019PL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(8, 'FH020BX');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(9, 'FH123HL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(9, 'FH637PL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(9, 'FH728BX');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(9, 'FH923HL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(10, 'FJ634HD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(10, 'FJ726JS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(10, 'FJ732HD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(10, 'FJ734HD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(11, 'FJ736HD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(11, 'FJ738LD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(11, 'FJ817JS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(11, 'FJ913LD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(12, 'FK345ER');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(12, 'FK638JH');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(12, 'FK656ER');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(12, 'FK869JH');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(13, 'FP129HS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(13, 'FP334FF');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(13, 'FP738AV');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(13, 'FP758FF');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(14, 'FP823KD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(14, 'FP829FF');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(15, 'FP829HS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(15, 'FP859AV');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(15, 'FP873KD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(15, 'FP982FF');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(16, 'FR123LF');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(16, 'FR321LF');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(16, 'FR4325P');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(16, 'FR435PL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(17, 'FR757KJ');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(17, 'FR829KJ');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(17, 'FS098KP');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(17, 'FS634KP');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(18, 'FS736PL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(18, 'FS738PS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(18, 'FS827PL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(18, 'FS834PS');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(19, 'FT344JD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(19, 'FT367JD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(19, 'FT738JD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(19, 'FT739JD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(20, 'FT844LD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(20, 'FT852LD');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(20, 'FX838KL');
INSERT INTO `autoInSosta` (`codiceArea`, `targaAuto`) VALUES(20, 'FX938KL');


INSERT INTO `fotoModelloAuto` (`modelloAuto`, `foto`) VALUES
('TESLA MODEL S', 'https://i.pinimg.com/originals/87/92/71/8792715374fa5e1d3fbc3571c8409775.jpg'),
('TESLA MODEL X', 'https://www.tappetinionline.it/assets/Uploads/tesla-model-x-1-980x620.jpg'),
('RENAULT ZOE', 'https://img2.stcrm.it/images/1203284/SQUARE/400x/5-renault-zoe-2013-12.jpg'),
('RENAULT TWIZY', 'https://i2.wp.com/www.motori360.it/V2/wp-content/gallery/renault-twizy-07-12-12/renault-twizy-momodesign.jpg?w=620&ssl=1'),
('CHEVROLET VOLT', 'http://freewebsitebuilder.me/wp-content/uploads/2018/04/2017-chevrolet-volt-review-in-pictures-volt-review-2017-chevrolet-volt-premium.jpg'),
('FORD FOCUS ELECTRIC', 'https://pictures.dealer.com/w/woodysanderfordfd/1985/2a8fae6268e66c6ead98c816326bb439x.jpg'),
('NISSAN LEAF', 'https://media.tio.ch/files/domains/tio.ch/images/4bpt/s_-una-carica-di-maturita-per-la-nissan-leaf-eab5.jpg?v=1'),
('KIA SOUL', 'https://66.media.tumblr.com/7bde74b294475765628498b4c6aff20e/tumblr_niut02faXU1rvxi53o1_400.png');
