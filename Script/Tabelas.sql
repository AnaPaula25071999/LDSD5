CREATE DATABASE CAD

USE CAD

CREATE TABLE Usuario(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Matricula VARCHAR(20),
	Email VARCHAR(255),
	Nome VARCHAR(255),
	Perfil int,
    Senha VARCHAR(100),
	Foto VARCHAR(1000),
	Biografia VARCHAR(1000),
	Celular int,
	Genero VARCHAR(50),
	Curso VARCHAR(150),
    DataCadastro Datetime,
    DataAtualizacao Datetime
)

CREATE TABLE Publicacao(
    Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
    Conteudo VARCHAR(1000),
	Titulo VARCHAR(1000),
    Imagem VARCHAR(1000),
	Video VARCHAR(1000),	
    DataCadastro Datetime,
    DataAtualizacao Datetime,
	Id_Usuario UNIQUEIDENTIFIER,
	Id_Disciplina_Professor UNIQUEIDENTIFIER
)

CREATE TABLE Comentario (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Conteudo VARCHAR(1000),
  DataCadastro Datetime,
  DataAtualizacao Datetime,
  Id_Usuario UNIQUEIDENTIFIER,
  Id_Publicacao UNIQUEIDENTIFIER
)

CREATE TABLE Disciplina (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Nome VARCHAR(255),
  DataCadastro Datetime,
  DataAtualizacao Datetime
)

CREATE TABLE Professor (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Nome VARCHAR(255),
  DataCadastro Datetime,
  DataAtualizacao Datetime
)


CREATE TABLE Curtida (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  DataCadastro Datetime,
  DataAtualizacao Datetime,
  Id_Usuario UNIQUEIDENTIFIER,
  Id_Publicacao UNIQUEIDENTIFIER
)

CREATE TABLE DisciplinaProfessor (
  Id UNIQUEIDENTIFIER  PRIMARY KEY DEFAULT NEWID() NOT NULL,
  Id_Disciplina UNIQUEIDENTIFIER,
  Id_Professor UNIQUEIDENTIFIER,
  DiaAula VARCHAR(50),
  HorarioInicioAula VARCHAR(20),
  HorarioFimAula VARCHAR(20),
  DataCadastro Datetime,
  DataAtualizacao Datetime
)



--FK Publicacao
ALTER TABLE Publicacao ADD 
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id),
FOREIGN KEY (Id_Disciplina_Professor) REFERENCES DisciplinaProfessor(Id)

--FK Comentario
ALTER TABLE Comentario ADD 
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id),
FOREIGN KEY (Id_Publicacao) REFERENCES Publicacao(Id)

--FK Curtida
ALTER TABLE Curtida ADD 
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id),
FOREIGN KEY (Id_Publicacao) REFERENCES Publicacao(Id)

--FK Disciplina_Professor
ALTER TABLE DisciplinaProfessor ADD 
FOREIGN KEY (Id_Disciplina) REFERENCES Disciplina(Id),
FOREIGN KEY (Id_Professor) REFERENCES Professor(Id)

INSERT INTO Usuario VALUES (default,'adm','adm@adm.com','adm', 0,'202CB962AC59075B964B07152D234B70', NULL, NULL, NULL, NULL, 'ADS - Análise e Desenvolvimento de Sistems', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'GU3017141','everton.r@aluno.ifsp.edu.br','Everton Santos', 0,'C99868052FB8A76E4F4B9F2EE67D39FB', NULL, NULL, NULL, NULL, 'ADS - Análise e Desenvolvimento de Sistems', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'GU3018067','aparecida.amanda@aluno.ifsp.edu.br','Amanda Souza ', 0,'6209804952225AB3D14348307B5A4A27', NULL, NULL, NULL, NULL, 'ADS - Análise e Desenvolvimento de Sistems', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'GU3015131','anapaula@aluno.ifsp.edu.br','Ana Paula Castro', 0,'276B6C4692E78D4799C12ADA515BC3E4', NULL, NULL, NULL, NULL, 'ADS - Análise e Desenvolvimento de Sistems', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'GU3015084','cordeiro.gabriela@aluno.ifsp.edu.br','Gabriela Cordeiro', 0,'276E697E74E8B5264465139A480DB556', NULL, NULL, NULL, NULL, 'ADS - Análise e Desenvolvimento de Sistems', GETDATE(), GETDATE())
INSERT INTO Usuario VALUES (default,'GU3025829','lucask@aluno.ifsp.edu.br','Lucas ALENCAR', 0,'DC53FC4F621C80BDC2FA0329A6123708', NULL, NULL, NULL, NULL, 'ADS - Análise e Desenvolvimento de Sistems', GETDATE(), GETDATE())


