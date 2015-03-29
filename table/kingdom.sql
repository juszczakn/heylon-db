--kingdom.sql
create table if not exists kingdom (
       kingdomId serial primary key,
       userId integer references users(userId),
       name varchar(30) not null
);

create table if not exists village (
       villageId serial primary key,
       parcelId integer references parcel(parcelId),
       kingdomId integer references kingdom(kingdomId)
);
