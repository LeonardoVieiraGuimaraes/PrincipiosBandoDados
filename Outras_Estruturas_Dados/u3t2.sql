create table nomes(
    id int not null,
    nome varchar(45) not null,
    primary key(id)
);

create index idx_nomes_id on nomes(id);

insert into nomes(id, nome) values (1, 'Ana');

select * from nomes;

insert into nomes(id, nome) values (2, 'João');



create table cidades
(
    id   int         not null,
    nome varchar(45) not null,
    primary key (id)
);

insert into cidades (id, nome) values (1, 'São Francisco'), (2, 'Montes Claros');

select * from cidades;

alter table cidades
    change column id id int not null auto_increment;

insert into cidades (nome) values ('São Francisco'), ('Montes Claros');


select *
from cidades;

create table cidades_estado
(
    id     int         not null auto_increment,
    cidade varchar(45) not null,
    estado varchar(45) not null,
    primary key (id)
);

insert into cidades_estado (cidade, estado)
values ('Gramado', 'RS'),
       ('Niteroi', 'RJ'),
       ('Blumenau', 'SC'),
       ('São Paulo', 'SP');

select *
from cidades_estado;

create view vw_cidades_mg
as
select cidade
from cidades_estado
where estado = 'MG';

create view vw_cidades_sc
as
select cidade
from cidades_estado
where estado = 'SC';

select * from vw_cidades_mg;

# select cidade from vw_cidades;

select cidade from vw_cidades_mg
order by cidade asc;

# create table Dados_Livro
# select NomeLivr
