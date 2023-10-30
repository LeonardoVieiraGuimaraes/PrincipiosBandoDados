create or replace view medico_consulta_paciente as
select a.nr_sequencia nr_seq_medico,
       a.nm_medico,
       a.crm_medico,
       a.cpf_medico,
       a.fone_medico,
       b.nr_sequencia nr_seq_consulta,
       b.dt_hora_inicio,
       b.dt_hora_fim,
       b.ds_observacao,
       c.nr_sequencia nr_seq_paciente,
       c.nm_paciente,
       c.cpf_paciente,
       c.fone_paciente
from medico a,
     consulta b,
     paciente c
where b.nr_seq_medico = a.nr_sequencia
  and c.nr_sequencia = b.nr_seq_paciente;

select distinct nm_medico, nm_paciente
from medico_consulta_paciente
order by nm_medico