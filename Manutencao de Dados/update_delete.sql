update paciente set fone_paciente = '(47)56897412'
where nr_sequencia = 1;
commit;

select nr_sequencia, nm_paciente, fone_paciente from
    paciente;

delete from paciente where nr_sequencia = 1;

delete from consulta where nr_seq_paciente = 1;
delete from paciente where nr_sequencia = 1;
commit;

select * from paciente