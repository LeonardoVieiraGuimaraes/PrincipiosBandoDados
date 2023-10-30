#Cria bando dados
create database vendas;
#Seleciona o bando de dados
use vendas;

drop table cliente;
#Cria a tabela entidade cliente e seus atributos
create table cliente
(
    idCliente int         not null auto_increment,
    nomeCli   varchar(45) not null,
    primary key (idCliente)
);

drop table produto;
#Cria a tabela entidade produtor e seus atributos
create table produto
(
    idProduto int         not null auto_increment,
    descricao varchar(45) not null,
    primary key (idProduto)
);

#Apaga tabela
# drop table cliente;
#
# create table cliente
# (
#     idCliente int         not null auto_increment,
#     nomeCli   varchar(45) not null,
#     primary key (idCliente)
# );

drop table venda;
#Cria a tabela entidade venda e seus atributos
create table venda
(
    idVenda   int  not null auto_increment,
    dtVenda   date not null,
    idCliente int  not null,
    idProduto int  not null,
    primary key (idVenda)
);

alter table venda
    add constraint venda_cliente_fk
        foreign key (idCliente)
            references cliente (idCliente);

alter table venda
    add constraint venda_produto_fk
        foreign key (idProduto)
            references produto (idProduto);

alter table cliente
    add column cpf int(11) null after nomeCli;


alter table cliente
    add constraint
        cliente_cpf_uk
        unique (cpf);

#####################################################################




describe cliente;

select *
from cliente;

alter table cliente
    add dtNascimento date;

alter table cliente
    drop column dtNascimento;

drop database vendas;

insert into cliente(nomeCli, cpf)
values ('Leonardo Vieira Guimarães', 500000);

select *
from cliente;

alter table cliente
    modify cpf numeric(11) not null;

insert into cliente(nomeCli, cpf)
values ('Leonardo Vieira Guimarães', 05889763695);

select *
from cliente;

update cliente
set cpf = 5002001000
where idCliente = 7;

select *
from cliente;

select nomeCli
from cliente
where idCliente is not null;

create index cpf_i on cliente (cpf);

delete
from cliente
where idCliente = 4;

update cliente
set nomeCli = 'Anderson'
where idCliente = 7;

use vendas;

create table nomes
(
    id   int         not null,
    nome varchar(45) not null,
    primary key (id)
);

create index idx_nomes_id on nomes (id);

insert into nomes(id, nome)
values (2, 'Leonardo');

select *
from nomes;

insert into nomes(id, nome)
values (7, 'Leonardo'),
       (3, 'Anderson'),
       (4, 'Angelica'),
       (5, 'Julio'),
       (6, 'Felipe');

select *
from nomes;

create table cidades
(
    id   int         not null,
    nome varchar(45) not null,
    primary key (id)
);

insert into cidades (id, nome)
values (1, 'São Francisco'),
       (2, 'Montes Claros');

alter table cidades
    change column id id int not null auto_increment;

insert into cidades (nome)
values ('São Francisco'),
       ('Montes Claros');


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
 