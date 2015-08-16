begin;

--drop 
alter table parcel_data drop constraint if exists fk_parcel_data__parcelid;
alter table parcel_data drop constraint if exists fk_parcel_data__parceltypeid;

--add
alter table parcel_data add constraint fk_parcel_data__parcelid foreign key (parcelid) references parcel(parcelid);
alter table parcel_data add constraint fk_parcel_data__parceltypeid foreign key (parceltypeid) references parcel_types(parceltypeid);

commit;
