-- Exercício 07: solução didática apresentada após o autor informar
-- que não conseguiu resolver. NÃO é uma solução autoral concluída.
SELECT nome, COUNT(*) AS quantidade
FROM municipios
WHERE nome IS NOT NULL
GROUP BY nome
HAVING COUNT(*) > (
    SELECT AVG(quantidade)
    FROM (
        SELECT COUNT(*) AS quantidade
        FROM municipios
        WHERE nome IS NOT NULL
        GROUP BY nome
    ) AS contagens
)
ORDER BY quantidade DESC, nome ASC
LIMIT 15;
