select * from tb_produtos;

-- seleção usando %

select * from tb_produtos where nome like "a%";
select * from tb_produtos where nome like "%u%";
select * from tb_produtos where nome like "%na";
select nome, quantidade from tb_produtos where nome like "a%" and nome like "%l%";
select nome, quantidade from tb_produtos where nome like "a%" or nome like "%l%";

-- contar registros

select count(id) from tb_produtos;

-- somar valores de uma coluna

select sum(preco) as valorTotal from tb_produtos;

-- alterar nomes dos atributos

select nome as produto;

-- media de valores

select avg(preco) from tb_produtos;

-- valor mínimo de uma coluna

select min(preco) from tb_produtos;

-- valor máximo de uma coluna

select nome, max(preco) from tb_produtos;

-- relacionamento entre tabelas 

select tb_produtos.id, nome, quantidade, preco, descricao from 
tb_produtos left join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from 
tb_produtos right join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from 
tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id 
order by tb_produtos.id asc;

select * from 
tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id 
order by tb_produtos.id desc;

select tb_produtos.id, nome, quantidade, preco, descricao from 
tb_produtos full outer join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;



