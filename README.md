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


Base de dados:
https://raw.githubusercontent.com/Infinity-409/aula16-sql-parte01/main/sakila_tiagopassos.sql.txt?token=GHSAT0AAAAAAB5BSYLRMOGDRL5VS4NXHYC2Y5VQ23A

-- SELECIONAR TODAS AS LINHAS E COLUNAS DE UMA TABELA
SELECT * FROM aluguel;
SELECT * FROM ATOR;
SELECT * FROM FILME;

-- SELECIONAR SOMENTE ALGUMAS COLUNAS DE UMA TABELA
SELECT primeiro_nome, ultimo_nome FROM ator;
SELECT titulo FROM filme;

-- PARA COMENTAR UMA LINHA UTILIZE O --
-- QUERO COMENTAR ESTA LINHA

-- PARA CONTAR O NÚMERO DE LINHAS DE UMA TABELA
SELECT COUNT(*) FROM cliente;

-- CONSULTAS ESPECÍFICAS - CLÁUSULA WHERE
-- Qual ator/atriz tem o ID 31?
SELECT primeiro_nome, ultimo_nome FROM ator WHERE ator_id = 31;

-- Qual ID do Brasil?
SELECT * FROM pais WHERE pais = 'Brazil';

-- Quais os países iniciam com a letra A
SELECT * FROM pais WHERE pais LIKE 'A%';

-- Quais os países iniciam com a letra P
SELECT * FROM pais WHERE pais LIKE 'P%';

-- Quais os países terminam com a letra O
SELECT * FROM pais WHERE pais LIKE '%O';

-- Quais os países tenha a sílaba NA no nome
SELECT * FROM pais WHERE pais LIKE '%NA%';

-- Quais as informações para o valor (tabela pagamento) MAIOR do que 3
SELECT * FROM pagamento WHERE valor > 3;

-- Qual a média dos valores dos pagamentos?
-- AVG
SELECT AVG(valor) FROM pagamento;
-- Adicionando um apelido para a coluna (AS)
SELECT AVG(valor) AS Média FROM pagamento;

-- Qual a soma dos valores dos pagamentos?
-- SUM
SELECT SUM(valor) AS Soma FROM pagamento;

-- Qual o menor valor pago?
-- MIN
SELECT MIN(valor) AS ValorMínimo FROM pagamento;

-- Qual o maior valor pago?
-- MAX
SELECT MAX(valor) AS ValorMáximo FROM pagamento;


-- Numa mesma consulta, indicar a SOMA dos valores (pagamento) e o número de Clientes (cliente_id)
select count(*) from cliente;
select count(*) FROM pagamento;

select SUM(valor) as Soma, COUNT(DISTINCT cliente_id) as ContagemDeClientes from pagamento;


-- Contar quantos funcionários existem na tabela pagamentos
SELECT COUNT(DISTINCT funcionario_id) FROM pagamento;

-- para confirmação: select * from funcionario;

-- Contar quantos CLIENTES existem na tabela pagamento
SELECT COUNT(DISTINCT cliente_id) FROM pagamento;
-- para confirmação select * from cliente;


-- ORDENAR DE FORMA CRESCENTE UTILIZANDO ORDER BY
select * from funcionarios order by nome

-- ORDENAR DE FORMA DECRESCENTE UTILIZANDO ORDER BY nome_da_coluna DESC
SELECT * FROM funcionarios ORDER BY nome DESC


-- CRIAÇÃO DE TABELAS
CREATE TABLE infinity409 (id INT, nome VARCHAR(255));

select * from infinity409;

-- INSERINDO DADOS
INSERT INTO infinity409 (id, nome) VALUES (1, 'Rodolfo');

-- INSERINDO MAIS DE UMA LINHA 
INSERT INTO infinity409 (id, nome)
VALUES (2, 'Caio'),
(3, 'Felipe'), 
(4, 'Valter');

-- PARA APAGAR UMA TABELA
-- DROP TABLE infinity409



-- PARA MOSTRAR OS TIPOS DAS COLUNAS
-- SHOW FIELDS FROM PAGAMENTO

-- Contar o número de colunas de um DATABASE
SELECT count(*) AS NúmerodeColunas FROM information_schema.columns
WHERE table_name ='pagamento';



SELECT information_schema.columns.table_name as 'nome da tabela', 
count(*) as 'total de colunas'
FROM information_schema.columns
WHERE information_schema.columns.TABLE_SCHEMA = "teste409"
AND table_name = 'pagamento'
GROUP BY information_schema.columns.TABLE_NAME;


-- ATIVIDADE 01
CRIE A TABELA:
-- TABELA: Funcionários
-- Colunas:
-- codigo INT
-- Nome VARCHAR (255)
-- Setor INT
-- Cargo VARCHAR (255)
-- Salario DECIMAL

INSIRA OS DADOS DA IMAGEM:
https://github.com/Infinity-409/aula16-sql-parte01/blob/main/base.jpg

Base de dados:
https://raw.githubusercontent.com/Infinity-409/aula16-sql-parte01/main/sakila_tiagopassos.sql.txt?token=GHSAT0AAAAAAB5BSYLRMOGDRL5VS4NXHYC2Y5VQ23A

-- SELECIONAR TODAS AS LINHAS E COLUNAS DE UMA TABELA
SELECT * FROM aluguel;
SELECT * FROM ATOR;
SELECT * FROM FILME;

-- SELECIONAR SOMENTE ALGUMAS COLUNAS DE UMA TABELA
SELECT primeiro_nome, ultimo_nome FROM ator;
SELECT titulo FROM filme;

-- PARA COMENTAR UMA LINHA UTILIZE O --
-- QUERO COMENTAR ESTA LINHA

