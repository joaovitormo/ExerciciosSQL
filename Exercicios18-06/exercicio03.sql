create database db_escola;
use db_escola;

create table tb_alunos (
id bigint auto_increment,
nome varchar(200),
data_nascimento date,
turma varchar(4),
media_nota decimal(3,2),
primary key(id)
);

insert into tb_alunos(nome, data_nascimento, turma, media_nota) values("Marcos", '2005-05-06', "2ºB", 4.50);

select * from tb_alunos;

select * from tb_alunos where media_nota > 7;
select * from tb_alunos where media_nota < 7;

update tb_alunos set nome = "João Marcos" where id = 8;
