#cria o bando de dados
create database sqlconsultorio;

#seleciona o bando de dados
use sqlconsultorio;

#cria o objeto(tabela) paciente com seus atributos 
create table paciente(
	nr_sequencia numeric(6),
	nm_paciente varchar(100),
	cpf_paciente varchar(11),
	fone_paciente varchar(15),
	primary key(nr_sequencia)
);

create table medico (
nr_sequencia numeric(4),
nm_medico varchar(100),
crm_medico varchar(10),
cpf_medico varchar(11),
fone_medico varchar(15),
primary key (nr_sequencia)
);

create table consulta (
 nr_sequencia numeric(10),
 nr_seq_paciente numeric(6),
 nr_seq_medico numeric(4),
 dt_hora_inicio date,
 dt_hora_fim date,
 ds_observacao varchar(1000),
 primary key (nr_sequencia)
 );

#Excluir tabela
drop table paciente; 

#Adicionar atritubo
alter table paciente add dt_nascimento date;

#Excluir atributo
alter table paciente drop column dt_nascimento;

#mostra a tabela
describe paciente;

select * from paciente;

#Alterar campos para not null
alter table paciente
	modify nm_paciente varchar(100) not null,
	modify cpf_paciente varchar(11) not null;
    
alter table medico 
	modify nm_medico varchar(100) not null,
	modify crm_medico varchar(10) not null,
    modify cpf_medico varchar(11) not null;

alter table consulta 
	modify nr_seq_medico numeric(10) not null auto_increment,
	modify dt_hora_inicio date not null,
	modify dt_hora_fim date not null;
#mostra a tabela


alter table medico modify nm_medico varchar(100) null;

describe paciente;

select * from paciente;

#altera a tabela paciente adicionando novo atributo ao objeto
alter table paciente add(dt_nascimento date);

#alter table consulta change column nr_seq_paciente nr_seq_paciente int(6) not null;

drop table consulta;

create table consulta (
	nr_sequencia numeric(10) not null,
	nr_seq_paciente numeric(6) not null,
	nr_seq_medico numeric(4) not null,
	dt_hora_inicio date not null,
	dt_hora_fim date not null,
	ds_observacao varchar(1000),
	primary key (nr_sequencia)
);

alter table consulta add constraint consulta_paciente_fk 
	foreign key (nr_seq_paciente) 
    references paciente(nr_sequencia);

#Excluir chave estrangeira
ALTER TABLE consulta DROP FOREIGN KEY consulta_paciente_fk;

alter table consulta add constraint consulta_paciente_fk
	foreign key (nr_seq_paciente)
	references paciente(nr_sequencia);

alter table consulta add constraint consulta_medico_fk
	foreign key (nr_seq_medico)
	references medico(nr_sequencia);
    
    
ALTER TABLE consulta DROP INDEX consulta_paciente_fk;


#Adicionando chave única
alter table paciente add constraint
	paciente_cpf_uk
	unique (cpf_paciente);

#Excluindo chave única
alter table paciente drop constraint paciente_cpf_uk;   

alter table paciente add constraint
	paciente_cpf_uk
	unique (cpf_paciente);
    

alter table medico add constraint
	medico_cpf_uk
	unique (cpf_medico);

alter table medico add constraint
	medico_crm_uk
	unique (crm_medico);


alter table consulta add constraint
	dt_hora_consulta_ck
	check (dt_hora_inicio < dt_hora_fim);

select * from consulta;

#inserir dados na tabela paciente
insert into paciente ( nr_sequencia, nm_paciente, cpf_paciente, fone_paciente) 
values (2, 'Marcio Junior Silva', '16834865102', '(47)89899999');

select * from paciente;

#Atuliza dados na tabela paciente
update paciente set fone_paciente = '(47) 56897412'
where nr_sequencia = 1;

#Deleta os dados na tabela paciente
delete from paciente where nr_sequencia = 1;


#cheacagem de dados
alter table consulta add constraint dt_hora_consulta_ck
check (dt_hora_inicio < dt_hora_fim);

#seleção 
select nm_medico
	from medico
	where fone_medico is not null;


#Criando indice
create index nr_seq_paciente_fk_i on consulta (nr_seq_paciente);
create index nr_seq_medico_fk_i on consulta (nr_seq_medico);

#Sequencia
alter table consulta 
	modify nr_seq_medico numeric(10) not null auto_increment,
	modify dt_hora_inicio date not null,
	modify dt_hora_fim date not null;
    
#

drop table consulta;
create table consulta (
	nr_sequencia numeric(10) not null,
	nr_seq_paciente numeric(6) not null,
	nr_seq_medico numeric(4) not null,
	dt_hora_inicio date not null,
	dt_hora_fim date not null,
	ds_observacao varchar(1000),
	primary key (nr_sequencia),
    constraint consulta_paciente_fk foreign key (nr_seq_paciente) 
    references paciente(nr_sequencia)
);

select * from consulta;


insert into paciente ( nr_sequencia, nm_paciente, cpf_paciente, fone_paciente) 
	values (2, 'Marcio Junior Silva', '16834865102', '(47)89899999');
    
