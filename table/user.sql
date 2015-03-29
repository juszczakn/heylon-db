--users.sql
create table if not exists users (
       userId serial primary key,
       name varchar(30) not null,
       email varchar(50) unique not null,
       password varchar(128) not null
);
