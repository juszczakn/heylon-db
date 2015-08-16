begin;

-- drop
alter table kingdom drop constraint if exists fk_kingdom__userid;
alter table kingdom drop constraint if exists fk_kingdom__raceid;

alter table village drop constraint if exists fk_village__parcelid;
alter table village drop constraint if exists fk_village__kingdomid;

-- add
alter table kingdom add constraint fk_kingdom__userid foreign key (userid) references users(userid);
alter table kingdom add constraint fk_kingdom__raceid foreign key (raceid) references races(raceid);

alter table village add constraint fk_village__parcelid foreign key (parcelid) references parcel(parcelid);
alter table village add constraint fk_village__kingdomid foreign key (kingdomid) references kingdom(kingdomid);

commit;
