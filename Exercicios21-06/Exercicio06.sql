create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

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
instrutor varchar(200),
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (tipo, descricao, ativo) values("Java", "Linguagem de programação Java", true);
insert into tb_categoria (tipo, descricao, ativo) values("JavaScript", "Linguagem de programação JavaScript", true);
insert into tb_categoria (tipo, descricao, ativo) values("Python", "Linguagem de programação Python", true);
insert into tb_categoria (tipo, descricao, ativo) values("MySQL", "Banco de dados", true);
insert into tb_categoria (tipo, descricao, ativo) values("PHP", "Linguagem de programação PHP", true);

select * from tb_categoria;

insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("Curso básico de banco de dados", "Iniciando estudos no MySQL", 59.90, 4, "Rafael Queiroz");
insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("Curso básico de Logica de Programação", "Iniciando estudos com Java", 69.90, 1, "Jeff");
insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("Curso básico de JavaScript", "Estudos Iniciais na linguagem", 49.90, 2, "Thiago");
insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("Curso Completo de Python", "Do inicio ao POO", 299.90, 3, "Guanabara");
insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("Curso Completo de MySQL", "Tudo sobre o MySQL", 129.90, 4, "Rafael Queiroz");
insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("Curso Completo de Java", "IDo inicio ao POO em Java", 239.90, 1, "Jeff");
insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("Curso básico de PHP", "Conceitos básicos da linguagem", 89.90, 5, "Rafael Queiroz");
insert into tb_produto (nome, descricao, preco, categoria_id, instrutor) values ("POO em JavaScript", "Programação avançada em JavaScript", 129.90, 2, "Guanabara");

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%j%";

select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_produto.instrutor, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_produto.instrutor, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tipo ="Java";