-- PARA CONTAR O NÚMERO DE LINHAS DE UMA TABELA
SELECT COUNT(*) FROM cliente;

-- CONSULTAS ESPECÍFICAS - CLÁUSULA WHERE
-- Qual ator/atriz tem o ID 31?
SELECT primeiro_nome, ultimo_nome FROM ator WHERE ator_id = 31;

-- Qual ID do Brasil?
SELECT * FROM pais WHERE pais = 'Brazil';

-- Quais os países iniciam com a letra A
SELECT * FROM pais WHERE pais LIKE 'A%';

-- Quais os países iniciam com a letra P
SELECT * FROM pais WHERE pais LIKE 'P%';

-- Quais os países terminam com a letra O
SELECT * FROM pais WHERE pais LIKE '%O';

-- Quais os países tenha a sílaba NA no nome
SELECT * FROM pais WHERE pais LIKE '%NA%';

-- Quais as informações para o valor (tabela pagamento) MAIOR do que 3
SELECT * FROM pagamento WHERE valor > 3;

-- Qual a média dos valores dos pagamentos?
-- AVG
SELECT AVG(valor) FROM pagamento;
-- Adicionando um apelido para a coluna (AS)
SELECT AVG(valor) AS Média FROM pagamento;

-- Qual a soma dos valores dos pagamentos?
-- SUM
SELECT SUM(valor) AS Soma FROM pagamento;

-- Qual o menor valor pago?
-- MIN
SELECT MIN(valor) AS ValorMínimo FROM pagamento;

-- Qual o maior valor pago?
-- MAX
SELECT MAX(valor) AS ValorMáximo FROM pagamento;


-- Numa mesma consulta, indicar a SOMA dos valores (pagamento) e o número de Clientes (cliente_id)
select count(*) from cliente;
select count(*) FROM pagamento;

select SUM(valor) as Soma, COUNT(DISTINCT cliente_id) as ContagemDeClientes from pagamento;


-- Contar quantos funcionários existem na tabela pagamentos
SELECT COUNT(DISTINCT funcionario_id) FROM pagamento;

-- para confirmação: select * from funcionario;

-- Contar quantos CLIENTES existem na tabela pagamento
SELECT COUNT(DISTINCT cliente_id) FROM pagamento;
-- para confirmação select * from cliente;


-- ORDENAR DE FORMA CRESCENTE UTILIZANDO ORDER BY
select * from funcionarios order by nome

-- ORDENAR DE FORMA DECRESCENTE UTILIZANDO ORDER BY nome_da_coluna DESC
SELECT * FROM funcionarios ORDER BY nome DESC


-- CRIAÇÃO DE TABELAS
CREATE TABLE infinity409 (id INT, nome VARCHAR(255));

select * from infinity409;

-- INSERINDO DADOS
INSERT INTO infinity409 (id, nome) VALUES (1, 'Rodolfo');

-- INSERINDO MAIS DE UMA LINHA 
INSERT INTO infinity409 (id, nome)
VALUES (2, 'Caio'),
(3, 'Felipe'), 
(4, 'Valter');

-- PARA APAGAR UMA TABELA
-- DROP TABLE infinity409



-- PARA MOSTRAR OS TIPOS DAS COLUNAS
-- SHOW FIELDS FROM PAGAMENTO

-- Contar o número de colunas de um DATABASE
SELECT count(*) AS NúmerodeColunas FROM information_schema.columns
WHERE table_name ='pagamento';



SELECT information_schema.columns.table_name as 'nome da tabela', 
count(*) as 'total de colunas'
FROM information_schema.columns
WHERE information_schema.columns.TABLE_SCHEMA = "teste409"
AND table_name = 'pagamento'
GROUP BY information_schema.columns.TABLE_NAME;


-- ATIVIDADE 01
CRIE A TABELA:
-- TABELA: Funcionários
-- Colunas:
-- codigo INT
-- Nome VARCHAR (255)
-- Setor INT
-- Cargo VARCHAR (255)
-- Salario DECIMAL

INSIRA OS DADOS DA IMAGEM:
https://github.com/Infinity-409/aula16-sql-parte01/blob/main/base.jpg

CONSULTAS 02:
https://github.com/Infinity-409/aula16-sql-parte01/blob/main/parte02-consultas.txt

a) Apresentar a listagem completa dos registros da tabela funcionarios
 b) Apresentar uma listagem dos nomes e dos cargos de todos os registros da tabela funcionarios;
 c) Apresentar uma listagem dos nomes dos empregados do setor 1
 d) Listagem dos nomes e dos salários por ordem de nome (a-z)
 e) Listagem dos nomes e dos salários por ordem de nome em formato descendente (z-a)
 f) Listagem dos setores e nomes colocados por ordem do campo setor em formato ascendente e do campo nome em formato descendente.
 g) Listagem de nomes ordenados pelo campo nome em formato ascendente, dos empregados do setor 4.
 h) Listar empregados com salário entre 1700.00 e 2000.00
 i) Listar empregados cujo nome comece com a letra A
 j) Listar empregados cujo nome tem a segunda letra A
 k) Listar empregados que tem a seqüência AN em qualquer posição do nome.
 l) Média aritmética dos salários de todos os empregados
 m) Média aritmética dos salários de todos os empregados do seor 3
 n) Soma dos salários de todos os empregados
 o) Soma dos salários de todos os empregados do setor 5
 p) Maior salário existente entre todos os empregados
 q) Menor salário existente entre todos os empregados
 r) Numero de empregados do setor 3
 s) Número de empregados que ganham mais que 2000.00
 t) Número de setores existentes no cadastro de empregados.
