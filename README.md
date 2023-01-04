# 04012023

CREATE TABLE funcionarios (id INT, nome VARCHAR(255), setor INT, cargo VARCHAR(255), salario decimal);

select * from funcionarios;

INSERT INTO funcionarios (id, nome, setor, cargo, salario)
VALUES (1, 'Cleide Campos', 1, 'Secretária', 1000),
(3, 'Andreia Batista', 6, 'Programadora', 1500),
(4, 'Cristiano Souza', 6, 'Programador', 1500),
(6, 'Mario Souza', 4, 'Analista', 2200),
(7, 'Ana Silva', 4, 'Secretária', 1000),
(9, 'Silvia Soares', 5, 'Supervisora', 1650),
(10, 'José da Silva', 1, 'Programador', 1500),
(15, 'Manoel Batista', 1, 'Projetista', 2500),
(25, 'João Silva', 4, 'Supervisor', 1650);
