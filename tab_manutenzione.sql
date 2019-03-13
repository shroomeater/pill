CREATE TABLE "tab_manutenzione" 
(
"pk_man" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
"data" text, -- data di intervento
"intervento" text, -- tipo di intervento effettuato
"tipo_intervento" text,-- manutenzione ordinaria, straordinaria
"ditta" text,-- ditta incaricata
"nro_etichetta" text ,
"rif_quadro" text ,
"fraz_loc" text ,
"path_supporto" text ,
"path_armatura" text ,
"path_altro" text ,
"tipo" text ,
"materiale" text ,
"proprieta" text ,
"nro_sorgenti" integer ,
"lungh_sbraccio" double ,
"potenza" integer ,
"tipo_lampada" text ,
"tipo_armatura" text ,
"stato_sorgente" text ,
"altezza_pl" double ,
"cod_armatura" integer ,
"path_etichetta" text,
"note" text ,
"pk_uid" INTEGER NOT NULL,
FOREIGN KEY ("pk_uid") REFERENCES "pti_pill" ("pk_uid")
)




CREATE TABLE "tab_manutenzione" 
(
"pk_man" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
"fecha_man" text, -- data di intervento
"intervento" text, -- tipo di intervento effettuato
"tipo_intervento" text,-- manutenzione ordinaria, straordinaria
"mantenedor" text,-- ditta incaricata
"nro_etichetta" text ,
"rif_quadro" text ,
"fraz_loc" text ,
"path_supporto" text ,
"path_armatura" text ,
"path_altro" text ,
"tipo" text ,
"materiale" text ,
"proprieta" text ,
"nro_sorgenti" integer ,
"lungh_sbraccio" double ,
"potenza" integer ,
"tipo_lampada" text ,
"tipo_armatura" text ,
"stato_sorgente" text ,
"altezza_pl" double ,
"cod_armatura" integer ,
"path_etichetta" text,
"note" text ,
"pk_uid" INTEGER NOT NULL,
FOREIGN KEY ("pk_uid") REFERENCES "pti_pill" ("pk_uid")
)
