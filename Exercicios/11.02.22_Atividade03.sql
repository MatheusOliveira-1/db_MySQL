create database db_escola;

use db_escola;

create table tb_alunos (
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma varchar (30) not null,
faltas int,
nota decimal (4,2),
primary key (id)
);



insert into tb_alunos (nome, idade, turma, faltas, nota)
values ("João", 7, "1º A", 23, 5);

insert into tb_alunos (nome, idade, turma, faltas, nota)
values ("Joana", 8, "2º B", 3, 6);

insert into tb_alunos (nome, idade, turma, faltas, nota)
values ("Joaquim", 9, "3º C", 2, 7);

insert into tb_alunos (nome, idade, turma, faltas, nota)
values ("Maria", 10, "4º D", 0, 7.5);

insert into tb_alunos (nome, idade, turma, faltas, nota)
values ("Mário", 11, "5º D", 1, 8.25);

insert into tb_alunos (nome, idade, turma, faltas, nota)
values ("Raquel", 12, "6º A", 5, 9);

insert into tb_alunos (nome, idade, turma, faltas, nota)
values ("Carla", 13, "7º B", 8, 9.5);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nota = 7 where id = 1;