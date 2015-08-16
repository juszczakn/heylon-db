begin;

--drop
alter table unit_group drop constraint if exists fk_unit_group__parcelid;
alter table unit_group drop constraint if exists fk_unit_group__villageid;
alter table unit drop constraint if exists fk_unit__groupid;
alter table unit drop constraint if exists fk_unit__unittypeid;


--add
alter table unit_group add fk_unit_group__parcelid references parcel(parcelid);
alter table unit_group add fk_unit_group__villageid references village(villageid);
alter table unit add fk_unit__groupid references unit_group(groupid);
alter table unit add fk_unit__unittypeid references unit_types(typeid);

commit;
