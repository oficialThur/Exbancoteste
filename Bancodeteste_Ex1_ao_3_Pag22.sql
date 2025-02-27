create database bancodeteste;

use bancodeteste;

create table Pessoa(
id_Pessoa int unsigned not null auto_increment primary Key,
nome varchar(200),
telefone varchar(13),
endereço varchar(200),
bairro varchar(200),
cidade varchar(200),
id_estado int not null,
cep int
) engine = InnoDB; 

create table Carro(
id_Carro int unsigned not null auto_increment primary Key,
marca varchar(200),
modelo varchar(200),
cor varchar(200),
placa varchar(200),
chassi varchar(200)
)engine = InnoDB;

ALTER TABLE Carro
ADD COLUMN id_Pessoa INT UNSIGNED;

ALTER TABLE Carro
ADD CONSTRAINT fk_Carro_Pessoa FOREIGN KEY (id_Pessoa) REFERENCES Pessoa(id_Pessoa);
