create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(200),
descricao varchar(200),
ativo boolean not null,
primary key (id)

);

create table tb_produto (
id bigint auto_increment,
nome varchar(200) not null,
descricao varchar(200),
preco decimal(5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (tipo, descricao, ativo) values("Legumes", "Alimentos vegetais", true);
insert into tb_categoria (tipo, descricao, ativo) values("Frutas citricas", "Frutas acidas", true);
insert into tb_categoria (tipo, descricao, ativo) values("Frutas secas", "Produtos secas p/ receitas", true);
insert into tb_categoria (tipo, descricao, ativo) values("Frutas vermelhas", "Frutas frescas", true);
insert into tb_categoria (tipo, descricao, ativo) values("Hortaliças", "Hortaliças p/ temperos", true);

select * from tb_categoria;

insert into tb_produto (nome, descricao, preco, categoria_id) values ("Batatas", "Batatas, preço o kg", 8.90, 1);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Mandioca", "Mandica, preço o kg", 9.90,  1);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Limão", "Limão, preço o kg", 5.90, 2);
insert into tb_produto (nome, descricao, preco,categoria_id) values ("Laranja", "Laranja, preço o kg", 6.90, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Castanha do Pará", "Castanha do Pará, preço o kg", 26.90, 3);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Melancia", "Melancia, preço a unidade", 5.90, 4);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Cebolinha", "Cebolinha, hortaliça", 2.90, 5);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Coentro", "Coentro, hortaliça", 3.90, 3);

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tipo ="legumes";