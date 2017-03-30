CREATE VIEW v_count_sum AS
SELECT a.pk_uid, count(*) as tot_nro_pill,sum (nro_sorgenti) as tot_nro_sorgenti ,sum ((p.potenza/1000.0)*(p.nro_sorgenti)) as tot_kW, a.geom
from pti_pill p, plg_aree_quadri a
where st_intersects (p.geom, a.geom) =1
group by a.pk_uid
