CREATE TABLE tbl_teste_incremento (
	Codigo SMALLINT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(20) NOT NULL
) AUTO_INCREMENT = 15;

ALTER TABLE tabela AUTO_INCREMENT = 100;

INSERT INTO tbl_teste_incremento (Nome) VALUES ('Ana');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('Maria');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('Julia');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('Joana');

SELECT * FROM tbl_teste_incremento;

