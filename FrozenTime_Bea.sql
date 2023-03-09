create database FrozenTime;
use FrozenTime;
create table temperatura(
Id_clima int primary key,
Tempo_real datetime
);

alter table temperatura add column temperature float;

create table motoristas(
id_Motorista int primary key auto_increment,
nome varchar(50),
CNH char,
CEPF varchar(15),
Nascimento date
);

alter table motoristas add column tlefone varchar(20);

create table automoveis(
id_veiculo int primary key auto_increment,
placa varchar(7),
modelo varchar(60),
cor varchar(30),
id_produto int,
temperaturaMaxima float,
temperaturaMinima float,
perimetroMetros Varchar(25),
id_fornecedora int,
id_transportadora int,
observação varchar(100)
) auto_increment = 100;

create table medicamentos(
id_produto int primary key auto_increment,
id_fornecedora int,
temperature float,
dtVencimento date,
detalhes varchar(100)
);

create table fornecimento(
id_fornecedora int primary key,
CNPJ varchar(50),
Contato varchar(15)
);

alter table fornecimento add column nome varchar(50);

create table remessa(
id_carga int primary key,
remetente varchar(100),
destinatario varchar(100),
IdAautomovel int,
detalhes varchar(100)
);

create table fornecedoras(
id_fornecedora int primary key,
nome varchar(50),
CNPJ varchar (50),
Endereço varchar(120),
contato varchar(130)
);