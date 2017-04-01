CREATE TABLE "pti_pill" 
(
"pk_uid" integer PRIMARY KEY autoincrement NOT NULL,
"rif_quadro" text , -- nome del quadro Q01, Q02
"fraz_loc" text , -- nome della localita o frazione
"data_ril" date , -- data del rilievo
"path_supporto" text , --percorso relativo alla foto 
"path_armatura" text ,
"classe_supporto" TEXT CONSTRAINT classe_supporto_verify CHECK ("classe_supporto" IN ('Palo', 'Muro','Cavo','Terra')),
"tipo_sostegno" text , -- palo dritto, palo con sbraccio, mensola a muro
"materiale" text , -- acciaio, ferro, ghisa, PVC
"stato" text , --stato del sostegno: buono, sostituire
"proprieta" text , -- Comune, ENEL
"nro_sorgenti" integer , -- numero di lampade
"potenza" integer , -- potenza della lampadai in Watt
"lungh_sbraccio" double , -- lunghezza dello sbraccio
"tipo_lampada" text , -- SAP, HQI, HQL
"tipo_armatura" text , -- stradale, arredo urbabo, globo, lanterna
"stato_sorgente" text , -- conforme, non conforme
"altezza_pl" double , -- altezza della sorgente dasl piano stradale
"cod_armatura" integer , -- numero foto che rappresenta la tipologia dell'armatura
"note" TEXT
)

--aggiungo colonna geometry
SELECT AddGeometryColumn ('pti_pill','geom',3003,'POINT','XY');
