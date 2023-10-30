CREATE DATABASE dbpaciente;

USE dbpaciente;


create table paciente
(
    nr_sequencia  INT(6),
    nm_paciente   VARCHAR(100),
    cpf_paciente  varchar(11),
    fone_paciente varchar(15),
    primary key (nr_sequencia)
);

create table consulta
(
    nr_sequencia    INT(10),
    nr_seq_paciente INT(6),
    nr_seq_medico   INT(4),
    dt_hora_inicio  date,
    dt_hora_fim     date,
    ds_observacao   varchar(1000),
    primary key (nr_sequencia)
);

create table medico
(
    nr_sequencia INT(4),
    nm_medico    varchar(100),
    crm_medico   varchar(10),
    cpf_medico   varchar(11),
    fone_medico  varchar(15),
    primary key (nr_sequencia)
);


