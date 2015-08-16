begin;

-- drop
alter table kingdom drop constraint if exists fk_kingdom__userid
alter table kingdom drop constraint if exists fk_kingdom__raceid;

alter table village drop constraint if exists fk_village__parcelid;
alter table village drop constraint if exists fk_village__kingdomid;

-- add
alter table kingdom add fk_kingdom__userid references users(userid);
alter table kingdom add fk_kingdom__raceid references races(raceid);

alter table village add fk_village__parcelid references parcel(parcelid);
alter table village add fk_village__kingdomid references kingdom(kingdomid);

commit;
