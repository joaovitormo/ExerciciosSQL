create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
tipo varchar(200),
descricao varchar(200),
ativo boolean not null,
primary key (id)

);

create table tb_personagem (
id bigint auto_increment,
nome varchar(200) not null,
descricao varchar(200),
poder_ataque bigint not null,
poder_defesa bigint not null,
lvl bigint not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) REFERENCES tb_classe (id)
);

insert into tb_classe (tipo, descricao, ativo) values("Arqueiro", "Usa arco e flecha", 1);
insert into tb_classe (tipo, descricao, ativo) values("Guerreiro", "Usa arco e flecha", 1);
insert into tb_classe (tipo, descricao, ativo) values("Lutador", "Usa os proprios punhos", 1);
insert into tb_classe (tipo, descricao, ativo) values("Mago", "Usa magias para atacar", 1);
insert into tb_classe (tipo, descricao, ativo) values("Atirador", "Usa uma arma de fogo", 1);

select * from tb_classe;

insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Mike", "Forte lutador", 8520, 7562, 65, 3);
insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Rick", "Bravo atirador", 5520, 4562, 42, 5);
insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Daryl", "Arqueiro experiente", 8520, 8262, 71, 1);
insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Sr White", "Grande quimico", 6520, 3562, 52, 4);
insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Jesse", "Bom lutador", 2560, 4562, 19, 3);
insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Saul", "Mago das palavras", 990, 99999, 23, 5);
insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Josh", "Guerreio lendário", 6520, 6962, 56, 2);
insert into tb_personagem (nome, descricao, poder_ataque, poder_defesa, lvl, classe_id) values("Ty", "Bravo guerreiro", 5520, 4562, 41, 2);

select * from tb_personagem;

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_ataque between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.descricao, tb_personagem.poder_ataque, tb_personagem.poder_defesa, tb_personagem.lvl, tb_classe.tipo, tb_classe.ativo from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;  

select tb_personagem.nome, tb_personagem.descricao, tb_personagem.poder_ataque, tb_personagem.poder_defesa, tb_personagem.lvl, tb_classe.tipo, tb_classe.ativo from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where classe_id = 4;  
