--liquibase formatted sql
--changeset Alexandra Fedorova:20250728_create_table_t_performed_operation
create table t_performed_operation
(
    id                uuid,
    product_id        uuid,
    register_id       uuid,
    operation_type_id uuid,
    created_date      timestamp,
    initiator_name    varchar(200),
    operation_summ    numeric(12, 2),
    sys_created_date  timestamp default current_timestamp,
    sys_updated_date  timestamp,
    constraint t_performed_operation_id_pk primary key (id),
    constraint t_performed_operation_product_fk foreign key (product_id)
        references t_product (id),
    constraint t_performed_operation_register_fk foreign key (register_id)
        references t_register (id),
    constraint t_performed_operation_type_fk foreign key (operation_type_id)
        references t_operation_type (id)
);
comment on table t_performed_operation is 'Таблица исполняемых операций';
comment on column t_performed_operation.id is 'ID операции';
comment on column t_performed_operation.product_id is 'ID продукта';
comment on column t_performed_operation.register_id is 'ID регистра';
comment on column t_performed_operation.operation_type_id is 'ID типа операции';
comment on column t_performed_operation.created_date is 'Дата создания операции';
comment on column t_performed_operation.initiator_name is 'Наименование инициатора создания/изменения задолженности';
comment on column t_performed_operation.operation_summ is 'Сумма исполняемой операции';
comment on column t_performed_operation.sys_created_date is 'Дата создания записи';
comment on column t_performed_operation.sys_updated_date is 'Дата изменения записи';
--rollback drop table t_performed_operation;