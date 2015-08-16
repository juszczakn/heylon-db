begin;

-- drop
alter table users drop constraint if exists un_users__email;

-- add
alter table users add constraint un_users__email unique (email);

commit;
