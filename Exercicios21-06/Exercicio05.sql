create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

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


insert into tb_categoria (tipo, descricao, ativo) values("Hidraulica", "Canos, conexões etc", true);
insert into tb_categoria (tipo, descricao, ativo) values("Tintas", "Tintas p/ pinturas variadas", true);
insert into tb_categoria (tipo, descricao, ativo) values("Fios", "Fio p/ instalações elétricas", true);
insert into tb_categoria (tipo, descricao, ativo) values("Elétrica", "Parte elétrica em geral", true);
insert into tb_categoria (tipo, descricao, ativo) values("Outros", "Peças variadas", true);

select * from tb_categoria;

insert into tb_produto (nome, descricao, preco, categoria_id) values ("Cano 3/4", "Cano Krona Agua, barra 6m", 19.90, 1);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Cimento CSN", "Cimento CPII", 29.90,  5);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Fio Sil 1.0mm", "Preço do metro do fio", 3.90, 3);
insert into tb_produto (nome, descricao, preco,categoria_id) values ("Tinta Cor Laranja", "Tinta Lukscolor 20l", 99.90, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Tomada 3 pinos", "Tomada Stella Deck", 6.90, 4);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Interruptor Branco", "Interruptor Alumbra", 8.90, 4);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Cal", "Cal Votoratin", 23.90, 5);
insert into tb_produto (nome, descricao, preco, categoria_id) values ("Curva 3/4", "Curva Amanco", 2.90, 1);

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tipo ="hidraulica";