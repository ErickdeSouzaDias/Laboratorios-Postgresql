# Exercício 05 — COUNT e DISTINCT

**Status:** consulta enviada pelo autor; resultado da execução não anexado.  
**Tabela:** `municipios` (`nome`).

## Objetivo
Comparar a quantidade de nomes não nulos registrados, a quantidade de nomes distintos e a diferença entre essas contagens.

## Solução enviada
```sql
SELECT COUNT(nome) as total_municipios,
       COUNT(DISTINCT(nome)) as nomes_distintos,
       (COUNT(nome) - COUNT(DISTINCT(nome))) as diferenca
FROM municipios;
```

## Entendendo a solução
- `COUNT(nome)` conta os valores não nulos de `nome`.
- `COUNT(DISTINCT(nome))` conta quantos valores diferentes não nulos existem.
- A subtração calcula quantos registros excedem a contagem de nomes únicos; **não** representa a quantidade de nomes que se repetem.
- `AS` nomeia as colunas do resultado.

## Observação
Municípios diferentes podem ter o mesmo nome. Para contar todos os registros independentemente de `NULL`, usa-se `COUNT(*)`; não se deve confundir as duas medidas.

**Evidência:** inserir posteriormente captura real da execução no Metabase.
