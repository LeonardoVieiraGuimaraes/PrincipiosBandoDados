CREATE DATABASE cinemadb;
USE cinemadb;

CREATE TABLE FILME (
CodigoFilme INT NOT NULL,
Titulo VARCHAR(100),
Genero VARCHAR(50),
Ano INT,
Duracao TIME,
Diretor VARCHAR(150),
FaixaEtaria INT UNSIGNED,
PRIMARY KEY(CodigoFilme)
);

CREATE TABLE CINEMA (
CodigoCinemaCNPJ INTEGER NOT NULL,
NomeFantasia VARCHAR(100),
Rua VARCHAR(100),
Bairro VARCHAR(100),
Cidade INT,
Estado INT,
Lotacao INTEGER,
PRIMARY KEY(CodigoCinemaCNPJ)
);

CREATE TABLE EXIBICAO (
DataInicio DATE NOT NULL,
DataFim DATE NOT NULL,
FILMECodigoFilme INTEGER NOT NULL,
CINEMACodigoCinemaCNPJ INTEGER NOT NULL,
PRIMARY KEY(DataInicio, FILMECodigoFilme, CINEMACodigoCinemaCNPJ),
INDEX FK2EXIBICAOFILME(FILMECodigoFilme),
INDEX FK1EXIBICAOCINEMA(CINEMACodigoCinemaCNPJ),
FOREIGN KEY(FILMECodigoFilme)
REFERENCES FILME(CodigoFilme)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
FOREIGN KEY(CINEMACodigoCinemaCNPJ)
REFERENCES CINEMA(CodigoCinemaCNPJ)
ON DELETE NO ACTION
ON UPDATE NO ACTION
);