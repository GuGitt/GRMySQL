create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id int AUTO_INCREMENT,
    nome varchar (10),
    raca varchar (20),
    arma varchar (20),
    primary key (id)
	
);
create table tb_personagem(
	personagem_id int auto_increment,
    nome varchar(20)not null,
    sexo varchar(30)not null,
    atributos varchar (30),
    classe_id int not null,
    defesa int,
    ataque int,
    foreign key (classe_id) references tb_classe(id),
    primary key (personagem_id)
);


insert into tb_classe (nome, raca, arma) values ("Atirador", "elfo", "torreta");
insert into tb_classe (nome, raca, arma) values ("Mago", "Anão", "Cajado");
insert into tb_classe (nome, raca, arma) values("Tank", "Ogro", "Escudo");
insert into tb_classe (nome, raca, arma) values("Assassino", "ladino", "Adaga");
insert into tb_classe (nome, raca, arma) values("Lutador", "Minotauro", "Soco inglês");

insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("taybalau", "feminino", "Int++", 1 , 3500,1340);
insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("Godo", "Masculino", "int ++", 3, 2100, 4320);
insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("Puya", "Outros", "Natu++", 1 ,2570, 1420);
insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("Luis", "Masculino", "Int 5+", 4,2300, 3500);
insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("Jacque", "feminino", "Sup Dest, Int++ ", 2, 3300, 2000);
insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("Rafael", "Mago", "Int++", 2, 3000, 1400);
insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("Yasmin", "feminino", "Sup For", 2, 3743, 1270);
insert into tb_personagem (nome, sexo, atributos, classe_id, ataque, defesa) values ("Sir Arthur", "Masculino", "Int ++ ", 3, 3040, 2161);

select nome, atributos, ataque  from tb_personagem where ataque> 2000;

select nome, atributos, defesa from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like"%c%";

select *from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_personagem.classe_id= 2 ;
