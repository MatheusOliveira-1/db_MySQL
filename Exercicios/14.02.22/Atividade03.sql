create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id int auto_increment,
tipo varchar (255) not null,
exigeReceita boolean not null,
origemFabricacao varchar (255) not null,
primary key (id)
);

create table tb_produto (
id int auto_increment,
nome varchar (255) not null,
valor decimal (8,2) not null,
quantidade int,
unidadeMedida varchar (255),
validade date not null,
categoria_id int,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (tipo, exigeReceita, origemFabricacao)
values ("Medicamento", true, "Nacional");
insert into tb_categoria (tipo, exigeReceita, origemFabricacao)
values ("Suplemento", false, "Importado");
insert into tb_categoria (tipo, exigeReceita, origemFabricacao)
values ("Cosmético", false,"Nacional");

insert into tb_produto (nome, valor, quantidade, unidadeMedida, validade, categoria_id)
values ("Tramadol",35.63, 15, "ml", "2022-04-08",1);
insert into tb_produto (nome, valor, quantidade, unidadeMedida, validade, categoria_id)
values ("Whey Protein",289.90, 1.8, "kg", "2022-03-07",2);
insert into tb_produto (nome, valor, quantidade, unidadeMedida, validade, categoria_id)
values ("Esmalte branco",3.22, 8, "ml", "2050-01-01",3);
insert into tb_produto (nome, valor, quantidade, unidadeMedida, validade, categoria_id)
values ("Esmalte vermelho",3.25, 8, "ml", "2055-01-01",3);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%b%";

select nome, valor, quantidade, unidadeMedida, validade, tipo, exigeReceita, origemFabricacao
from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
order by tb_categoria.id;

select * from tb_produto where categoria_id = 3; 

