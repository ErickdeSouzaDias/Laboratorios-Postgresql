# Exercício 01 — Filtro por prefixo e ordenação

## Enunciado
Na tabela `municipios`, retornar a coluna `nome` apenas para municípios cujos nomes começam com **Santa**. Ordenar os resultados alfabeticamente **de A a Z** e retornar somente os **10 primeiros**.

## Minha solução original
```sql
select nome from municipios
where nome like 'Santa%'
order by nome DESC
LIMIT 10;
```

## Análise
- `SELECT nome`: seleciona apenas a coluna de nome.
- `FROM municipios`: define a tabela consultada.
- `WHERE nome LIKE 'Santa%'`: encontra nomes iniciados por `Santa`; `%` representa qualquer sequência de caracteres, inclusive vazia.
- `ORDER BY nome DESC`: ordena em ordem **decrescente**, contrariando o pedido de ordem crescente.
- `LIMIT 10`: retorna até dez linhas após a ordenação.

## Correção proposta
```sql
SELECT nome
FROM municipios
WHERE nome LIKE 'Santa%'
ORDER BY nome ASC
LIMIT 10;
```

## Aprendizado
A direção da ordenação influencia diretamente quais registros aparecem quando há `LIMIT`. É necessário verificar cada requisito do enunciado, não apenas se a consulta executa.

## Evidência
Captura de execução no Metabase: **a adicionar**.
