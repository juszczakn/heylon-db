begin;

--drop
alter table unit_group drop constraint if exists fk_unit_group__parcelid;
alter table unit_group drop constraint if exists fk_unit_group__villageid;
alter table unit drop constraint if exists fk_unit__groupid;
alter table unit drop constraint if exists fk_unit__unittypeid;


--add
alter table unit_group add constraint fk_unit_group__parcelid foreign key (parcelid) references parcel(parcelid);
alter table unit_group add constraint fk_unit_group__villageid foreign key (villageid) references village(villageid);
alter table unit add constraint fk_unit__groupid foreign key (groupid) references unit_group(groupid);
alter table unit add constraint fk_unit__unittypeid foreign key (unittypeid) references unit_types(typeid);

commit;
