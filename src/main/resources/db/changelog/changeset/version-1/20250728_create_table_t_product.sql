--liquibase formatted sql
--changeset Alexandra Fedorova:20250728_create_table_t_product
create table t_product
(
    id               uuid,
    product_type_id  uuid,
    name             varchar(300),
    balance          numeric(12, 2),
    begin_date       timestamp,
    expiration_date  timestamp,
    sys_created_date timestamp default current_timestamp,
    sys_updated_date timestamp,
    constraint t_product_id_pk primary key (id),
    constraint t_product_type_fk foreign key (product_type_id)
        references t_product_type (id)
);
comment on table t_product is 'Таблица продуктов';
comment on column t_product.id is 'ID продукта';
comment on column t_product.product_type_id is 'ID типа';
comment on column t_product.name is 'Наименование продукта';
comment on column t_product.balance is 'Баланс продукта';
comment on column t_product.begin_date is 'Дата начала действия';
comment on column t_product.expiration_date is 'Дата окончания действия';
comment on column t_product.sys_created_date is 'Дата создания записи';
comment on column t_product.sys_updated_date is 'Дата изменения записи';
--rollback drop table t_product;