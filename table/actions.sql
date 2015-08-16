create table if not exists group_movement_status (
       statusid integer primary key,
       name varchar(30) not null
);

create table if not exists group_movement (
       movementId serial primary key,
       userId integer,
       groupid integer,
       timestarted timestamp not null,
       statusid integer
);
