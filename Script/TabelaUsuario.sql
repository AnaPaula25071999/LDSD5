CREATE TABLE Usuario(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Login VARCHAR(20),
    Nome VARCHAR(100),
	Email VARCHAR(100),
	Perfil int,
    Senha VARCHAR(15),
    DataCadastro Datetime,
    DataAtualizacao Datetime
)

INSERT INTO Usuario VALUES (default,'adm','adm','adm@adm.com', 0,'123', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Everton','Everton','everton@everton.com', 0,'123', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Amanda','Amanda','amanda@amanda.com', 0,'123', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Ana Paula','Ana Paula','anapaula@anapaula.com', 0,'123', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Gabriela','Gabriela','gabriela@gabriela.com', 0,'123', GETDATE(), GETDATE())

INSERT INTO Usuario VALUES (default,'Lucas','Lucas','lucas@lucas.com', 0,'123', GETDATE(), GETDATE())



CREATE TABLE Publicacao(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    ConteudoTexto VARCHAR(1000),
    ConteudoImagem VARCHAR(1000),
	Nome VARCHAR(100),
    DataCadastro Datetime,
    DataAtualizacao Datetime
)


INSERT INTO Usuario VALUES (default,'Lucas','Lucas','lucas@lucas.com', 0,'123', GETDATE(), GETDATE())

