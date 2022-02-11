create database db_rh;

use db_rh;

create table tb_funcionaries (
id bigint not null,
nome varchar(255) not null,
cpf bigint not null,
cargo varchar(255) not null,
setor varchar (255) not null,
salario decimal (8,2),
primary key (id)
);

insert into tb_funcionaries (nome, cpf, cargo, setor, salario)
values ("Matheus Oliveira",	12345678910, "Dev Java Junior", "TI", 3000.00);

insert into tb_funcionaries (nome, cpf, cargo, setor, salario)
values ("Luna Ribeiro",	98765432190, "Dev Java Pleno", "TI", 5795.00);

insert into tb_funcionaries (nome, cpf, cargo, setor, salario)
values ("Mariana Neves", 15926348780, "Dev Java Senior", "TI", 10622.00);

insert into tb_funcionaries (nome, cpf, cargo, setor, salario)
values ("Aurora Master", 48715926370, "Gestora de Projetos", "TI", 13500.00);

insert into tb_funcionaries (nome, cpf, cargo, setor, salario)
values ("Pedro Rodrigues", 12435768960, "Scrum Master", "TI", 9780.00);

select * from tb_funcionaries where salario > 2000;

select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set salario = 1999.99 where id = 1;