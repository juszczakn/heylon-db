begin;

-- drop
alter table group_movement drop constraint if exists fk_group_movement__userid;
alter table group_movement drop constraint if exists fk_group_movement__groupid;
alter table group_movement drop constraint if exists fk_group_movement__group_movement_status;

-- add
alter table group_movement add fk_group_movement__userid references users(userid);
alter table group_movement add fk_group_movement__groupid references unit_group(groupid);
alter table group_movement add fk_group_movement__group_movement_status references group_movement_status(statusid);

commit;
