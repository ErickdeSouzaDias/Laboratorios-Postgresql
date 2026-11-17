# Exercício 06 — Filtros e agrupamento

**Status:** concluído; consulta aprovada na correção.  
**Tabela:** `municipios` (`nome`).

## Objetivo
Contar ocorrências por nome para municípios que começam com `São`, `Santa` ou `Santo`; apresentar apenas nomes com pelo menos três ocorrências, ordenar por quantidade decrescente e, em caso de empate, por nome crescente; limitar a quinze linhas.

## Solução registrada
```sql
SELECT nome, COUNT(nome) AS quantidade
FROM municipios
WHERE nome LIKE 'São%'
   OR nome LIKE 'Santa%'
   OR nome LIKE 'Santo%'
GROUP BY nome
HAVING COUNT(nome) >= 3
ORDER BY quantidade DESC, nome ASC
LIMIT 15;
```

## Entendendo a solução
- `WHERE` seleciona linhas com os prefixos indicados antes do agrupamento.
- `GROUP BY nome` agrupa municípios homônimos.
- `COUNT(nome)` mede o tamanho de cada grupo em valores não nulos.
- `HAVING COUNT(nome) >= 3` elimina grupos com menos de três ocorrências.
- `ORDER BY quantidade DESC, nome ASC` define duas chaves de ordenação.

## Aprendizado
As funções agregadas são usadas em `SELECT` e `HAVING`, enquanto `WHERE` atua nas linhas originais.

**Evidência:** inserir posteriormente captura real da execução no Metabase.
