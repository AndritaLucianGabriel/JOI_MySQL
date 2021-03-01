
INSERT INTO TARA (tara_id, nume, numar_fani, gazda) 
  VALUES(1,'Norvegia', 25000, 'N');
INSERT INTO TARA (tara_id, nume, numar_fani, gazda) 
  VALUES(2,'Italia', 120000, 'Y');
INSERT INTO TARA (tara_id, nume, numar_fani, gazda) 
  VALUES(3,'Germania', 68500, 'N');
--...
COMMIT;

INSERT INTO AGENTIE_MEDIA (am_id, id_tara, nume, tip)
  VALUES(1,2, 'Pro TV', 'privata');
INSERT INTO AGENTIE_MEDIA (am_id, id_tara, nume, tip)
  VALUES(2,2, 'MediaFax', 'stat');
INSERT INTO AGENTIE_MEDIA (am_id, id_tara, nume, tip)
  VALUES(3,1, 'TrustMedia', 'stat');
--...
COMMIT;

INSERT INTO ECHIPAMENT_PRESA (ep_id, id_am, nume, cantitate)
  VALUES(1,1, 'Proiector XMUSE 7.5W 50Â° BK (5f)', 23);
INSERT INTO ECHIPAMENT_PRESA (ep_id, id_am, nume, cantitate)
  VALUES(2,1, 'Camera video JVC GY-HC550E 4K ENG Hand-Held camcorder', 6);
INSERT INTO ECHIPAMENT_PRESA (ep_id, id_am, nume, cantitate)
  VALUES(3,2, 'Mixer video ROSS CARBONITE ULTRA 4K UHD Production Switcher', 2);
--...
COMMIT;

INSERT INTO ANGAJAT_PRESA (ap_id, id_am, nume, prenume, pozitie)
  VALUES(1,1, 'Marian', 'Petru Mihail', 'Reporter');
INSERT INTO ANGAJAT_PRESA (ap_id, id_am, nume, prenume, pozitie)
  VALUES(2,1, 'Dorel', 'Dumbrava', 'Cameraman sef');
INSERT INTO ANGAJAT_PRESA (ap_id, id_am, nume, prenume, pozitie)
  VALUES(3,3, 'Popa', 'Mihaela', 'Make-up artist');
--...
COMMIT;

INSERT INTO SAT_OLIMPIC (so_id, nume_oras, capacitate)
  VALUES(1,'Zhangjiakou', 125000);
COMMIT;

INSERT INTO HOTEL (hotel_id, id_so, nume, capacitate_h)
  VALUES(1,1, 'Royal Garden', 350);
INSERT INTO HOTEL (hotel_id, id_so, nume, capacitate_h)
  VALUES(2,NULL, 'Shangri-La Kerry ', 550);
INSERT INTO HOTEL (hotel_id, id_so, nume, capacitate_h)
  VALUES(3,1, 'Grand Millennium Beijing', 2200);
--...
COMMIT;

INSERT INTO ZONA_AGREMENT (za_id, id_so, nume)
  VALUES(1,1, 'San Cheng Bowling Entertainment');
INSERT INTO ZONA_AGREMENT (za_id, id_so, nume)
  VALUES(2,1, 'Dusk Dawn Club');
INSERT INTO ZONA_AGREMENT (za_id, id_so, nume)
  VALUES(3,1, 'Beijing Jinbaohui Palace Cinema');
--...
COMMIT;

INSERT INTO PARTICIPA (participa_id, nr_sportivi)
  VALUES(1, 25);
INSERT INTO PARTICIPA (participa_id, nr_sportivi)
  VALUES(2, 40);
INSERT INTO PARTICIPA (participa_id, nr_sportivi)
  VALUES(3, 18);
--...
COMMIT;

INSERT INTO BRIGADA_ARBITRAJ (ba_id, numar_arbitrii)
  VALUES(1, 4);
INSERT INTO BRIGADA_ARBITRAJ (ba_id, numar_arbitrii)
  VALUES(2, 3);
INSERT INTO BRIGADA_ARBITRAJ (ba_id, numar_arbitrii)
  VALUES(3, 6);
--...
COMMIT;

INSERT INTO ARBITRU (ar_id, id_ba, nume, prenume, data_nastere, tara, pozitie)
  VALUES(1, 1, 'Massimo', 'Manno', '15-MAR-97', 'Italia', 'arbitru sef');
INSERT INTO ARBITRU (ar_id, id_ba, nume, prenume, data_nastere, tara, pozitie)
  VALUES(2, 1, 'Lagmann', 'Krossbyr', '24-JUL-95', 'Norvegia', 'arbitru asistent');
INSERT INTO ARBITRU (ar_id, id_ba, nume, prenume, data_nastere, tara, pozitie)
  VALUES(3, 1, 'Conrad', 'Eginhardt', '12-OCT-85', 'Germania', 'arbitru asistent');
