-- M2S9 - DevInHouse NDD TECH

-- Exercicio 01

--create database Banking;

use Banking;

--create table Cliente(
--	id int primary key identity(1,1) not null,
--	nome_completo varchar(100) not null,
--	primeiro_nome varchar(50) not null,
--	sobrenome varchar(50) not null,
--	cpf varchar(11) not null,
--	data_nascimento date not null,
--	sexo char(1) not null
--);

--create table Conta_Categoria(
--	id int primary key identity(1,1) not null,
--	nome varchar(100) not null
--);

--create table Conta_Tipo(
--	id int primary key identity(1,1) not null,
--	nome varchar(100) not null
--);

--create table Conta_Servicos(
--	id int primary key identity(1,1) not null,
--	nome varchar(100) not null,
--	quantidade int not null default '0',
--	taxa decimal(10,4) not null default '0.0',
--	categoria_id int not null,
--	constraint fk_conta_servico_categoria foreign key(categoria_id) references Conta_Categoria(id)
--);

--create table Conta(
--	id int primary key identity(1,1) not null,
--	valor decimal(10,4) not null default '0.0',
--	cliente_id int not null,
--	tipo_id int not null,
--	categoria_id int not null,
--	constraint fk_conta_cliente foreign key(cliente_id) references Cliente(id),
--	constraint fk_conta_tipo foreign key(tipo_id) references Conta_Tipo(id),
--	constraint fk_conta_categoria foreign key(categoria_id) references Conta_Categoria(id)
--);

--create table Movimento_Tipo(
--	id int primary key identity(1,1) not null,
--	nome varchar(100) not null
--);

--create table Movimento_Status(
--	id int primary key identity(1,1) not null,
--	nome varchar(100) not null
--);

--create table Movimento(
--	id int primary key identity(1,1) not null,
--	valor decimal(10,4) not null default '0.0',
--	cadastrado_em datetime not null,
--	atualizado_em datetime not null,
--	tipo_id int not null,
--	conta_id int not null,
--	status_id int not null,
--	constraint fk_movimento_tipo foreign key(tipo_id) references Movimento_Tipo(id),
--	constraint fk_movimento_conta foreign key(conta_id) references Conta(id),
--	constraint fk_movimento_status foreign key(status_id) references Movimento_Status(id)
--);

-- Exercicio 02

--insert into Cliente (nome_completo,primeiro_nome,sobrenome,cpf,data_nascimento,sexo)
--values ('Paulo César','Paulo','César','12345678901','1969-01-01','M'),
--	   ('Thomaz Santos','Thomaz','Santos','12345678902','1972-02-02','M'),
--	   ('Aurora Boreau','Aurora','Boreau','12345678903','1995-03-03','F'),
--	   ('Alessandro Almeira','Alessandro','Almeida','12345678904','2000-04-04','M'),
--	   ('Patricia Albuquerque','Patricia','Albuquerque','12345678905','1988-05-05','F'),
--	   ('Juliana Padro','Juliana','Prado','12345678906','1991-06-06','F'),
--	   ('Ricardo Lopes','Ricardo','Lopes','12345678907','1985-07-07','M'),
--	   ('Joana Davila','Joana','Davila','12345678908','1997-08-08','F'),
--	   ('João Pacheco','João','Pacheco','12345678909','2001-09-09','M'),
--	   ('Carla Miranda','Carla','Miranda','12345678900','1994-10-10','F');

--insert into Conta_Categoria (nome)
--values ('premium'),
--       ('ouro'),
--	   ('plantinum'),
--	   ('prime');

--insert into Conta_Servicos (nome, quantidade,taxa,categoria_id)
--values ('CS1',1,0.2,1),
--	   ('CS2',2,0.5,2),
--	   ('CS3',3,0.0,3),
--	   ('CS4',4,0.0,4);

--insert into Conta_Tipo (nome)
--values ('conta-salario'),
--       ('conta-corrente'),
--	   ('conta-poupança');

--insert into Conta (valor,cliente_id,tipo_id,categoria_id)
--values (1000,1,1,4),
--	   (2000,2,2,3),
--	   (3000,3,3,2),
--	   (4000,4,3,1),
--	   (5000,5,2,1),
--	   (6000,6,1,2),
--	   (7000,7,1,3),
--	   (8000,8,2,4),
--	   (9000,9,3,4),
--	   (10000,10,3,3);

--insert into Movimento_Tipo (nome)
--values ('saque'),
--	   ('deposito'),
--	   ('emprestimo');

--insert into Movimento_Status (nome)
--values ('sucesso'),
--       ('falha'),
--	   ('pendente');

--insert into Movimento (valor, cadastrado_em, atualizado_em, tipo_id, conta_id,status_id)
--values (100,'2022-01-01 10:43:00','2022-01-01 10:43:01',1,5,1),
--       (200,'2022-01-01 10:44:00','2022-01-01 10:44:01',2,6,2),
--	   (300,'2022-01-01 10:45:00','2022-01-01 10:45:01',3,7,3),
--	   (400,'2022-01-01 10:46:00','2022-01-01 10:46:01',3,8,3),
--	   (500,'2022-01-01 10:47:00','2022-01-01 10:47:01',2,9,2),
--	   (600,'2022-01-01 10:48:00','2022-01-01 10:48:01',1,10,1),
--	   (700,'2022-01-01 10:49:00','2022-01-01 10:49:01',1,11,1),
--	   (800,'2022-01-01 10:40:00','2022-01-01 10:40:01',2,12,2),
--	   (900,'2022-01-01 10:41:00','2022-01-01 10:41:01',3,13,3),
--	   (1000,'2022-01-01 10:42:00','2022-01-01 10:42:01',3,14,3);

---- Exercicio 03

--select Conta.id, Conta.valor, Cliente.nome_completo, Cliente.cpf from Conta 
--inner join Cliente on Cliente.id = Conta.cliente_id
--order by Conta.valor;

---- Exercicio 04

--select top 1 nome_completo, data_nascimento, datediff(year, data_nascimento, convert(date,getdate())) from Cliente
--order by data_nascimento;

-- Exercicio 05

--select count(*) from Conta where Conta.tipo_id = 1;

-- Exercicio 06

--select count(distinct cliente_id) from Conta where categoria_id = 2;

-- Exercicio 07
-- como não havia cadastrado categoria diamante utilizarei a categoria platinum
-- não há relacionamento entre conta e conta serviço - Coloquei em Blocked

-- Exercicio 08
select count(*) from Movimento where Movimento.status_id = 2;
