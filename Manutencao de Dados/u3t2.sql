use vendas;

insert into cliente (nomeCli, cpf) values ('João', '12345678901');
insert into cliente (nomeCli, cpf) values ('Maria', '12345678902');

select * from cliente;

insert into produto (descricao) values ('Coca-Cola');
insert into produto (descricao) values ('Pepsi');
insert into produto (descricao) values ('bermuda');
insert into produto (descricao) values ('camisa');
insert into produto (descricao) values ('saia');

select * from produto;

update produto set descricao = 'camisa plo' where idProduto=1;

select descricao from produto;

insert into venda (dtVenda, idCliente, idProduto) values ('2020-07-20', 2, 1);
insert into venda (dtVenda, idCliente, idProduto) values ('2020-07-22', 1, 3);
insert into venda (dtVenda, idCliente, idProduto) values ('2020-07-20', 2, 3);

select * from venda;

select * from venda where dtVenda = '2020-07-20';

select idCliente from venda where dtVenda = '2020-07-20';