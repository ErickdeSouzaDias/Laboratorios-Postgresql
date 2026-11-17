-- Exercício 05: solução original do autor.
-- Contagem total de nomes, nomes distintos e diferença.
SELECT COUNT(nome) as total_municipios,
       COUNT(DISTINCT(nome)) as nomes_distintos,
       (COUNT(nome) - COUNT(DISTINCT(nome))) as diferenca
FROM municipios;
