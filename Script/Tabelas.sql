CREATE DATABASE CAD

USE CAD

CREATE TABLE Usuario(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Matricula VARCHAR(20),
	Email VARCHAR(255),
	Nome VARCHAR(255),
	Perfil int,
    Senha VARCHAR(100),
    DataCadastro Datetime,
    DataAtualizacao Datetime
);

CREATE TABLE Publicacao(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Conteudo VARCHAR(1000),
	Titulo VARCHAR(100),
    Imagem VARCHAR(1000),
	Video VARCHAR(100),	
	Curtida INT,
    DataCadastro Datetime,
    DataAtualizacao Datetime,
	Id_Usuario UNIQUEIDENTIFIER,
	Id_Disciplina UNIQUEIDENTIFIER,
	Id_Professor UNIQUEIDENTIFIER
);

CREATE TABLE Comentario (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Conteudo VARCHAR(255),
  Curtida INT,
  DataCadastro Datetime,
  DataAtualizacao Datetime,
  Id_Usuario UNIQUEIDENTIFIER,
  Id_Publicacao UNIQUEIDENTIFIER
);

CREATE TABLE Disciplina (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Nome VARCHAR(255),
  DataCadastro Datetime,
  DataAtualizacao Datetime,
)

CREATE TABLE Professor (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Nome VARCHAR(255),
  DataCadastro Datetime,
  DataAtualizacao Datetime,
)

--FK Publicacao
ALTER TABLE Publicacao ADD 
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id),
FOREIGN KEY (Id_Disciplina) REFERENCES Disciplina(Id),
FOREIGN KEY (Id_Professor) REFERENCES Professor(Id)

--FK Comentario
ALTER TABLE Comentario ADD 
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id),
FOREIGN KEY (Id_Publicacao) REFERENCES Publicacao(Id)


INSERT INTO Usuario VALUES (default,'adm','adm@adm.com','adm', 0,'202CB962AC59075B964B07152D234B70', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Everton','everton@everton.com','Everton', 0,'C99868052FB8A76E4F4B9F2EE67D39FB', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Amanda','amanda@amanda.com','Amanda', 0,'6209804952225AB3D14348307B5A4A27', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Ana Paula','anapaula@anapaula.com','Ana Paula', 0,'276B6C4692E78D4799C12ADA515BC3E4', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Gabriela','gabriela@gabriela.com','Gabriela', 0,'276E697E74E8B5264465139A480DB556', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Lucas','lucas@lucas.com','Lucas', 0,'DC53FC4F621C80BDC2FA0329A6123708', GETDATE(), GETDATE())



INSERT INTO Disciplina VALUES (default,'GNE - Gestão de Negócios', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES (default,'IHC - Interação Humano-Computador', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES (default,'LDS - Laboratório de Desenvolvimento de Sistemas', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES (default,'MPC - Metodologia de Pesquisa Científica e Tecnológica', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES (default,'PI1 - Projeto Integrado I', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES (default,'SSI - Segurança da Informação', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES (default,'PE1 - Tópicos Especiais I', GETDATE(), GETDATE())


INSERT INTO Professor VALUES (default,'Rogerio Homem da Costa',GETDATE(), GETDATE())
INSERT INTO Professor VALUES (default,'Thiago Schumacher Bascelos',GETDATE(), GETDATE())
INSERT INTO Professor VALUES (default,'Giovani Fonseca Ravagnani Disperati',GETDATE(), GETDATE())
INSERT INTO Professor VALUES (default,'Cristiano Alves Pessoa',GETDATE(), GETDATE())
INSERT INTO Professor VALUES (default,'Cristiano Alves Pessoa',GETDATE(), GETDATE())
INSERT INTO Professor VALUES (default,'Rodrigo Campos Bartoletto',GETDATE(), GETDATE())
INSERT INTO Professor VALUES (default,'Reginaldo Do Prado',GETDATE(), GETDATE())