create database db_ecommerce;
use db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
nome varchar(200),
categoria varchar(200),
posicao_estoque varchar(200),
qtd bigint,
valor decimal(5,2),
primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(nome, categoria, posicao_estoque, qtd, valor) values("Tapete Yoga", "Fitness", "gv010103", 160, 59.99);

select * from tb_produtos where valor > 500.00;
select * from tb_produtos where valor < 500.00;

update tb_produtos set qtd = 114 where id= 2;
update tb_produtos set qtd = 96 where id= 3;
