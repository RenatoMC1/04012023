-- a) Apresentar a listagem completa dos registros da tabela Empregados;
select * from funcionarios;

-- b) Apresentar uma listagem dos nomes e dos cargos de todos os registros da tabela Empregados;
select nome, cargo from funcionarios;
select count(distinct nome) as ContagemDeNomes, count(distinct cargo) as ContagemDeCargo from funcionarios;

-- c) Apresentar uma listagem dos nomes dos empregados do setor 1
select nome from funcionarios where setor = 1;

-- d) Listagem dos nomes e dos salários por ordem de nome (a-z)
select nome, salario from funcionarios order by nome;

-- e) Listagem dos nomes e dos salários por ordem de nome em formato descendente (z-a)
select nome, salario from funcionarios order by nome DESC;

-- f) Listagem dos setores e nomes colocados por ordem do campo setor em formato ascendente e do campo nome em formato descendente.
select setor, nome from funcionarios order by setor, nome DESC;

-- g) Listagem de nomes ordenados pelo campo nome em formato ascendente, dos empregados do setor 4.
select nome from funcionarios where setor = 4 order by nome;

-- h) Listar empregados com salário entre 1700.00 e 2000.00
-- i) Listar empregados cujo nome comece com a letra A
-- j) Listar empregados cujo nome tem a segunda letra A
-- k) Listar empregados que tem a seqüência AN em qualquer posição do nome.
-- l) Média aritmética dos salários de todos os empregados
-- m) Média aritmética dos salários de todos os empregados do seor 3
-- n) Soma dos salários de todos os empregados
-- o) Soma dos salários de todos os empregados do setor 5
-- p) Maior salário existente entre todos os empregados
-- q) Menor salário existente entre todos os empregados
-- r) Numero de empregados do setor 3
-- s) Número de empregados que ganham mais que 2000.00
-- t) Número de setores existentes no cadastro de empregados.