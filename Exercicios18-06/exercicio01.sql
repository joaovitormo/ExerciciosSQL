create database db_rh;
use db_rh;

create table tb_func(
id bigint auto_increment,
nome varchar(200),
funcao varchar(200),
data_nascimento date,
data_admissao date,
tel bigint,
primary key(id)

);

select * from tb_func;

insert into tb_func(nome, funcao, data_nascimento, data_admissao, tel) values("João", "Dev Java", '2001-04-17', '2001-04-17', 11983724370);
insert into tb_func(nome, funcao, data_nascimento, data_admissao, tel) values("Lucas", "Dev Java", '1985-09-22', '2007-12-02', 119577545640);

alter table tb_func add salario decimal(5,2);
alter table tb_func modify salario decimal(5,3);
update tb_func set salario = 1.980 where id = 1;

select * from tb_func where salario > 2.000;
select * from tb_func where salario < 2.000;

update tb_func set data_nascimento = '2001/04/17' where id = 1;
update tb_func set data_admissao = '2020/08/06' where id = 1;