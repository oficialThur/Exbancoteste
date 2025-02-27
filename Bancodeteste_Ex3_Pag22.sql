
CREATE DATABASE bancodeteste2;

USE bancodeteste2;

CREATE TABLE Pessoa (
  id_Pessoa INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(200),
  telefone VARCHAR(13),
  endereco VARCHAR(200),
  bairro VARCHAR(200),
  cidade VARCHAR(200),
  id_estado INT NOT NULL,
  cep INT
) ENGINE = InnoDB;

CREATE TABLE Carro (
  id_Carro INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  marca VARCHAR(200),
  modelo VARCHAR(200),
  cor VARCHAR(200),
  placa VARCHAR(200),
  chassi VARCHAR(200),
  id_Pessoa INT UNSIGNED,
  CONSTRAINT fk_Carro_Pessoa FOREIGN KEY (id_Pessoa) REFERENCES Pessoa(id_Pessoa)
) ENGINE = InnoDB;
