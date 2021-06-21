-- Criar Banco de Dados
create database db_quitanda;
-- Criar Tabela

use db_quitanda;
create table tb_produtos(
id bigint auto_increment,
nome varchar(200) not null,
preco decimal(2) not null,
primary key (id)
);

insert into tb_produtos(nome, preco) values("Maçã", 5.00);

select * from tb_produtos;
select nome from tb_produtos;
select * from tb_produtos where preco >= 6.00;
select * from tb_produtos where nome = "maça";

insert into tb_produtos(nome, preco) values("Banana", 3.00);
insert into tb_produtos(nome, preco) values("Batata", 4.50);
insert into tb_produtos(nome, preco) values("Cheiro Verde", 2.50);
insert into tb_produtos(nome, preco) values("Morango", 8.00);


alter table tb_produtos modify preco decimal(5,2);

update tb_produtos set preco = 4.50 where id = 2;usuariousuario
update tb_produtos set preco = 2.50 where id = 3;
update tb_produtos set preco = 7.50 where id = 4;

alter table tb_produtos add descricao varchar(255);
alter table tb_produtos add teste varchar(255);
alter table tb_produtos drop teste;


update tb_produtos set descricao = "Vermelha/Fruta" where id = 1;
update tb_produtos set descricao = "Amarela/Vegetal" where id = 2;
update tb_produtos set descricao = "Verde/Vegetal" where id = 3;
update tb_produtos set descricao = "Amarela/Fruta" where id = 4;
update tb_produtos set nome = "Banana" where id = 4;

delete from tb_produtos where id = 5;
delete from tb_produtos where id = 2;

insert into tb_produtos(nome, preco, descricao) values("Kiwi", 15.00, "Verde/Fruta");

-- caso você esqueça de adicionar a pk na tabela
alter table tb_produtos add primary key (id);