INSERT INTO Disciplina VALUES ('284D018C-5098-4FBE-9813-F3F4B53B320E','GNE - Gestão de Negócios', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES ('2BA931CC-7D6B-4310-83A0-04F5944870E5','IHC - Interação Humano-Computador', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES ('623B97EF-8159-4E58-8D12-37DF3ED3995F','LDS - Laboratório de Desenvolvimento de Sistemas', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES ('E45333A3-EDF4-4AF4-A9F1-713B016C3407','MPC - Metodologia de Pesquisa Científica e Tecnológica', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES ('8F7278FF-2D0C-4BDC-BE18-A6242C5FCA05','PI1 - Projeto Integrado I', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES ('7AB25B01-49CA-465A-87B9-6F43D55A3539','SSI - Segurança da Informação', GETDATE(), GETDATE())
INSERT INTO Disciplina VALUES ('4F9F5E4C-A8F2-4454-9CC5-3F33647E8862','PE1 - Tópicos Especiais I', GETDATE(), GETDATE())


INSERT INTO Professor VALUES ('CDDDEB61-8B52-46AE-842E-E9E78B3713BF','Rogerio Homem da Costa',GETDATE(), GETDATE())
INSERT INTO Professor VALUES ('730D3AC5-823B-4397-A861-5DAF3BBE825D','Thiago Schumacher Bascelos',GETDATE(), GETDATE())
INSERT INTO Professor VALUES ('DAB5E9B7-7614-4FA9-B9EA-82872F521C8A','Giovani Fonseca Ravagnani Disperati',GETDATE(), GETDATE())
INSERT INTO Professor VALUES ('A091E60E-CF78-4241-94A4-B12522E3C32E','Cristiano Alves Pessoa',GETDATE(), GETDATE())
INSERT INTO Professor VALUES ('E7BAA53D-2498-44D3-9EBB-5BEAB8C4AA2C','Rodrigo Campos Bartoletto',GETDATE(), GETDATE())
INSERT INTO Professor VALUES ('9DE2B315-D6C9-4EE1-A15B-8E75D9C1B5B1','Reginaldo Do Prado',GETDATE(), GETDATE())

INSERT INTO DisciplinaProfessor VALUES (default, 'E45333A3-EDF4-4AF4-A9F1-713B016C3407', 'A091E60E-CF78-4241-94A4-B12522E3C32E', 'Segunda-Feira','19:00', '20:40', GETDATE(), GETDATE())
INSERT INTO DisciplinaProfessor VALUES (default, '8F7278FF-2D0C-4BDC-BE18-A6242C5FCA05', 'A091E60E-CF78-4241-94A4-B12522E3C32E', 'Segunda-Feira','20:55', '22:35', GETDATE(), GETDATE())
INSERT INTO DisciplinaProfessor VALUES (default, '7AB25B01-49CA-465A-87B9-6F43D55A3539', 'E7BAA53D-2498-44D3-9EBB-5BEAB8C4AA2C', 'Terça-Feira','19:00', '22:35', GETDATE(), GETDATE())
INSERT INTO DisciplinaProfessor VALUES (default, '284D018C-5098-4FBE-9813-F3F4B53B320E', 'CDDDEB61-8B52-46AE-842E-E9E78B3713BF', 'Quarta-Feira','19:00', '20:40', GETDATE(), GETDATE())
INSERT INTO DisciplinaProfessor VALUES (default, '2BA931CC-7D6B-4310-83A0-04F5944870E5', '730D3AC5-823B-4397-A861-5DAF3BBE825D', 'Quarta-Feira','20:55', '22:35', GETDATE(), GETDATE())
INSERT INTO DisciplinaProfessor VALUES (default, '623B97EF-8159-4E58-8D12-37DF3ED3995F', 'DAB5E9B7-7614-4FA9-B9EA-82872F521C8A', 'Quinta-Feira','19:00', '22:35', GETDATE(), GETDATE())
INSERT INTO DisciplinaProfessor VALUES (default, '4F9F5E4C-A8F2-4454-9CC5-3F33647E8862', '9DE2B315-D6C9-4EE1-A15B-8E75D9C1B5B1', 'Sexta-Feira','19:00', '22:35', GETDATE(), GETDATE())