INSERT INTO ARBITRU (ar_id, id_ba, nume, prenume, data_nastere, tara, pozitie)
  VALUES(4, 1, 'Digna', 'Faqueza Engracia', '08-DEC-89', 'Spania', 'arbitru asistent');
INSERT INTO ARBITRU (ar_id, id_ba, nume, prenume, data_nastere, tara, pozitie)
  VALUES(5, 2, 'Marcel', 'Pavel', '19-FEB-78', 'Romania', 'arbitru sef');
--...
COMMIT;

INSERT INTO LOCATIE_P (locp_id, nume, marime, unitate_masura, nr_spectatori)
  VALUES(1, 'Indoor Stadium', 750, 'm', 12300);
INSERT INTO LOCATIE_P (locp_id, nume, marime, unitate_masura, nr_spectatori)
  VALUES(2, 'Wukesong Arena', 2000.65, 'm2', 67300);
INSERT INTO LOCATIE_P (locp_id, nume, marime, unitate_masura, nr_spectatori)
  VALUES(3, 'Ni?ocháo', 2670, 'm2', 65400);
--...
COMMIT;

INSERT INTO SPORT (sport_id, nume, suprafata, nr_probe)
  VALUES(1, 'Ski alpin', 'Partie', 3);
INSERT INTO SPORT (sport_id, nume, suprafata, nr_probe)
  VALUES(2, 'Sanie', 'Partie', 2);
INSERT INTO SPORT (sport_id, nume, suprafata, nr_probe)
  VALUES(3, 'Skeleton', 'interior', 4);
--...
COMMIT;

INSERT INTO PROBA (proba_id, id_participa, id_ba, id_locp, id_sport, proba_tip)
  VALUES(1, 1, 1, 1 ,1, 'Calificare');
INSERT INTO PROBA (proba_id, id_participa, id_ba, id_locp, id_sport, proba_tip)
  VALUES(2, 1, 1, 1 ,1, 'Semi-finala');
INSERT INTO PROBA (proba_id, id_participa, id_ba, id_locp, id_sport, proba_tip)
  VALUES(3, 1, 1, 2 ,1, 'Finala');
--...
COMMIT;

INSERT INTO SPORTIV (sportiv_id, id_tara, id_so, id_participa, nume, prenume)
  VALUES(1, 1, 1, 1, 'Hjalmar', 'Andersen');
INSERT INTO SPORTIV (sportiv_id, id_tara, id_so, id_participa, nume, prenume)
  VALUES(2, 2, 1, 3, '	Marciano', 'Niccolo');
INSERT INTO SPORTIV (sportiv_id, id_tara, id_so, id_participa, nume, prenume)
  VALUES(3, NULL, 1, 2, 'Victor', 'Popescu Mircea');
--...
COMMIT;

INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(1, 1, 1, 120, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(2, 2, 1, 135, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(3, 3, 1, 90, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(4, 4, 1, 100, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(5, 5, 1, 140, 'p');
  
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(6, 1, 2, 133, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(7, 2, 2, 139, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(8, 3, 2, NULL, NULL);
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(9, 4, 2, 125, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(10, 5, 2, 130, 'p');
  
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(11, 1, 3, 123, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(12, 2, 3, 118, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(13, 3, 3, NULL, NULL);
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(14, 4, 3, 130, 'p');
INSERT INTO PUNCTAJ (punctaj_id, id_sportiv, id_proba, valoare, unitate_masura)
  VALUES(15, 5, 3, 139, 'p');
--...

--Cod pentru repartizarea medaliilor dupa terminarea inserarii de date
update PUNCTAJ
set medalie = DECODE (valoare, (select max(valoare)
                                from PUNCTAJ pct
                                join PROBA prb on pct.id_proba=prb.proba_id
                                where pct.id_proba=(select proba_id
                                                    from PROBA
                                                    where proba_tip= 'Finala')), 'Aur',
                                (with loc2 as (select valoare
                                              from PUNCTAJ pct
                                              join PROBA prb on pct.id_proba=prb.proba_id
                                              where valoare is not null
                                                and pct.id_proba=(select proba_id
                                                                  from PROBA
                                                                   where proba_tip= 'Finala')
                                              order by valoare desc)
                                        select valoare
                                        from loc2
                                        having rownum =2
                                        group by rownum,valoare), 'Argint',
                                (with loc3 as (select valoare
                                              from PUNCTAJ pct
                                              join PROBA prb on pct.id_proba=prb.proba_id
                                              where valoare is not null
                                                and pct.id_proba=(select proba_id
                                                                  from PROBA
                                                                  where proba_tip= 'Finala')
                                              order by valoare desc)
                                        select valoare
                                        from loc3
                                        having rownum =3
                                        group by rownum, valoare), 'Bronz')
--clauza pt a evita atunci cand o valoare este identica cu una din alta etapa decat cea finala
where id_proba=(select proba_id
                from PROBA
                 where proba_tip='Finala');            
COMMIT;

INSERT INTO LOCATIE_A (loca_id, nume, marime, unitate_masura)
  VALUES(1, 'Beijing National Stadium-Lot 12', 400, 'm2');
INSERT INTO LOCATIE_A (loca_id, nume, marime, unitate_masura)
  VALUES(2, 'Beijing National Stadium-Lot 07', 414, 'm2');
INSERT INTO LOCATIE_A (loca_id, nume, marime, unitate_masura)
  VALUES(3, 'Beijing National Stadium-Lot 14', 412.5, 'm2');
--...
COMMIT;

INSERT INTO ANTRENOR (antrenor_id, id_loca, nume, prenume, data_nastere, specializare, tara)
  VALUES(1, 1, 'Oddveig', 'Orlendr', '05-FEB-85', 'Patinaj', 'Norvegia');
INSERT INTO ANTRENOR (antrenor_id, id_loca, nume, prenume, data_nastere, specializare)
  VALUES(2, 2, 'Toader', 'Pavel', '12-SEP-98', 'Ski');
INSERT INTO ANTRENOR (antrenor_id, id_loca, nume, prenume, data_nastere, specializare, tara)
  VALUES(3, 1, 'Abelard', 'Dodd', '12-Jan-79', 'Skeleton', 'Germania');
--...
COMMIT;

INSERT INTO ANTRENAMENT (antrenament_id, id_sportiv, id_antrenor, antr_data, antr_ora, tip)
  VALUES(1, 1, 1, '12-JAN-22', '12:03:00','Forta');
INSERT INTO ANTRENAMENT (antrenament_id, id_sportiv, id_antrenor, antr_data, antr_ora, tip)
  VALUES(2, 1, 1, '13-JAN-22', '12:03:00','Forta');
INSERT INTO ANTRENAMENT (antrenament_id, id_sportiv, id_antrenor, antr_data, antr_ora, tip)
  VALUES(3, 2, 3, '12-JAN-22', '14:15:00','Anduranta');
--...
COMMIT;

INSERT INTO ECHIPAMENT (echip_id, tip, denumire, cantitate)
  VALUES(1, 'Antrenament', 'Patine Roces RSK 2', 48);
INSERT INTO ECHIPAMENT (echip_id, tip, denumire, cantitate)
  VALUES(2, 'Proba', 'Patine Roces RSK 2', 38);
INSERT INTO ECHIPAMENT (echip_id, tip, denumire, cantitate)
  VALUES(3, 'Proba', 'Clapari Atomic Prime 120', 16);
--...
COMMIT;

INSERT INTO ISTORIC_ECHIPAMENT (ie_id, data_inchiriere, id_sportiv, id_echip, data_returnare)
  VALUES(1,'12-JAN-22', 1, 1, '13-JAN-22');
INSERT INTO ISTORIC_ECHIPAMENT (ie_id, data_inchiriere, id_sportiv, id_echip)
  VALUES(2,'13-JAN-22', 1, 2);
INSERT INTO ISTORIC_ECHIPAMENT (ie_id, data_inchiriere, id_sportiv, id_echip, data_returnare)
  VALUES(3,'12-JAN-22', 2, 3, '14-JAN-22');
--...
COMMIT;

INSERT INTO ECHIPA_MEDICALA (em_id, nume_echipa, nr_cadre_medicale)
  VALUES(1, 'Trauma Team', 6);
INSERT INTO ECHIPA_MEDICALA (em_id, nume_echipa, nr_cadre_medicale,tara)
  VALUES(2, 'MedVac', 4, 'Norvegia');
INSERT INTO ECHIPA_MEDICALA (em_id, nume_echipa, nr_cadre_medicale,tara)
  VALUES(3, 'MedLife', 8, 'Germania');
--...
COMMIT;

INSERT INTO CADRU_MEDICAL (cm_id, id_em, nume, prenume, specializare, functie)
  VALUES(1, 1, 'Diethelm', 'Eckerd', 'Ortoped', 'asistent');
INSERT INTO CADRU_MEDICAL (cm_id, id_em, nume, prenume, specializare, functie)
  VALUES(2, 1, 'Kalf', 'Magne', 'Terapeut', 'sef');
INSERT INTO CADRU_MEDICAL (cm_id, id_em, nume, prenume, specializare, functie)
  VALUES(3, 2, 'Mihaela', 'Nitu', 'Psiholog', 'asistent');
--...
COMMIT;

INSERT INTO SEDINTA_MEDICALA (sm_id, id_sportiv, id_em, sm_data, sm_ora, tip)
  VALUES(1, 1, 1, '14-JAN-22', '08:30:00', 'control');
INSERT INTO SEDINTA_MEDICALA (sm_id, id_sportiv, id_em, sm_data, sm_ora, tip)
  VALUES(2, 1, 1, '20-JAN-22', '14:00:00', 'cerinta');
INSERT INTO SEDINTA_MEDICALA (sm_id, id_sportiv, id_em, sm_data, sm_ora, tip)
  VALUES(3, 2, 2, '12-JAN-22', '12:15:00', 'urgenta');
--...
COMMIT;
