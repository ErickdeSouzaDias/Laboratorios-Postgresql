# Exercício 07 — Subconsulta e média de ocorrências

**Status:** estudado, **não concluído de forma independente**. O autor informou que não conseguiu resolver; a consulta abaixo foi fornecida como explicação didática.

## Objetivo da consulta demonstrada
Identificar nomes de municípios cuja frequência supera a média de frequências dos nomes não nulos, retornando até quinze resultados.

## Exemplo de resolução apresentado na aula
```sql
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
```

## Entendendo a solução
1. A subconsulta interna agrupa os registros por nome e calcula sua frequência.
2. A consulta intermediária aplica `AVG` às frequências obtidas.
3. A consulta externa agrupa novamente os nomes e utiliza `HAVING` para manter apenas os grupos acima da média.
4. `ORDER BY` e `LIMIT` organizam e restringem o resultado.

## Próximo passo
Refazer o exercício sem consultar o exemplo, registrar a solução autoral e então atualizar o status para concluído.
