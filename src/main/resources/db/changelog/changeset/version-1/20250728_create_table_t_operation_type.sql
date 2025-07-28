--liquibase formatted sql
--changeset Alexandra Fedorova:20250728_create_table_t_operation_type
create table t_operation_type
(
    id               uuid,
    code             varchar(250),
    name             varchar(400),
    sys_created_date timestamp default current_timestamp,
    sys_updated_date timestamp,
    constraint t_operation_type_id_pk primary key (id),
    constraint t_product_type_code_name_uk unique (code, name)
);
comment on table t_operation_type is 'Таблица типов операций';
comment on column t_operation_type.id is 'ID типа';
comment on column t_operation_type.code is 'Код типа операции';
comment on column t_operation_type.name is 'Наименование';
comment on column t_operation_type.sys_created_date is 'Дата создания записи';
comment on column t_operation_type.sys_updated_date is 'Дата изменения записи';
--rollback drop table t_operation_type;