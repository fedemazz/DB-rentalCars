DROP TRIGGER swapUtenti;

DELIMITER $$
CREATE TRIGGER swapUtenti
AFTER INSERT ON prenotazione
FOR EACH ROW 
BEGIN
IF(( 
SELECT COUNT(*) 
from utenteStandard,prenotazione 
where utenteStandard.emailUtente=new.emailUtente and utenteStandard.emailUtente=prenotazione.emailUtente )>2) then
INSERT INTO utenteVip values (new.emailUtente);
INSERT INTO utentePremium(emailUtente) values (new.emailUtente);
DELETE FROM utenteStandard WHERE emailUtente=new.emailUtente;
end if;
end$$


DELIMITER $$
CREATE TRIGGER lockPrenotazione
AFTER INSERT ON prenotazioneCarpooling
FOR EACH ROW 
BEGIN
IF ((select count(*)
					 from prenotazioneCarpooling,prenotazione,veicolo
					 where prenotazione.targaVeicolo= veicolo.targa
                     and prenotazione.codice=new.codicePrenotazione
					 and numeroTappaPartenza>=new.numeroTappaPartenza  
					 and numeroTappaArrivo<=new.numeroTappaArrivo) = ((select distinct capienza 
																		   from veicolo,prenotazioneCarpooling,prenotazione																	
                                                                           where prenotazione.targaVeicolo=veicolo.targa 
                                                                           and prenotazione.codice=new.codicePrenotazione
                                                                           and prenotazione.codice=codicePrenotazione))-1) then

update tappa set stato='chiuso' where codicePrenotazione = new.codicePrenotazione 
										and numeroTappa>=new.numeroTappaPartenza
                                        and numeroTappa<new.numeroTappaArrivo;
end if;
end$$


DELIMITER $$
CREATE TRIGGER contaVeicoli
AFTER INSERT ON veicolo
FOR EACH ROW 
BEGIN
update societa set numeroVeicoli=(SELECT COUNT(*) from veicolo where veicolo.nomeSocieta=new.nomeSocieta) where nome=new.nomeSocieta;
end$$

