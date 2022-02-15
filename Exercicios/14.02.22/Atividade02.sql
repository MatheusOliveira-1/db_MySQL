create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_categoria (
id bigint auto_increment,
tipoPizza varchar (255) not null,
tipoMassa varchar (255) not null,
bordaRecheada boolean not null,
primary key (id)
);



create table tb_pizza (
id int auto_increment,
nome varchar (255),
ingredientes varchar (255),
valor decimal (6,2),
minutosPreparo int,
brinde varchar (255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (tipoPizza, tipoMassa, bordaRecheada)
values ("Doce", "Folhada", false);
insert into tb_categoria (tipoPizza, tipoMassa, bordaRecheada)
values ("Salgada", "Comum", true);
insert into tb_categoria (tipoPizza, tipoMassa, bordaRecheada)
values ("Broto", "Comum", false);
insert into tb_categoria (tipoPizza, tipoMassa, bordaRecheada)
values ("Salgada Especial", "Folhada", true);
insert into tb_categoria (tipoPizza, tipoMassa, bordaRecheada)
values ("Doce Especial", "Folhada", true);

insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("Muçarela", "Queijo muçarela e rodelas de tomate",34.99, 10, "Sem brinde", 2);
insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("Flambada", "Banana, chocolate branco, catupiry e canela", 42.99, 20, "Refrigerante 2L", 1);
insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("Calabresa", "Calabresa fatiada e rodelas de cebola", 22.99, 15, "Sem brinde", 3);
insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("A moda do cliente", "Cinco ingredientes escolhidos pelo cliente", 61.99, 30, "Refrigerante 3L", 4);
insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("Nutella", "Nutella coberta de M&Ms", 72.99, 20, "Refrigerante 3L", 5);
insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("Calabresa", "Calabresa fatiada e rodelas de cebola", 34.99, 15, "Sem brinde", 2);
insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("Milho", "Milho com queijo muçarela ou catupiry", 34.99, 10, "Sem brinde", 2);
insert into tb_pizza (nome, ingredientes, valor, minutosPreparo, brinde, categoria_id)
values ("Marguerita", "Queijo muçarela com manjericão e rodelas de tomate", 34.99, 10, "Sem brinde", 2);

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 45;

select * from tb_pizza where nome like "%c%";

select nome as Sabor, ingredientes, valor, minutosPreparo, brinde, tipoPizza, tipoMassa, bordaRecheada from
tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
order by tb_categoria.id asc;

select nome as Sabor, ingredientes, valor, minutosPreparo, brinde, tipoPizza, tipoMassa, bordaRecheada from
tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.id = 2
order by tb_categoria.id asc;




