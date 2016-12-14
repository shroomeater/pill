CREATE TABLE plg_aree_quadri 
(
pk_uid integer PRIMARY KEY autoincrement NOT NULL ,
data_ril date,
fraz_loc TEXT,
nome_quadro TEXT
)

--aggiungo colonna geometry
SELECT AddGeometryColumn ('plg_aree_quadri','geom',3003,'POLYGON','XY');
