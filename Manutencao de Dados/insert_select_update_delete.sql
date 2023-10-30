insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (1, 'Marcio Junior Silva', '16834865101', '(47)89899999');

select *
from paciente;

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (1, 'Alberto Moreira', '66440726820', '(51)99578156');

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (2, 'Juliano Rosa', null, '(47)89899999');

insert into medico (nr_sequencia, nm_medico, crm_medico, cpf_medico, fone_medico)
values (1, 'Jader Fonseca', '1002365', '94269268018', '(99) 12438080');

insert into consulta (nr_sequencia, nr_seq_paciente, nr_seq_medico, dt_hora_inicio, dt_hora_fim);

select *
from consulta

insert into consulta (nr_sequencia, nr_seq_paciente,
                      nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (1, 10, 1, to_date('04/02/2013 15:00:00', 'DD/MM/YYYY HH24:MI:SS'), to_date('04/02/2013 16:00:00', 'DD/MM/YYYY HH24:MI:SS'));

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (5, 'Mauricio Alves', '16834865101','(99)89899999');

insert into consulta (nr_sequencia, nr_seq_paciente,
                      nr_seq_medico, dt_hora_inicio, dt_hora_fim)
values (5, 1, 1, to_date('04/02/2013 16:00:00', 'DD/MM/YYYY HH24:MI:SS'), to_date('04/02/2013 15:00:00', 'DD/MM/YYYY HH24:MI:SS'));