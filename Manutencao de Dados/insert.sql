insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (1, 'Marcio Junior Silva', '16834865101', '(47)89899999');

select *
from paciente;

# Erro
# insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
# values (1, 'Alberto Moreira', '66440726820', '(51)99578156');

# Erro
# insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
# values (2, 'Juliano Rosa', null, '(47)89899999');

insert into medico (nr_sequencia, nm_medico, crm_medico, cpf_medico, fone_medico)
values (1, 'Jader Fonseca', '1002365', '94269268018', '(99) 12438080');


INSERT INTO consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim) VALUES (1, 1, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));


select *
from consulta;

# INSERT INTO consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim) VALUES (1, 10, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s'));


# insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
# values (5, 'Mauricio Alves', '16834865101', '(99)89899999');


# INSERT INTO consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim) VALUES (5, 1, 1, STR_TO_DATE('16/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s'), STR_TO_DATE('16/05/2023 14:00:00','%d/%m/%Y %H:%i:%s'));

# insert into consulta (nr_sequencia, nr_seq_paciente,
#                       nr_seq_medico, dt_hora_inicio, dt_hora_fim)
# values (5, 1, 1, to_date('04/02/2013 16:00:00', 'DD/MM/YYYY HH24:MI:SS'),
#         to_date('04/02/2013 15:00:00', 'DD/MM/YYYY HH24:MI:SS'));