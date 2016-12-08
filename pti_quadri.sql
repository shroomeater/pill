CREATE TABLE "pti_quadri"
(
"pk_uid" integer NOT NULL,
"fraz_loc" text , "data_ril" date ,
"nome_quadro" text , "nro_utente" text ,
"path_quadro" text ,
"path_fornitura" text ,
"path_segnale" text ,
"note" text ,
"indirizzo" text ,
PRIMARY KEY ("nro_utente")
)

--aggiungo colonna geometry
SELECT AddGeometryColumn ('pti_quadri','geom',3003,'POINT','XY');
