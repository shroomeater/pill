create view "db_pill_rilievo_xxxxx_3003" as
select 
p.pk_uid as "ID_Prog",
p.cod_armatura as "nro_foto",
p.rif_quadro as "nro_quadro",
g.den_estesa as "indirizzo",
p.nro_sorgenti as "quantita",
p.tipo_sostegno as "tipo_sostegno_ante",
p.materiale as "materiale",
p.altezza_pl/100.0 as "altezza_sostegno",
p.tipo_armatura as "tipo_ottica",
p.tipo_lampada as "tipo_sorgente",
p.potenza/1000.0 as "potenza_sorgente_kW",
st_x (p.geom) as x_3003,
st_y (p.geom) as y_3003
from (pti_pill p join v_close_grafo_pill c on p.pk_uid = c.pk_uid) a 
join grafo_stradale g on a.id_grafo = g.pk_uid 
