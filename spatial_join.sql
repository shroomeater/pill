update "pti_pill" set "rif_quadro" =
(
select "fk_quadri_forniture"
from "pti_pill" p, "aree_quadri" q
where st_intersects (q.geom, p.geom)=1 and pti_pill.pk_uid= p.pk_uid
)
