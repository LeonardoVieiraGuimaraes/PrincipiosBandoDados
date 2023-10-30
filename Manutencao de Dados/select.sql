select nm_medico
from medico
where fone_medico is not null;

select b.nm_medico, a.dt_hora_inicio, c.nm_paciente
from consulta a,
     medico b,
     paciente c
where a.dt_hora_inicio between STR_TO_DATE('15/05/2023 12:00:00', '%d/%m/%Y %H:%i:%s') and STR_TO_DATE('18/05/2023 17:00:00','%d/%m/%Y %H:%i:%s')
  and b.nr_sequencia = a.nr_seq_medico
  and c.nr_sequencia = a.nr_seq_paciente
order by a.dt_hora_inicio;

select b.nm_medico, count(a.nr_sequencia)
from consulta a,
     medico b
where a.dt_hora_inicio between STR_TO_DATE('15/05/2023 15:00:00', '%d/%m/%Y %H:%i:%s') and STR_TO_DATE('17/05/2023 16:00:00','%d/%m/%Y %H:%i:%s')
  and b.nr_sequencia = a.nr_seq_medico
group by b.nm_medico;