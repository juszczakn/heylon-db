begin;

-- drop
alter table races drop constraint if exists un_races__name;

--add
alter table races add constraint un_races__name unique (name);

commit;
