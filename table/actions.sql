
-- actions.sql

create table if not exists group_movement_status (
       statusid integer primary key,
       name varchar(30) not null
);

create table if not exists group_movement (
       movementId serial primary key,
       userId integer references users(userid),
       groupid integer references unit_group(groupid),
       timestarted timestamp not null,
       statusid integer references group_movement_status(statusid)
);

insert into group_movement_status (statusid,name) values (1,'ongoing');
insert into group_movement_status (statusid,name) values (2,'completed');

