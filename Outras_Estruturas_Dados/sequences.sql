create sequence nr_sequencia_paciente_sequ maxvalue 999999;

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente)
values (nextval(nr_sequencia_paciente_sequ), 'Alberto Antunes', '21724524593');

# select nr_sequencia_paciente_sequ from dual;
#
# insert into paciente (nr_sequencia, nm_paciente, cpf_paciente)
# values (nr_sequencia_paciente_sequ.nextval, 'Alberto
# Antunes', '21724524593');