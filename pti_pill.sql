CREATE TABLE "pti_pill" 
(
"pk_uid" integer PRIMARY KEY autoincrement NOT NULL,
"rif_quadro" text ,
"fraz_loc" text ,
"data_ril" date ,
"path_supporto" text ,
"path_armatura" text ,
"classe_supporto" TEXT CONSTRAINT classe_supporto_verify CHECK ("classe_supporto" IN ('Palo', 'Muro','Cavo','Terra')),
"tipo_sostegno" text ,
"materiale" text ,
"stato" text ,
"proprieta" text ,
"nro_sorgenti" integer ,
"potenza" integer ,
"lungh_sbraccio" double ,
"tipo_lampada" text ,
"tipo_armatura" text ,
"stato_sorgente" text ,
"altezza_pl" double ,
"cod_armatura" integer 
)

--aggiungo colonna geometry
SELECT AddGeometryColumn ('pti_pill','geom',3003,'POINT','XY');
