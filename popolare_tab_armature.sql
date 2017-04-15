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
"pk_uid"
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
"pk_uid"
FROM "pti_pill"
