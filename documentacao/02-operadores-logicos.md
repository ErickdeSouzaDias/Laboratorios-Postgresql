# Exercício 02 — Operadores lógicos e exclusão

## Enunciado
Consultar `municipios.nome` para listar nomes iniciados por **São** ou **Santa**, excluindo o município chamado exatamente **Santa Maria**. Ordenar alfabeticamente de A a Z e limitar a **15 resultados**.

## Minha solução original
```sql
select nome from municipios
where (nome like 'São%' or nome like 'Santa%') and nome <> 'Santa Maria'
order by nome ASC
limit 15;
```

## Análise
- `SELECT nome FROM municipios`: define a coluna e a tabela.
- `LIKE 'São%'` e `LIKE 'Santa%'`: selecionam os dois prefixos.
- `OR`: aceita qualquer uma das condições de prefixo.
- Parênteses: agrupam as condições alternativas antes de aplicar a exclusão.
- `AND nome <> 'Santa Maria'`: exige que o nome não seja exatamente `Santa Maria`.
- `ORDER BY nome ASC`: ordena em ordem crescente.
- `LIMIT 15`: restringe a saída a até 15 linhas.

## Precedência de AND e OR
Em SQL, `AND` tem precedência maior que `OR`. Sem parênteses, a expressão `A OR B AND C` é interpretada como `A OR (B AND C)`, e não `(A OR B) AND C`. Os parênteses tornam a intenção explícita e impedem que a exclusão seja aplicada apenas a uma das alternativas.

## Possíveis melhorias
- Distribuir condições em várias linhas para facilitar leitura.
- Em buscas que precisem ignorar maiúsculas/minúsculas, avaliar `ILIKE` no PostgreSQL (não exigido neste exercício).
- Para ordenação totalmente determinística com nomes duplicados, seria necessário um segundo critério estável, caso exista no esquema real.

## Evidência
Captura de execução no Metabase: **a adicionar**.
