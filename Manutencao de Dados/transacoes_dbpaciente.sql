USE dbpaciente;

insert into paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
values (2, 'Marcio Junior Silva', '16834865102', '(47)89899999');
INSERT INTO paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
VALUES (3, 'Marcio Junior Silva', '16834865103', '(47)89899999');

SET @@autocommit = OFF;
Select @@autocommit;

START TRANSACTION;

INSERT INTO paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
VALUES (4, 'Leonardo Vieira Guimarães', '16834865104', '(47)89899999');

SELECT * FROM paciente;

rollback;

select * from paciente;



START TRANSACTION;

DELETE FROM paciente;

INSERT INTO paciente (nr_sequencia, nm_paciente, cpf_paciente, fone_paciente)
VALUES (4, 'Leonardo Vieira Guimarães', '16834865104', '(47)89899999');

SELECT * FROM paciente;

COMMIT;

select * from paciente;