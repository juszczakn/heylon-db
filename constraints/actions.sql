begin;

-- drop
alter table group_movement drop constraint if exists fk_group_movement__userid;
alter table group_movement drop constraint if exists fk_group_movement__groupid;
alter table group_movement drop constraint if exists fk_group_movement__statusid;

-- add
alter table group_movement add constraint fk_group_movement__userid foreign key (userid) references users(userid);
alter table group_movement add constraint fk_group_movement__groupid foreign key (groupid) references unit_group(groupid);
alter table group_movement add constraint fk_group_movement__statusid foreign key (statusid) references group_movement_status(statusid);

commit;
