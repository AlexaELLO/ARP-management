--liquibase formatted sql
--changeset Alexandra Fedorova:20250728_create_directory_d_status
create table d_status
(
    id               uuid,
    code             varchar(20),
    name             varchar(20),
    sys_created_date timestamp default current_timestamp,
    constraint d_status_id_pk primary key (id),
    constraint d_status_code_uk unique (code),
    constraint d_status_name_uk unique (name)
);
comment on table d_status is 'Справочник статусов';
comment on column d_status.id is 'ID статуса';
comment on column d_status.code is 'Код статуса';
comment on column d_status.name is 'Наименование статуса';
comment on column d_status.sys_created_date is 'Дата создания записи';
--rollback drop table d_status;
