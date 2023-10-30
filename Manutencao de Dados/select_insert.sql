insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (1, 'Marcio Silv', '16834865101', '(47) 89899999');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (2, 'Juca Pedro', '76820503903', '(47) 89748596');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (3, 'Maria Quadros', '62052125442', '(47) 12256897');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (4, 'Pedro Almeida', '84828752137', '(47) 89452541');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (5, 'Josiane Silva', '38145048524', '(49) 58574859');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (6, 'Marcos Rocha', '30305222619', '(51) 37865247');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (7, 'Tiago Prado', '18131028640', '(39) 85697454');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (8, 'Augusto Pereira', '03660633321',
        '(41) 45859687');
insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (9, 'Priscila Chaves', '67742258706', '(45) 25417896');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (10, 'Marta Campos', '43407732805', '(49) 65897485');

insert into medico (nr_sequencia, nm_medico, crm_medico, cpf_medico, fone_medico)
values (1, 'Jader Fonseca', '1002365', '94269268018', '(99) 12438080');

insert into medico (nr_sequencia, nm_medico, crm_medico, cpf_medico, fone_medico)
values (50, 'Fernando Ferreira', '105263', '56624682736', '(45) 58996452');

insert into medico (nr_sequencia, nm_medico, crm_medico, cpf_medico, fone_medico)
values (51, 'Marleide Benta', '1089745', '21764632184', '(48) 49564586');

insert into medico (nr_sequencia, nm_medico, crm_medico, cpf_medico, fone_medico)
values (52, 'Cabral Rodrigues', '2035698', '13167468106', '(44) 89745214');

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (100, 1, 1,STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente,
                      nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (101, 10, 50, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (102, 9, 51, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (103, 8, 52, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (104, 7, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (105, 6, 50, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (106, 4, 51, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente,nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (107, 5, 52, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (108, 2, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente,
                      nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (109, 1, 50, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (110, 3, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (111, 3, 50, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (112, 2, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (113, 1, 52, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (114, 5, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (115, 1, 51, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (116, 1, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (117, 1, 50, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (118, 1, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (119, 1, 52, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (120, 1, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));