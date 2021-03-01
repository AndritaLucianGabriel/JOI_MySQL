SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'ECHIPAMENT_PRESA';

drop table SPORTIV;
drop table TARA;
drop table AGENTIE_MEDIA;
drop table ECHIPAMENT_PRESA;
drop table ANGAJAT_PRESA;
drop table SAT_OLIMPIC;
drop table HOTEL;
drop table ZONA_AGREMENT;
drop table ANTRENAMENT;
drop table ANTRENOR;
drop table LOCATIE_A;
drop table ISTORIC_ECHIPAMENT;
drop table ECHIPAMENT;
drop table PARTICIPA;
drop table PROBA;
drop table BRIGADA_ARBITRAJ;
drop table ARBITRU;
drop table LOCATIE_P;
drop table SPORT;
drop table PUNCTAJ;
drop table SEDINTA_MEDICALA;
drop table ECHIPA_MEDICALA;
drop table CADRU_MEDICAL;


CREATE TABLE SPORTIV(
  sportiv_id   integer primary key,
  id_tara      integer,
  id_so        integer not null,
  id_participa integer not null,
  nume         varchar(100) not null,
  prenume      varchar(100) not null,

  constraint nume_lung_sportiv_CK check (length(nume)>=1),
  constraint nume_tip_sportiv_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint prenume_lung_sportiv_CK check (length(prenume)>=1),
  constraint prenume_tip_sportiv_CK check (regexp_like(prenume,'[a-zA-Z]'))
);

CREATE TABLE TARA(
  tara_id      integer primary key,
  nume         varchar(100) unique not null,
  numar_fani   integer not null,
  gazda        char(1) not null,

  constraint nume_lung_tara_CK check (length(nume)>=1),
  constraint nume_tip_tara_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint numar_fani_val_tara_CK check (numar_fani>=0),
  constraint gazda_val_tara_CK check (gazda in ('Y', 'N'))
);

CREATE TABLE AGENTIE_MEDIA(
  am_id      integer primary key,
  id_tara    integer not null,
  nume       varchar(100) unique not null,
  tip        varchar(100) not null,

  constraint nume_lung_am_CK check (length(nume)>=1),
  constraint nume_tip_am_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint tip_lung_am_CK check (length(nume)>=1),
  constraint tip_tip_am_CK check (regexp_like(nume,'[a-zA-Z]'))
);

CREATE TABLE ECHIPAMENT_PRESA(
  ep_id      integer primary key,
  id_am      integer not null,
  nume       varchar(100) not null,
  cantitate  integer not null,

  constraint nume_lung_ep_CK check (length(nume)>=1),
  constraint nume_tip_ep_CK check (regexp_like(nume,'[a-zA-Z0-9]')),
  constraint cantitate_val_ep_CK check (cantitate>=0)
);

CREATE TABLE ANGAJAT_PRESA(
  ap_id      integer primary key,
  id_am      integer not null,
  nume       varchar(100) not null,
  prenume    varchar(100) not null,
  pozitie    varchar(100) not null,

  constraint nume_lung_ap_CK check (length(nume)>=1),
  constraint nume_tip_ap_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint prenume_lung_ap_CK check (length(prenume)>=1),
  constraint prenume_tip_ap_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint pozitie_lung_ap_CK check (length(pozitie)>=1),
  constraint pozitie_tip_ap_CK check (regexp_like(pozitie,'[a-zA-Z]'))
);

CREATE TABLE SAT_OLIMPIC(
  so_id      integer primary key,
  nume_oras  varchar(100) not null,
  capacitate integer not null,

  constraint nume_oras_lung_so_CK check (length(nume_oras)>=1),
  constraint nume_oras_tip_so_CK check (regexp_like(nume_oras,'[a-zA-Z]')),
  constraint capacitate_val_so_CK check (capacitate>=0)
);

CREATE TABLE HOTEL(
  hotel_id      integer primary key,
  id_so         integer,  
  nume          varchar(100) not null,
  capacitate_h  integer not null,

  constraint nume_lung_hotel_CK check (length(nume)>=1),
  constraint nume_tip_hotel_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint capacitate_h_val_hotel_CK check (capacitate_h>=0)
);

CREATE TABLE ZONA_AGREMENT(
  za_id      integer primary key,
  id_so      integer not null,  
  nume       varchar(100) not null,

  constraint nume_lung_zona_agrement_CK check (length(nume)>=1),
  constraint nume_tip_zona_agrement_CK check (regexp_like(nume,'[a-zA-Z]'))
);

