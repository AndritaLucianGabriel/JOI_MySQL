ALTER TABLE SPORTIV drop constraint fk_sportiv_tara;
ALTER TABLE SPORTIV drop constraint fk_sportiv_so;
ALTER TABLE SPORTIV drop constraint fk_sportiv_participa;
ALTER TABLE AGENTIE_MEDIA drop constraint fk_am_id_tara;
ALTER TABLE ECHIPAMENT_PRESA drop constraint fk_ep_id_am;
ALTER TABLE ANGAJAT_PRESA drop constraint fk_ap_id_am;
ALTER TABLE HOTEL drop constraint fk_hotel_id_so;
ALTER TABLE ZONA_AGREMENT drop constraint fk_za_id_so;
ALTER TABLE ANTRENAMENT drop constraint fk_antrenament_id_sportiv;
ALTER TABLE ANTRENAMENT drop constraint fk_antrenament_id_antrenor;
ALTER TABLE ANTRENOR drop constraint fk_antrenor_id_loca;
ALTER TABLE ISTORIC_ECHIPAMENT drop constraint fk_ie_id_sportiv;
ALTER TABLE ISTORIC_ECHIPAMENT drop constraint fk_ie_id_echip;
ALTER TABLE PROBA drop constraint fk_proba_id_participa;
ALTER TABLE PROBA drop constraint fk_proba_id_ba;
ALTER TABLE PROBA drop constraint fk_proba_id_locp;
ALTER TABLE PROBA drop constraint fk_proba_id_sport;
ALTER TABLE ARBITRU drop constraint fk_arbitru_id_ba;
ALTER TABLE PUNCTAJ drop constraint fk_punctaj_id_sportiv;
ALTER TABLE PUNCTAJ drop constraint fk_punctaj_id_proba;
ALTER TABLE SEDINTA_MEDICALA drop constraint fk_sm_id_sportiv;
ALTER TABLE SEDINTA_MEDICALA drop constraint fk_sm_id_em;
ALTER TABLE CADRU_MEDICAL drop constraint fk_cm_id_em;

--------------------------------------------------------------
ALTER TABLE SPORTIV
ADD CONSTRAINT fk_sportiv_tara
FOREIGN KEY(id_tara)
REFERENCES TARA(tara_id) ON DELETE CASCADE;

ALTER TABLE SPORTIV
ADD CONSTRAINT fk_sportiv_so
FOREIGN KEY(id_so)
REFERENCES SAT_OLIMPIC(so_id) ON DELETE CASCADE;

ALTER TABLE SPORTIV
ADD CONSTRAINT fk_sportiv_participa
FOREIGN KEY(id_participa)
REFERENCES PARTICIPA(participa_id) ON DELETE SET NULL;

--------------------------------------------------------------
ALTER TABLE TARA;

--------------------------------------------------------------
ALTER TABLE AGENTIE_MEDIA
ADD CONSTRAINT fk_am_id_tara
FOREIGN KEY(id_tara)
REFERENCES TARA(tara_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE ECHIPAMENT_PRESA
ADD CONSTRAINT fk_ep_id_am
FOREIGN KEY(id_am)
REFERENCES AGENTIE_MEDIA(am_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE ANGAJAT_PRESA
ADD CONSTRAINT fk_ap_id_am
FOREIGN KEY(id_am)
REFERENCES AGENTIE_MEDIA(am_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE SAT_OLIMPIC;

-------------------------------------------------------------
ALTER TABLE HOTEL
ADD CONSTRAINT fk_hotel_id_so
FOREIGN KEY(id_so)
REFERENCES SAT_OLIMPIC(so_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE ZONA_AGREMENT
ADD CONSTRAINT fk_za_id_so
FOREIGN KEY(id_so)
REFERENCES SAT_OLIMPIC(so_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE ANTRENAMENT
ADD CONSTRAINT fk_antrenament_id_sportiv
FOREIGN KEY(id_sportiv)
REFERENCES SPORTIV(sportiv_id) ON DELETE CASCADE;

ALTER TABLE ANTRENAMENT
ADD CONSTRAINT fk_antrenament_id_antrenor
FOREIGN KEY(id_antrenor)
REFERENCES ANTRENOR(antrenor_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE ANTRENOR
ADD CONSTRAINT fk_antrenor_id_loca
FOREIGN KEY(id_loca)
REFERENCES LOCATIE_A(loca_id) ON DELETE SET NULL;

-------------------------------------------------------------
ALTER TABLE LOCATIE_A;

-------------------------------------------------------------
ALTER TABLE ISTORIC_ECHIPAMENT
ADD CONSTRAINT fk_ie_id_sportiv
FOREIGN KEY(id_sportiv)
REFERENCES SPORTIV(sportiv_id) ON DELETE SET NULL;

ALTER TABLE ISTORIC_ECHIPAMENT
ADD CONSTRAINT fk_ie_id_echip
FOREIGN KEY(id_echip)
REFERENCES ECHIPAMENT(echip_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE ECHIPAMENT;

--------------------------------------------------------------
ALTER TABLE PROBA
ADD CONSTRAINT fk_proba_id_participa
FOREIGN KEY(id_participa)
REFERENCES PARTICIPA(participa_id) ON DELETE SET NULL;

ALTER TABLE PROBA
ADD CONSTRAINT fk_proba_id_ba
FOREIGN KEY(id_ba)
REFERENCES BRIGADA_ARBITRAJ(ba_id) ON DELETE SET NULL;

ALTER TABLE PROBA
ADD CONSTRAINT fk_proba_id_locp
FOREIGN KEY(id_locp)
REFERENCES LOCATIE_P(locp_id) ON DELETE SET NULL;

ALTER TABLE PROBA
ADD CONSTRAINT fk_proba_id_sport
FOREIGN KEY(id_sport)
REFERENCES SPORT(sport_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE BRIGADA_ARBITRAJ;

-------------------------------------------------------------
ALTER TABLE ARBITRU
ADD CONSTRAINT fk_arbitru_id_ba
FOREIGN KEY(id_ba)
REFERENCES BRIGADA_ARBITRAJ(ba_id) ON DELETE SET NULL;

-------------------------------------------------------------
ALTER TABLE LOCATIE_P;

-------------------------------------------------------------
ALTER TABLE SPORT;

-------------------------------------------------------------
ALTER TABLE PUNCTAJ
ADD CONSTRAINT fk_punctaj_id_sportiv
FOREIGN KEY(id_sportiv)
REFERENCES SPORTIV(sportiv_id) ON DELETE CASCADE;

ALTER TABLE PUNCTAJ
ADD CONSTRAINT fk_punctaj_id_proba
FOREIGN KEY(id_proba)
REFERENCES PROBA(proba_id) ON DELETE CASCADE;

-------------------------------------------------------------
ALTER TABLE SEDINTA_MEDICALA
ADD CONSTRAINT fk_sm_id_sportiv
FOREIGN KEY(id_sportiv)
REFERENCES SPORTIV(sportiv_id) ON DELETE CASCADE;

ALTER TABLE SEDINTA_MEDICALA
ADD CONSTRAINT fk_sm_id_em
FOREIGN KEY(id_em)
REFERENCES ECHIPA_MEDICALA(em_id) ON DELETE SET NULL;

-------------------------------------------------------------
ALTER TABLE ECHIPA_MEDICALA;

-------------------------------------------------------------
ALTER TABLE CADRU_MEDICAL
ADD CONSTRAINT fk_cm_id_em
FOREIGN KEY(id_em)
REFERENCES ECHIPA_MEDICALA(em_id) ON DELETE SET NULL;

