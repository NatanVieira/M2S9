-- M2S9 - DevInHouse NDD TECH

-- Exercicio 01

create database Banking;

use Banking;

create table Cliente(
	id int primary key identity(1,1) not null,
	nome_completo varchar(100) not null,
	primeiro_nome varchar(50) not null,
	sobrenome varchar(50) not null,
	cpf varchar(11) not null,
	data_nascimento date not null,
	sexo char(1) not null
);

create table Conta_Categoria(
	id int primary key identity(1,1) not null,
	nome varchar(100) not null
);

create table Conta_Tipo(
	id int primary key identity(1,1) not null,
	nome varchar(100) not null
);

create table Conta_Servicos(
	id int primary key identity(1,1) not null,
	nome varchar(100) not null,
	quantidade int not null default '0',
	taxa decimal(10,4) not null default '0.0',
	categoria_id int not null,
	constraint fk_conta_servico_categoria foreign key(categoria_id) references Conta_Categoria(id)
);

create table Conta(
	id int primary key identity(1,1) not null,
	valor decimal(10,4) not null default '0.0',
	cliente_id int not null,
	tipo_id int not null,
	categoria_id int not null,
	constraint fk_conta_cliente foreign key(cliente_id) references Cliente(id),
	constraint fk_conta_tipo foreign key(tipo_id) references Conta_Tipo(id),
	constraint fk_conta_categoria foreign key(categoria_id) references Conta_Categoria(id)
);

create table Movimento_Tipo(
	id int primary key identity(1,1) not null,
	nome varchar(100) not null
);

create table Movimento_Status(
	id int primary key identity(1,1) not null,
	nome varchar(100) not null
);

create table Movimento(
	id int primary key identity(1,1) not null,
	valor decimal(10,4) not null default '0.0',
	cadastrado_em datetime not null,
	atualizado_em datetime not null,
	tipo_id int not null,
	conta_id int not null,
	status_id int not null,
	constraint fk_movimento_tipo foreign key(tipo_id) references Movimento_Tipo(id),
	constraint fk_movimento_conta foreign key(conta_id) references Conta(id),
	constraint fk_movimento_status foreign key(status_id) references Movimento_Status(id)
);