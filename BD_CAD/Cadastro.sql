DROP database IF EXISTS CADASTRO
USE CAD
CREATE DATABASE CADASTRO
USE CADASTRO
CREATE TABLE login(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Ra VARCHAR(20),
    Senha VARCHAR(15),
    NivelAcesso int,
    DataCadastro Datetime,
    DataAtualizacao Datetime
)
ALTER TABLE login ADD CONSTRAINT FK_idL FOREIGN KEY (Id) REFERENCES  login (Id)
CREATE TABLE usuario (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Nome varchar(50) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  Ranking int,
  Grupos varchar(100)
);
//ALTER TABLE usuario ADD CONSTRAINT FK_idU FOREIGN KEY (Id) REFERENCES  login (Id);
CREATE TABLE publicacao (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Grupo varchar(100) DEFAULT NULL,
  Titulo varchar(100) NOT NULL,
  Corpo varchar(400),
  Imagem varchar(1000) DEFAULT NULL,
  DataPost DATETIME NOT NULL
);
//ALTER TABLE publicacao ADD CONSTRAINT FK_idP FOREIGN KEY (Id) REFERENCES login(Id);

INSERT INTO Login VALUES (default,'GU3015131','senha',1,default,default)
SELECT Id, RA, Senha from login
INSERT INTO usuario VALUES (default,'Ana','Ana@gmai.com',57,'DWEB1')
SELECT * from usuario
INSERT INTO publicacao VALUES (default,'DWEB1','POST1','Como a vida é bela',default, default)
SELECT * from publicacao

