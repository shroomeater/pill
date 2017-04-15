create view "db_quadri_rilievo_xxxxx_3003" as
select 
p.nome_quadro as "nome_quadro",
p.nome_quadro ||".jpg" as "nro_foto",
g.den_estesa as "indirizzo",
p.nro_utente as "nro_utente",
p.note as "note",
st_x (p.geom) as x_3003,
st_y (p.geom) as y_3003
from (pti_quadri p join v_close_grafo_quadri c on p.pk_uid = c.pk_uid) a 
join grafo_stradale g on a.id_grafo = g.pk_uid 
