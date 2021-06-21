create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
sabor varchar(200),
tamanho varchar(200),
borda boolean not null,
primary key (id)

);

create table tb_pizza (
id bigint auto_increment,
nome varchar(200) not null,
descricao varchar(200),
preco decimal(5,2) not null,
salgada boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (sabor, tamanho, borda) values ("Calabresa", "media", 1);
insert into tb_categoria (sabor, tamanho, borda) values ("Chocolate", "grande", 0);
insert into tb_categoria (sabor, tamanho, borda) values ("4 queijos", "pequena", 0);
insert into tb_categoria (sabor, tamanho, borda) values ("Portuguesa", "grande", 1);
insert into tb_categoria (sabor, tamanho, borda) values ("Frango c/ catupiry", "grande", 1);

update tb_categoria set sabor = "Doce" where id = 4;

select * from tb_categoria;

insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza de chocolante", "Chocolate cremoso e morangos", 54.00, 0, 2);
insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza de Calabresa", "Calabresa e cebola", 24.00, 1, 1);
insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza de queijo", "4 queijos, provolone, gorgonzola, queijo branco, parmessão", 39.00, 0, 3);
insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza de frango", "Frango c/ catupiry", 26.00, 0, 1);
insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza de doce de leite", "Doce de leite e borda de chocolate", 56.00, 0, 4);
insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza portuguesa", "Chocolate portuguesa com borda", 44.00, 0, 5);
insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza meia ", "Meia calabresa, meia mozzarela", 29.00, 0, 1);
insert into tb_pizza (nome, descricao, preco, salgada, categoria_id) values("Pizza vegetariana", "de brocolis", 59.00, 0, 3);

update tb_pizza set salgada = true where id =  9;

select * from tb_pizza;


select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 26.00 and 60.00;
select * from tb_pizza where nome like "%c%";

select tb_pizza.nome, tb_pizza.descricao, tb_pizza.preco, tb_pizza.salgada, tb_categoria.sabor, tb_categoria.tamanho, tb_categoria.borda from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select tb_pizza.nome, tb_pizza.descricao, tb_pizza.preco, tb_pizza.salgada, tb_categoria.sabor, tb_categoria.tamanho, tb_categoria.borda from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where salgada = false;