CREATE TABLE ANTRENAMENT(
  antrenament_id      integer primary key,
  id_sportiv          integer not null, 
  id_antrenor         integer not null,
  antr_data           date not null,
  antr_ora            varchar(10) not null,
  tip                 varchar(100) not null,

  constraint tip_lung_antrenament_CK check (length(tip)>=1),
  constraint tip_tip_antrenament_CK check (regexp_like(tip,'[a-zA-Z]'))
);

CREATE TABLE ANTRENOR(
  antrenor_id      integer primary key,
  id_loca          integer not null,
  nume             varchar(100) not null,
  prenume          varchar(100) not null,
  data_nastere     date not null,
  specializare     varchar(100) not null,
  tara             varchar(100),

  constraint nume_lung_antrenor_CK check (length(nume)>=1),
  constraint nume_tip_antrenor_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint prenume_lung_antrenor_CK check (length(prenume)>=1),
  constraint prenume_tip_antrenor_CK check (regexp_like(prenume,'[a-zA-Z]')),
  constraint specializare_lung_antrenor_CK check (length(specializare)>=1),
  constraint specializare_tip_antrenor_CK check (regexp_like(specializare,'[a-zA-Z]')),
  constraint tara_tip_antrenor_CK check (regexp_like(tara,'[a-zA-Z]'))
);

CREATE TABLE LOCATIE_A(
  loca_id          integer primary key,
  nume             varchar(100) not null,
  marime           float not null,
  unitate_masura   varchar(10) not null,

  constraint nume_lung_locatie_a_CK check (length(nume)>=1),
  constraint nume_tip_locatie_a_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint marime_val_locatie_a_CK check (marime>=0),
  constraint unitate_masura_l_locatie_a_CK check (length(unitate_masura)>=1),
  constraint unitate_masura_t_locatie_a_CK check (regexp_like(unitate_masura,'[a-zA-Z0-9]'))
);

CREATE TABLE ISTORIC_ECHIPAMENT(
  ie_id           integer primary key,
  data_inchiriere  date not null,
  id_sportiv       integer not null,
  id_echip         integer not null,
  data_returnare   date
);

CREATE TABLE ECHIPAMENT(
  echip_id         integer primary key,
  tip              varchar(100) not null,
  denumire         varchar(100) not null,
  cantitate        integer not null,

  constraint tip_lung_echipament_CK check (length(tip)>=1),
  constraint tip_tip_echipament_CK check (regexp_like(tip,'[a-zA-Z]')),
  constraint denumire_lung_echipament_CK check (length(denumire)>=1),
  constraint denumire_tip_echipament_CK check (regexp_like(denumire,'[a-zA-Z0-9]')),
  constraint cantitate_val_echipament_CK check (cantitate>=0)
);

CREATE TABLE PARTICIPA(
  participa_id   integer primary key,
  nr_sportivi    integer not null,

  constraint nr_sportivi_val_participa_CK check (nr_sportivi>=0)
);

CREATE TABLE PROBA(
  proba_id       integer primary key,
  id_participa   integer not null,
  id_ba          integer not null,
  id_locp        integer not null,
  id_sport       integer not null,
  proba_tip      varchar(100) not null,

  constraint proba_tip_lung_proba_CK check (length(proba_tip)>=1),
  constraint proba_tip_tip_proba_CK check (regexp_like(proba_tip,'[a-zA-Z0-9]'))
);

CREATE TABLE BRIGADA_ARBITRAJ(
  ba_id              integer primary key,
  numar_arbitrii     integer not null,

  constraint numar_arbitrii_val_ba_CK check (numar_arbitrii>=0)
);

CREATE TABLE ARBITRU(
  ar_id        integer primary key,
  id_ba        integer not null,
  nume         varchar(100) not null,
  prenume      varchar(100) not null,
  data_nastere date not null,
  tara         varchar(100) not null,
  pozitie      varchar(100) not null,

  constraint nume_lung_arbitru_CK check (length(nume)>=1),
  constraint nume_tip_arbitru_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint prenume_lung_arbitru_CK check (length(prenume)>=1),
  constraint prenume_tip_arbitru_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint tara_lung_arbitru_CK check (length(tara)>=1),
  constraint tara_tip_arbitru_CK check (regexp_like(tara,'[a-zA-Z]')),
  constraint pozitie_lung_antrenor_CK check (length(pozitie)>=1),
  constraint pozitie_tip_antrenor_CK check (regexp_like(pozitie,'[a-zA-Z0-9]'))
);

