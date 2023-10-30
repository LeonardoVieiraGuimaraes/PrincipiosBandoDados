

# CHAVE PRIMÁRIA E RESTRIÇÃO NOT NULL
ALTER TABLE consulta MODIFY nr_seq_paciente INT(6) NOT NULL;

# create table consulta
# (
#     nr_sequencia    INT(10) NOT NULL,
#     nr_seq_paciente INT(6)  NOT NULL,
#     nr_seq_medico   INT(4)  NOT NULL,
#     dt_hora_inicio  date       NOT NULL,
#     dt_hora_fim     date       NOT NULL,
#     ds_observacao   varchar(1000),
#     primary key (nr_sequencia)
# );

alter table consulta
    modify nr_seq_medico int(4) NOT NULL,MODIFY dt_hora_inicio date NOT NULL, MODIFY dt_hora_fim date NOT NULL;

alter table paciente
    modify nm_paciente varchar(100) NOT NULl, modify cpf_paciente varchar(11) NOT NULL;

alter table medico
    modify nm_medico varchar(100) NOT NULL, modify  crm_medico varchar(10) NOT NULL, modify cpf_medico varchar(11) NOT NULL;


# CHAVE ESTRANGEIRA
alter table consulta
    add constraint consulta_paciente_fk
        foreign key (nr_seq_paciente)
            references paciente (nr_sequencia);

alter table consulta
    drop constraint consulta_paciente_fk;

alter table consulta
    add constraint consulta_paciente_fk
        foreign key (nr_seq_paciente)
            references paciente (nr_sequencia);

alter table consulta
    add constraint
        consulta_medico_fk
        foreign key (nr_seq_medico)
            references medico (nr_sequencia);

alter table paciente
    add constraint
        paciente_cpf_uk
        unique (cpf_paciente);

# CHAVE ÚNICA
alter table paciente
    drop constraint paciente_cpf_uk;

alter table paciente
    add constraint
        paciente_cpf_uk
        unique (cpf_paciente);

alter table medico
    add constraint
        medico_cpf_uk
        unique (cpf_medico);

alter table medico
    add constraint
        medico_crm_uk
        unique (crm_medico);

# CHECAGEM DE DADOS
alter table consulta
    add constraint
        dt_hora_consulta_ck
        check (dt_hora_inicio < dt_hora_fim)