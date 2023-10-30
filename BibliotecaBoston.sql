create database db_Biblioteca;
#show databases;
use db_Biblioteca;

select database();

#drop database if exists db_Biblioteca;

CREATE TABLE IF NOT EXISTS tbl_livro (
	ID_Livro SMALLINT  AUTO_INCREMENT PRIMARY KEY,
	Nome_Livro VARCHAR(70) NOT NULL,
	ISBN13 CHAR(13),
	ISBN10 CHAR(10),
	ID_Categoria SMALLINT,
	ID_Autor SMALLINT NOT NULL,
	Data_Pub DATE NOT NULL,
	Preco_Livro DECIMAL(6,2) NOT NULL
);
    
CREATE TABLE tbl_autores (
	ID_Autor SMALLINT PRIMARY KEY,
	Nome_Autor VARCHAR(50) NOT NULL,
	Sobrenome_Autor VARCHAR(60) NOT NULL
);

CREATE TABLE tbl_categorias (
	ID_Categoria SMALLINT PRIMARY KEY,
	Categoria VARCHAR(30) NOT NULL
);

CREATE TABLE tbl_editoras (
	ID_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
	Nome_Editora VARCHAR(50) NOT NULL
);

ALTER TABLE tbl_livro
DROP COLUMN ID_autor;

ALTER TABLE tbl_livro
ADD  ID_Autor  SMALLINT NOT NULL;

ALTER TABLE tbl_livro
ADD CONSTRAINT fk_ID_Autor
FOREIGN KEY (ID_Autor)
REFERENCES tbl_autores (ID_autor);
#ON DELETE CASCADE
#ON UPDATE CASCADE;

ALTER TABLE tbl_livro
ADD  ID_Editora  SMALLINT NOT NULL;

ALTER TABLE tbl_Livro
ADD CONSTRAINT fk_id_editora
FOREIGN KEY (ID_Editora)
REFERENCES tbl_editoras (ID_Editora);


ALTER TABLE tbl_Livro
ADD CONSTRAINT fk_id_categoria
FOREIGN KEY (ID_Categoria)
REFERENCES tbl_categorias(ID_Categoria);

INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Prentice Hall');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('O´Reilly');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Microsoft Press');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Wiley');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('McGraw-Hill Education');

INSERT INTO tbl_autores
VALUES
(1, 'Daniel', 'Barret'),
(2, 'Gerald', 'Carter'),
(3, 'Mark', 'Sobell'),
(4, 'William', 'Stanek'),
(5, 'Richard', 'Blum'),
(6, 'Jostein', 'Gaarder'),
(7, 'Umberto', 'Eco'),
(8, 'Neil', 'De Grasse Tyson'),
(9, 'Stephen', 'Hawking'),
(10, 'Stephen', 'Jay Gould'),
(11, 'Charles', 'Darwin'),
(12, 'Alan', 'Turing'),
(13, 'Simon', 'Monk'),
(14, 'Paul', 'Scherz');

INSERT INTO tbl_categorias
VALUES
(1, 'Tecnologia'),
(2, 'História'),
(3, 'Literatura'),
(4, 'Astronomia'),
(5, 'Botânica');

INSERT INTO tbl_Livro (Nome_Livro, ISBN13, ISBN10, Data_Pub, Preco_Livro, ID_Categoria, ID_Autor, ID_Editora)
VALUES 
('Linux Command Line and Shell Scripting','9781118983843', '111898384X', '20150109', 68.35, 1, 5, 4),
('SSH, the Secure Shell','9780596008956', '0596008953', '20050517', 58.30, 1, 1, 2),
('Using Samba','9780596002565', '0596002564', '20031221', 61.45, 1, 2, 2),
('Fedora and Red Hat Linux', '9780133477436', '0133477436', '20140110', 62.24, 1, 3, 1),
('Windows Server 2012 Inside Out','9780735666313', '0735666318', '20130125', 66.80, 1, 4, 3),
('Microsoft Exchange Server 2010','9780735640610', '0735640610', '20101201', 45.30, 1, 4, 3),
('Practical Electronics for Inventors', '9781259587542', '1259587541', '20160324', 67.80, 1, 13, 5);

use db_Biblioteca;

SET @@autocommit = OFF;
SELECT @@autocommit;

# Criar tabela para testes
CREATE TABLE Dados_Livro
SELECT NomeLivro,ISBN13, PrecoLivro
FROM tbl_livros;


create table Dados_Livro
select NomeLivro, ISBN13, 


start Transaction;
	delete from Dados_Livro; 
    Insert into Dados_livro(NomeLivro, ISBN13, PrecoLivro)

SELECT * FROM tbl_autores;
SELECT * FROM tbl_editoras;
SELECT * FROM tbl_livro;

SELECT * FROM tbl_Autores;

SELECT Nome_Livro FROM tbl_livro;

SELECT Nome_Livro, ID_Autor FROM tbl_livro;

SELECT Nome_Livro, ISBN
FROM tbl_livro;

#ASC – Ordem ascendente
#DESC – Ordem descendente (inversa)

SELECT * FROM tbl_Livro
ORDER BY Nome_Livro ASC; 

SELECT Nome_Livro, ID_Editora
FROM tbl_Livro
ORDER BY ID_Editora; -- (ordem crescente)

SELECT Nome_Livro, Preco_Livro
FROM tbl_Livro
ORDER BY Preco_Livro DESC; -- (ordem decrescente)

show index from tbl_editoras;

explain select * from tbl_editoras
where Nome_Editora = 'Springer';

create index idx_editora on tbl_Editoras(Nome_Editora);

drop index idx_editora on tbl_Editoras;


SELECT Nome_Livro, Data_Pub
FROM tbl_Livro
WHERE ID_Autor = 1;

SELECT ID_Autor, Nome_Autor
FROM tbl_autores
WHERE Sobrenome_Autor = 'Stanek';

SELECT Nome_Livro, Preco_Livro
FROM tbl_livro
WHERE ID_Editora = 3;

SELECT * FROM tbl_Livro
WHERE ID_Livro > 2 AND ID_Autor < 3;

SELECT * FROM tbl_Livro
WHERE ID_Livro > 2 OR ID_Autor < 3;

SELECT * FROM tbl_Livro
WHERE ID_Livro > 2 AND NOT ID_Autor < 3;


DELETE FROM tbl_autores
WHERE ID_Autor = 2;

TRUNCATE TABLE tbl_teste_incremento;

CREATE VIEW vw_LivrosAutores
AS SELECT tbl_Livro.Nome_Livro AS Livro, tbl_autores.Nome_Autor AS Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor;

SELECT Livro, Autor
FROM vw_LivrosAutores
ORDER BY Autor;