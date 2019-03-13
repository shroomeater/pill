CREATE TABLE "tab_armature" 
(
"pk_arm" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
"path_armatura" text,
"classe_supporto" text, --( Palo, Muro, Cavo, Terra)
"tipo_supporto" text,
"materiale" text,
"stato" text, -- (Buono, Sostituire, ND)
"lungh_sbraccio" text,
"potenza" integer,
"tipo_lampada" text,
"tipo_armatura" text,
"stato_sorgente" text, -- (Conforme,Non Conforme)
"altezza_pl" text,
"cod_armatura" text,
"note" text,
"pk_uid" INTEGER NOT NULL,
FOREIGN KEY ("pk_uid") REFERENCES "pti_pill" ("pk_uid")
 )




CREATE TABLE "tab_luminaria" 
(
"pk_lum" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
"path_luminaria" text, --(foto soporte)
"clase_soporte" text, --( Poste HM, Baculo, Columna, Fachada, Catenaria, Otro)
"tipo_luminaria" text, --(Vial, Ornamental, Ambiental, Proyector, Otro)
"material" text,
"estado" text, -- (Bueno, Sustituir, ND)
"long_brazo" text,
"potencia" integer,
"tipo_lampara" text, --(LED, VSAP, VSBP, HM, VM, Otro)
"tipo_armatura" text,
"estado_fuente" text, -- (Conforme,No Conforme)
"altura_pdl" text,
"cod_armatura" text,
"note" text,
"pk_uid" INTEGER NOT NULL,
FOREIGN KEY ("pk_uid") REFERENCES "pti_pill" ("pk_uid")
 )