CREATE TABLE LOCATIE_P(
  locp_id          integer primary key,
  nume             varchar(100) not null,
  marime           float not null,
  unitate_masura   varchar(100) not null,
  nr_spectatori    integer not null,

  constraint nume_lung_locatie_p_CK check (length(nume)>=1),
  constraint nume_tip_locatie_p_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint marime_val_locatie_p_CK check (marime>=0),
  constraint unitate_masura_l_locatie_p_CK check (length(unitate_masura)>=1),
  constraint unitate_masura_t_locatie_p_CK check (regexp_like(unitate_masura,'[a-zA-Z0-9]')),
  constraint nr_spectatori_val_locatie_p_CK check (nr_spectatori>=0)
);

CREATE TABLE SPORT(
  sport_id       integer primary key,
  nume           varchar(100) not null,
  suprafata      varchar(100) not null,
  nr_probe       integer not null,

  constraint nume_lung_sport_CK check (length(nume)>=1),
  constraint nume_tip_sport_CK check (regexp_like(nume,'[a-zA-Z0-9]')),
  constraint suprafata_lung_sport_CK check (length(suprafata)>=1),
  constraint suprafata_tip_sport_CK check (regexp_like(suprafata,'[a-zA-Z]')),
  constraint nr_probe_val_sport_CK check (nr_probe>=0)
);

CREATE TABLE PUNCTAJ(
  punctaj_id     integer primary key,
  id_sportiv     integer not null,
  id_proba       integer not null,
  valoare        float,
  unitate_masura varchar(100),
  medalie        varchar(7),

  constraint valoare_val_punctaj_CK check (valoare>=0),
  constraint unitate_masura_lung_punctaj_CK check (length(unitate_masura)>=1),
  constraint unitate_masura_tip_punctaj_CK check (regexp_like(unitate_masura,'[a-zA-Z]')),
  constraint medalie_lung_punctaj_CK check (length(medalie)>=1),
  constraint medalie_tip_punctaj_CK check (regexp_like(medalie,'[a-zA-Z]'))
);

CREATE TABLE SEDINTA_MEDICALA(
  sm_id         integer primary key,
  id_sportiv    integer not null, 
  id_em         integer not null,
  sm_data       date not null,
  sm_ora        varchar(10) not null,
  tip           varchar(100) not null,

  constraint tip_lung_sedinta_medicala_CK check (length(tip)>=1),
  constraint tip_tip_sedinta_medicala_CK check (regexp_like(tip,'[a-zA-Z]'))
);

CREATE TABLE ECHIPA_MEDICALA(
  em_id               integer primary key,
  nume_echipa         varchar(100) not null,
  nr_cadre_medicale   integer not null,
  tara                varchar(100),

  constraint nume_echipa_lung_em_CK check (length(nume_echipa)>=1),
  constraint nume_echipa_tip_em_CK check (regexp_like(nume_echipa,'[a-zA-Z]')),
  constraint nr_cadre_medicale_val_em_CK check (nr_cadre_medicale>=0),
  constraint tara_tip_em_CK check (regexp_like(tara,'[a-zA-Z]'))
);

CREATE TABLE CADRU_MEDICAL(
  cm_id        integer primary key,
  id_em        integer not null,
  nume         varchar(100) not null,
  prenume      varchar(100) not null,
  specializare varchar(100) not null,
  functie      varchar(100) not null,

  constraint nume_lung_cadru_medical_CK check (length(nume)>=1),
  constraint nume_tip_cadru_medical_CK check (regexp_like(nume,'[a-zA-Z]')),
  constraint prenume_lung_cadru_medical_CK check (length(prenume)>=1),
  constraint prenume_tip_cadru_medical_CK check (regexp_like(prenume,'[a-zA-Z]')),
  constraint specializare_lung_cm_CK check (length(specializare)>=1),
  constraint specializare_tip_cm_CK check (regexp_like(specializare,'[a-zA-Z]')),
  constraint functie_lung_cm_CK check (length(functie)>=1),
  constraint functie_tip_cm_CK check (regexp_like(functie,'[a-zA-Z]'))
);

