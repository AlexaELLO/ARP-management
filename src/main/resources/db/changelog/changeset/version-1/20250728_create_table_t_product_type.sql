--liquibase formatted sql
--changeset Alexandra Fedorova:20250728_create_table_t_product_type
create table t_product_type
(
    id               uuid,
    code             varchar(20),
    description      varchar(150),
    sys_created_date timestamp default current_timestamp,
    sys_updated_date timestamp,
    constraint t_product_type_id_pk primary key (id),
    constraint t_product_type_code_uk unique (code)
);
comment on table t_product_type is 'Таблица типов продуктов';
comment on column t_product_type.id is 'ID типа';
comment on column t_product_type.code is 'Код типа продукта';
comment on column t_product_type.description is 'Описание типа продукта';
comment on column t_product_type.sys_created_date is 'Дата создания записи';
comment on column t_product_type.sys_updated_date is 'Дата изменения записи';
--rollback drop table t_product_type;