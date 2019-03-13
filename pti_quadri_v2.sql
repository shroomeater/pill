CREATE TABLE "pti_quadri"
(
"pk_uid" integer PRIMARY KEY autoincrement NOT NULL,
"fraz_loc" text , -- denominazione frazione e/o località
"data_ril" date , -- data del rilievo
"nome_quadro" text , -- nome del quadro Q01, Q02 ...
"nro_utente" text , -- numero utente display contatore enel
"path_quadro" text , -- percorso foto del quadro
"path_fornitura" text , -- percorso foto della fornitura enel
"path_segnale" text , -- percorso foto segnale cellulare
"temporizzatore" text, -- atronomico, crepuscolare/fotocellula
"regolatore_flusso" text, -- macchina che regola il flusso, abbassa tensione dopo una certa ora
"carico_esogeno" text, -- presenza di telecamere, defibillatori o semafori allacciati alla fornitura
"5_filo_enel" text, -- neutro in comune con ENEL
"note" text , -- osservazioni
"note_2" text --altre osservazioni
)




CREATE TABLE "pti_quadri"
(
"pk_uid" integer PRIMARY KEY autoincrement NOT NULL,
"direccion" text , -- denominazione frazione e/o località
"fecha_inv" date , -- fecha inventario
"code_cuadro" text , -- codigo del cuadro E6CM17...
"num_contador" text , -- numero contador 
"foto_fuadro" text , -- directorio foto del cuadro
"foto_ubicacion" text , -- directorio foto ubicacion
"path_segnale" text , -- percorso foto segnale cellulare
"temporizzatore" text, -- astronomico, fotocelula, automata, otro
"regolador_flujo" text, -- tipo regulador flujo
"elem_exogeno" text, -- presencia de circuitos de riego, semaforos, otros
"cups" text, -- cups
"note" text , -- osservazioni
"note_2" text --altre osservazioni
)
