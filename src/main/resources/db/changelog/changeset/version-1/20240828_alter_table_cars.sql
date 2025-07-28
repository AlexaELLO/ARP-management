--liquibase formatted sql
--changeset afedorova:20240828_alter_table_cars
alter table cars
    add constraint cars_fk foreign key (citizen_id)
        references citizens (id);

--rollback alter table citizen_settings.cars drop constraint cars_fk;