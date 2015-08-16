create table if not exists kingdom (
       kingdomId serial primary key,
       userId integer,
       name varchar(30) not null,
       raceId integer
);

create table if not exists village (
       villageId serial primary key,
       name varchar(30),
       parcelId integer,
       kingdomId integer
);
