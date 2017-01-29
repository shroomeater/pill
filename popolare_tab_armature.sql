INSERT INTO "tab_armature"
(
"path_armatura"  ,
"tipo" ,
"materiale" ,
"stato" ,
"lungh_sbraccio"  ,
"potenza" ,
"tipo_lampada" ,
"tipo_armatura" ,
"stato_sorgente" ,
"altezza_pl" ,
"cod_armatura" ,
"pk_uid",
"geom" 
)
SELECT 
"path_armatura"  ,
"tipo" ,
"materiale" ,
"stato" ,
"lungh_sbraccio"  ,
"potenza" ,
"tipo_lampada" ,
"tipo_armatura" ,
"stato_sorgente" ,
"altezza_pl" ,
"cod_armatura" ,
"pk_uid" ,
"geom"
FROM "pti_pill"
