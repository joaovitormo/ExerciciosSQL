create database db_farmacia_do_bem;
use db_farmacia_do_bem;

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
controlado boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (tipo, descricao, ativo) values("cosméticos", "Produtos de beleza", true);
insert into tb_categoria (tipo, descricao, ativo) values("Remedios para ansiedade", "Remedios para diminuição da ansiedade", true);
insert into tb_categoria (tipo, descricao, ativo) values("Higiene Pessoal", "Produtos p/ higiene pessoal", true);
insert into tb_categoria (tipo, descricao, ativo) values("Dor muscular", "Remedios para dores musculares", true);
insert into tb_categoria (tipo, descricao, ativo) values("Dor de cabeça", "Remedios para dores de cabeça", true);

select * from tb_categoria;

insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Dorflex", "Para dores musculares", 8.90, false, 4);
insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Dipirona", "Dores em geral", 9.90, false, 5);
insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Batom vermelho", "Batom vermelho matte", 15.90, false, 1);
insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Base", "Base liquida", 26.90, false, 1);
insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Lapis", "Lapis para maquiagem", 6.90, false, 1);
insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Desodorante", "Antitranspirante Rexona", 15.90, false, 3);
insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Desodorante", "Antitranspirante Rexona", 26.90, false, 3);
insert into tb_produto (nome, descricao, preco, controlado, categoria_id) values ("Pomada Hipoglos", "Pomada anti queimadura", 9.90, false, 3);

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%b%";

select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_produto.controlado, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_produto.controlado, tb_categoria.tipo, tb_categoria.descricao, tb_categoria.ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tipo ="cosmeticos";