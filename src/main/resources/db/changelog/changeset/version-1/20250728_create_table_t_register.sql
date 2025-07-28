--liquibase formatted sql
--changeset Alexandra Fedorova:20250728_create_table_t_register
create table t_register
(
    id               uuid,
    product_id       UUID,
    status_id        uuid,
    name             varchar(300),
    account_number   varchar(50),
    current_balance  numeric(12, 2),
    begin_date       timestamp,
    expiration_date  timestamp,
    sys_created_date timestamp default current_timestamp,
    sys_updated_date timestamp,
    constraint t_register_id_pk primary key (id),
    constraint t_register_product_fk foreign key (product_id)
        references t_product (id),
    constraint t_register_status_fk foreign key (status_id)
        references d_status (id)
);
comment on table t_register is 'Таблица регистров';
comment on column t_register.id is 'ID регистра';
comment on column t_register.product_id is 'ID продукта';
comment on column t_register.status_id is 'ID статуса';
comment on column t_register.name is 'Наименование регистра';
comment on column t_register.account_number is 'Номер лицевого счета';
comment on column t_register.current_balance is 'Текущий баланс на регистре';
comment on column t_register.begin_date is 'Дата начала действия';
comment on column t_register.expiration_date is 'Дата окончания действия';
comment on column t_register.sys_created_date is 'Дата создания записи';
comment on column t_register.sys_updated_date is 'Дата изменения записи';
--rollback drop table t_register;