
--Consulta 1 - Consultar os filmes da "Tabela FILMES", os Nomes e Anos

--SELECT * FROM Filmes
--SELECT Nome,
	--   Ano
--FROM Filmes

--Consulta 2 - Consultar os filmes da Tabela Filmes, os Nomes e Anos, ORDENADOS POR ORDEM CRESCENTE PELO Ano.

--SELECT Nome,
--   Ano
--FROM Filmes

--ORDER BY
--	Ano ASC;

--Consulta 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

--SELECT Nome,
--	   Ano,
--	   Duracao
--FROM Filmes

--WHERE Nome = 'De Volta para o Futuro';

--Consulta 4 - Buscar os filmes lançados em 1997

--SELECT 
--		Nome,
--		Ano,
--		Duracao
--FROM Filmes
--WHERE 
--		Ano = 1997;

--Consulta 5 - Buscar filmes lançados após 2000 

--SELECT
--		Nome,
--		Ano
--FROM Filmes
--WHERE
--		Ano > 2000;


--Consulta 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
--SELECT
--		Nome,
--		Ano,
--		Duracao
--FROM Filmes
--WHERE
--		Duracao > 100 AND Duracao < 150
--ORDER BY
--		Duracao ASC;

--Consulta Consulta 7: Busca a quantidade de filmes lançados por ano, agrupando por ano
-- e ordenando pela soma da duração dos filmes em ordem decrescente.

--SELECT
--	Ano,

--	COUNT(Id) AS QuantidadeFilmes
--FROM Filmes

--GROUP BY
--	Ano
--ORDER BY 
--	QuantidadeFilmes desc;

-- Consulta 8: Busca o PrimeiroNome e UltimoNome de atores do gênero masculino.

--SELECT
--	PrimeiroNome,
--	UltimoNome
--FROM Atores
--WHERE
--	Genero = 'M';

--Consulta 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

--SELECT
--	PrimeiroNome,
--	UltimoNome
--FROM Atores
--WHERE Genero = 'F'

--ORDER BY
--PrimeiroNome ASC;

--Consulta 10 - Buscar o nome do filme e o gênero

--SELECT
--	F.Nome AS NomeFilm,
--	G.Genero
--FROM Filmes AS F

--INNER JOIN
--	FilmesGenero AS FG ON F.Id = FG.IdFilme

--INNER JOIN
--	Generos AS G ON FG.IdGenero = G.Id;	

--Consulta 11 -  Buscar o nome do filme e o gênero do tipo "Mistério"

--SELECT
--	F.Nome AS NomeFilm,
--	G.Genero
--FROM Filmes AS F

--INNER JOIN
--	FilmesGenero AS FG ON F.Id = FG.IdFilme

--INNER JOIN
--	Generos AS G ON FG.IdGenero = G.Id	

--WHERE
--	G.Genero = 'Mistério';

--Consulta 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
		
--SELECT
--	F.Nome AS NomeFilme,
--	A.PrimeiroNome,
--	A.UltimoNome,
--	EF.Papel
--FROM Filmes AS F

--INNER JOIN
--	ElencoFilme AS EF ON F.Id = EF.IdFilme 

--INNER JOIN
--	Atores AS A ON EF.IdAtor = A.Id;

