
-- kingdom_assets.sql

create or replace view kingdom_unitgroups as
       select k.kingdomid, ug.groupid from
              unit_group ug
              join village v on ug.villageid=v.villageid
              join kingdom k on v.kingdomid=k.kingdomid
;
