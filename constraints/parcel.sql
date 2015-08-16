begin;

--drop 
alter table parcel_data drop constraint if exists fk_parcel_data__parcelid;
alter table parcel_data drop constraint if exists fk_parcel_data__parceltypeid;

--add
alter table parcel_data add fk_parcel_data__parcelid references parcel(parcelid);
alter table parcel_data add fk_parcel_data__parceltypeid references parcel_types(parceltypeid);

commit;
