CREATE VIEW "v_close_grafo_quadri" as
select g.pk_uid as id_grafo, p.pk_uid as pk_uid
from (select gs.pk_uid,st_buffer (gs.geometry, 0.01) as geom from grafo_stradale gs) as g ,
(select p.pk_uid, closestpoint (l.geometry, p.geom) as geometry 
from pti_quadri as  p, grafo_stradale as l
group by p.pk_uid
having min ( st_length(shortestline (p.geom, l.geometry)))) p
where st_intersects (p.geometry, g.geom) = 1
