--units.sql
create table if not exists unit_group (
       groupId serial primary key,
       parcelId integer references parcel(parcelId),
       villageId integer references village(villageId)
);

create table unit_types (
       typeid integer primary key,
       typename varchar(50) not null
       -- more data on type? health, values?
);

create table if not exists unit (
       unitId serial primary key,
       groupId integer references unit_group(groupId),
       amount integer,
       unitType integer references unit_types(typeId)
       -- more data?
);

insert into unit_types (typeid,typename) values (1,'fighter');
