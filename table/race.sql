
--race.sql

create table if not exists races (
       raceId integer primary key,
       name varchar(30) not null
);

insert into races (raceId,name) values (1,'human');
