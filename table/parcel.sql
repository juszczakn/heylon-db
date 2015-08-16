create table if not exists parcel (
       parcelId serial not null primary key,
       x integer,
       y integer
);

create table if not exists parcel_types (
       parcelTypeId integer not null primary key,
       parcelType varchar(30) not null
);

create table if not exists parcel_data (
       parcelId integer,
       parcelTypeId integer
);
