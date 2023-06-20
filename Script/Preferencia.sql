USE CAD

CREATE TABLE Preferencia(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Preferencia1 int,
    Preferencia2 int,
    Preferencia3 int,
    Preferencia4 int,
    Preferencia5 int,
    DataCadastro Datetime,
    DataAtualizacao Datetime,
	Id_Usuario UNIQUEIDENTIFIER
)

--FK Preferencia
ALTER TABLE Preferencia ADD 
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id)

CREATE TABLE Tag(
    Id int PRIMARY KEY NOT NULL,
    Nome VARCHAR(100),
	MatriculaUsuario VARCHAR(100),
    DataCadastro Datetime,
    DataAtualizacao Datetime
)

INSERT INTO Tag VALUES (1,'Banco de Dados', 'GU3017141', GETDATE(), GETDATE())
INSERT INTO Tag VALUES (2,'Linguagem de Programação', 'GU3017141', GETDATE(), GETDATE()) 
INSERT INTO Tag VALUES (3,'Engenharia de Sofware', 'GU3017141', GETDATE(), GETDATE()) 
INSERT INTO Tag VALUES (4,'Redes', 'GU3017141', GETDATE(), GETDATE()) 
INSERT INTO Tag VALUES (5,'Segurança da Informação', 'GU3017141', GETDATE(), GETDATE()) 
INSERT INTO Tag VALUES (6,'TCC', 'GU3017141', GETDATE(), GETDATE()) 
INSERT INTO Tag VALUES (7,'PHP', 'GU3017141', GETDATE(), GETDATE()) 
INSERT INTO Tag VALUES (8,'Java', 'GU3017141', GETDATE(), GETDATE()) 
INSERT INTO Tag VALUES (9,'C', 'GU3017141', GETDATE(), GETDATE())


--ADD Coluna Preferncia Table Publicacao
ALTER TABLE Publicacao ADD 
Preferencia int