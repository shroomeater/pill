CREATE TABLE "pti_pill" 
(
"pk_uid" integer PRIMARY KEY autoincrement NOT NULL,
"rif_quadro" text ,
"fraz_loc" text ,
"data_ril" date ,
"path_supporto" text ,
"path_armatura" text ,
"tipo" text ,
"materiale" text ,
"stato" text ,
"proprieta" text ,
"nro_sorgenti" integer ,
"lungh_sbraccio" double ,
"potenza" integer ,
"tipo_lampada" text ,
"tipo_armatura" text ,
"stato_sorgente" text ,
"altezza_pl" double ,
"cod_lampada" integer 
)

--aggiungo colonna geometry
SELECT AddGeometryColumn ('pti_pill','geom',3003,'POINT','XY');
