CREATE TABLE "pti_quadri"
(
"pk_uid" integer PRIMARY KEY autoincrement NOT NULL,
"fraz_loc" text , "data_ril" date ,
"nome_quadro" text , 
"nro_utente" text ,
"path_quadro" text ,
"path_fornitura" text ,
"path_segnale" text ,
"note" text ,
"quinto_filo" text, --presente/assente
"crepuscolare" text , -- astronomico, fotocellula
"regolatore_flusso" text -- presente/assente
"indirizzo" text 
)

--aggiungo colonna geometry
SELECT AddGeometryColumn ('pti_quadri','geom',3003,'POINT','XY');
