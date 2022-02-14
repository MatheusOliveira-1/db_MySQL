create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
primary key(id)
);


create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
poderDeAtaque bigint not null,
poderDeDefesa bigint not null,
velocidade bigint not null,
vida bigint not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_classe (nome, descricao)
values ("Warrior","Utiliza armas de curto alcance e escudo");
insert into tb_classe (nome, descricao)
values ("Archer","Utiliza arco e flecha");
insert into tb_classe (nome, descricao)
values ("Mage","Utiliza magia");
insert into tb_classe (nome, descricao)
values ("Orc","Utiliza os mesmos itens que Warrior mas tem mais pontos de ataque e é mais lento");
insert into tb_classe (nome, descricao)
values ("Beast","Utiliza apenas força bruta");

insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Blacker", 1800, 2300, 1200, 1000, 1);
insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Whither", 1800, 1200, 2300, 1000, 2);
insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Bluer", 1575, 1575, 1575, 1575, 3);
insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Greener", 2300, 1800, 1500, 700, 4);
insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Purpler", 3000, 1100, 1200, 1000, 5);
insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Redder", 2500, 1600, 1500, 700, 4);
insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Grayer", 3500, 1000, 1000, 800, 5);
insert into tb_personagem (nome, poderDeAtaque, poderDeDefesa, velocidade, vida, classe_id)
values ("Oranger", 2000, 2000, 300, 2000, 3);

select * from tb_personagem where poderDeAtaque > 2000
order by poderDeDefesa asc;

select * from tb_personagem where poderDeDefesa >= 1000 and poderDeDefesa <= 2000
order by poderDeDefesa asc;

select * from tb_personagem where poderDeDefesa between 1000 and 2000
order by poderDeDefesa asc;

select * from tb_personagem where nome like "%c%";

select * from 
tb_personagem inner join tb_classe
on tb_personagem.classe_id = tb_classe.id
order by tb_personagem.id;

select * from 
tb_personagem inner join tb_classe
on tb_personagem.classe_id = tb_classe.id
where tb_classe.id = 3
order by tb_personagem.id;;











