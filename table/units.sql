--units.sql
create table if not exists unit_group (
       groupId serial primary key,
       parcelId integer references parcel(parcelId),
       villageId integer references village(villageId)
);

create table if not exists unit (
       unitId serial primary key,
       groupId integer references unit_group(groupId),
       amount integer
       -- more data?
);
