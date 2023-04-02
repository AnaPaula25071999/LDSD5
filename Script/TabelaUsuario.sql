CREATE TABLE Usuario(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Login VARCHAR(20),
    Nome VARCHAR(100),
	Email VARCHAR(100),
	Perfil int,
    Senha VARCHAR(100),
    DataCadastro Datetime,
    DataAtualizacao Datetime
)

INSERT INTO Usuario VALUES (default,'adm','adm','adm@adm.com', 0,'202CB962AC59075B964B07152D234B70', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Everton','Everton','everton@everton.com', 0,'C99868052FB8A76E4F4B9F2EE67D39FB', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Amanda','Amanda','amanda@amanda.com', 0,'6209804952225AB3D14348307B5A4A27', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Ana Paula','Ana Paula','anapaula@anapaula.com', 0,'276B6C4692E78D4799C12ADA515BC3E4', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Gabriela','Gabriela','gabriela@gabriela.com', 0,'276E697E74E8B5264465139A480DB556', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'Lucas','Lucas','lucas@lucas.com', 0,'DC53FC4F621C80BDC2FA0329A6123708', GETDATE(), GETDATE())



CREATE TABLE Publicacao(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    ConteudoTexto VARCHAR(1000),
    ConteudoImagem VARCHAR(1000),
	Nome VARCHAR(100),
    DataCadastro Datetime,
    DataAtualizacao Datetime
)


