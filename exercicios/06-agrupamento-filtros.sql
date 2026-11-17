-- Exercício 06: consulta aprovada na correção anterior.
-- Nomes iniciados por São, Santa ou Santo com pelo menos 3 ocorrências.
SELECT nome, COUNT(nome) AS quantidade
FROM municipios
WHERE nome LIKE 'São%'
   OR nome LIKE 'Santa%'
   OR nome LIKE 'Santo%'
GROUP BY nome
HAVING COUNT(nome) >= 3
ORDER BY quantidade DESC, nome ASC
LIMIT 15;
