--liquibase formatted sql
--changeset afedorova:20240828_create_table_citizens
create table citizens
(
    id          uuid,
    first_name  varchar(50),
    last_name   varchar(50),
    age         integer not null,
    passport_id uuid,
    gender      varchar(255),
    constraint citizens_id_pk primary key (id),
    constraint citizens_id_ck check (gender in ('male', 'female'))
);
comment on table citizens is 'Таблица жителей';
comment on column citizens.id is 'ID жителя';
comment on column citizens.first_name is 'Имя';
comment on column citizens.last_name is 'Фамилия';
comment on column citizens.age is 'Возраст';
comment on column citizens.passport_id is 'ID паспорта';
--rollback drop table citizens;
