--liquibase formatted sql
--changeset Alexandra Fedorova:001_create_directory_d_status
insert into d_status (id, code, name)
values
(gen_random_uuid(), 'created', 'создано'),
(gen_random_uuid(), 'on_confirmation', 'на рассмотрении'),
(gen_random_uuid(), 'confirmed', 'подтвержденно'),
(gen_random_uuid(), 'active', 'активно'),
(gen_random_uuid(), 'overdue', 'просрочено'),
(gen_random_uuid(), '', 'аннулировано'),
(gen_random_uuid(), '', 'завершенно');
--rollback truncate table d_status;
