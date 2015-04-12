
--kingdom.sql

create table if not exists kingdom (
       kingdomId serial primary key,
       userId integer references users(userId),
       name varchar(30) not null,
       raceId integer references races(raceId)
);

create table if not exists village (
       villageId serial primary key,
       name varchar(30),
       parcelId integer references parcel(parcelId),
       kingdomId integer references kingdom(kingdomId)
);
