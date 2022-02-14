create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255) not null,
preco decimal (8,2),
quantidade int,
cor varchar(30),
primary key(id)
);

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("Galaxy S3000","Samsung", 30000.00, 6, "Roxo-florescente");

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("L4703","Lenovo", 2500.00, 12, "Prata");

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("A226", "Acer", 2125.00, 15, "Preto");

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("Cabo USB-C","Nokia", 120.00, 203, "Preto");

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("Cabo USB-C","Xiaomi", 85.00, 540, "Branco");

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("Playstation 6","Sony", 12558.00, 2, "Branco");

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("XBOX - ZXZ ","Microsoft", 12557.99, 3, "Preto");

insert into tb_produtos (nome, marca, preco, quantidade, cor)
values ("Power Bank Z954156","LG", 220.00, 14, "Roxo-florescente");

select * from tb_produtos where preco > 500;


select * from tb_produtos; where preco < 500;

update tb_produtos set cor = "Cinza" where id = 2;