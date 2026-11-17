# Exercício 04 — COUNT, GROUP BY e HAVING

**Status:** concluído; consulta aprovada na correção (10/10).  
**Tabela:** `municipios` (`nome`).

## Enunciado
Listar os nomes de municípios que aparecem mais de uma vez na tabela, informando a quantidade de ocorrências por nome; ordenar por quantidade decrescente e limitar a dez linhas.

## Solução enviada
```sql
select count(nome) as qtd, nome from municipios
GROUP BY nome having count(nome) > 1
order by qtd DESC limit 10;
```

## Entendendo a solução
- `COUNT(nome)` conta valores não nulos da coluna `nome` dentro de cada grupo.
- `AS qtd` atribui um apelido à coluna calculada.
- `GROUP BY nome` forma um grupo para cada nome.
- `HAVING COUNT(nome) > 1` mantém somente grupos com mais de uma ocorrência.
- `ORDER BY qtd DESC` ordena pelas maiores contagens.
- `LIMIT 10` restringe a saída a até dez linhas.

## Aprendizado
`WHERE` filtra linhas antes do agrupamento; `HAVING` filtra grupos depois da agregação. Empates na quantidade podem ser ordenados de modo não determinístico sem critério secundário.

**Evidência:** inserir posteriormente captura real da execução no Metabase.
