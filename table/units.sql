create table if not exists unit_group (
       groupId serial primary key,
       parcelId integer,
       villageId integer
);

create table unit_types (
       typeid integer primary key,
       typename varchar(50) not null
       -- more data on type? health, values?
);

create table if not exists unit (
       unitId serial primary key,
       groupId integer,
       amount integer,
       unitTypeId integer
       -- more data?
);
