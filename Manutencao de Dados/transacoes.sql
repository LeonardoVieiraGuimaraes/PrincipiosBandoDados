CREATE DATABASE Biblioteca;

USE Biblioteca;

CREATE TABLE Livros (
                        ID int PRIMARY KEY AUTO_INCREMENT,
                        Titulo varchar(255),
                        Autor varchar(255),
                        Preco decimal(10,2),
                        Editora varchar(255)
);


INSERT INTO Livros (Titulo, Autor, Preco, Editora)
VALUES ('Rita Lee: Uma autobiografia', 'Rita Lee', 49.00, 'Editora 1'),
       ('Rita Lee: Outra autobiografia', 'Rita Lee', 59.00, 'Editora 2'),
       ('Café com Deus Pai: Porções Diárias de Renovação', 'Júnior Rostirola', 40.00, 'Editora 3'),
       ('Verity', 'Colleen Hoover', 26.90, 'Editora 4'),
       ('A Biblioteca da Meia-Noite', 'Matt Haig', 30.00, 'Editora 5'),
       ('É assim que começa (Vol. 2 É assim que acaba)', 'Colleen Hoover', 28.90, 'Editora 6'),
       ('É Assim que Acaba: 1', 'Colleen Hoover', 28.90, 'Editora 7'),
       ('Tudo é rio', 'Carla Madeira', 30.00, 'Editora 8'),
       ('O homem mais rico da Babilônia', 'George S Clason', 14.90, 'Editora 9'),
       ('The Legend of Zelda (tm) Tears of the Kingdom - The Complete Official Guide: Collector''s Edition', 'Piggyback',222.45,'Editora10');


SET @@autocommit = OFF;
Select @@autocommit;

START TRANSACTION;

DELETE FROM livros;

INSERT INTO Livros (Titulo, Autor, Preco, Editora) VALUES('Rita Lee: Uma autobiografia', 'Rita Lee', 49.00, 'Editora 1');

SELECT * FROM Livros;

rollback;

select * from Livros;


START TRANSACTION;

DELETE FROM livros;

INSERT INTO Livros (Titulo, Autor, Preco, Editora) VALUES('Rita Lee: Uma autobiografia', 'Rita Lee', 49.00, 'Editora 1');

SELECT * FROM Livros;

COMMIT;

select * from Livros;

CREATE PROCEDURE insere_livros()
BEGIN
DECLARE erro_sql TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
START TRANSACTION;
    INSERT INTO Livros (Titulo, Autor, Preco, Editora) VALUES('Rita Lee: Uma autobiografia', 'Rita Lee', 49.00, 'Editora 1');
    INSERT INTO Livros (Titulo, Autor, Preco, Editora) VALUES('Rita Lee: Outra autobiografia', 'Rita Lee', 59.00, 'Editora 2');
    INSERT INTO Livros (Titulo, Autor, Preco, Editora) VALUES('Café com Deus Pai: Porções Diárias de Renovação', 'Júnior Rostirola', 40.00, 'Editora 3');
    INSERT INTO Livros (Titulo, Autor, Preco, Editora) VALUES('Verity', 'Colleen Hoover', 26.90, 'Editora 4');
    INSERT INTO Livros (Titulo, Autor, Preco, Editora) VALUES('A Biblioteca da Meia-Noite', 'Matt Haig', 30.00, 'Editora 5');
    IF erro_sql THEN
        ROLLBACK;
        SELECT 'Erro ao inserir livros!' AS 'Resultado';
    ELSE
        COMMIT;
        SELECT 'Livros inseridos com sucesso!' AS 'Resultado';
    END IF;
END;

CALL insere_livros();

SELECT * FROM Livros;