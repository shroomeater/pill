CREATE TABLE "tab_armature" 
(
"pk_arm" integer PRIMARY KEY autoincrement NOT NULL,
"path_armatura" text ,
"tipo" text ,
"materiale" text ,
"stato" text ,
"lungh_sbraccio" double ,
"potenza" integer ,
"tipo_lampada" text ,
"tipo_armatura" text ,
"stato_sorgente" text ,
"altezza_pl" double ,
"cod_armatura" integer,
"pk_uid" INTEGER NOT NULL,
FOREIGN KEY ("pk_uid") REFERENCES "pti_pill" ("pk_uid") -- chiave esterna
)
