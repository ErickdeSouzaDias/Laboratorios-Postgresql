# Exercício 03 — Múltiplos prefixos com NOT IN

## Enunciado
Consultar a coluna `nome` de `municipios` e listar nomes iniciados por **São**, **Santa** ou **Santo**. Excluir os nomes exatamente iguais a **Santa Maria** e **São Paulo**. Ordenar de A a Z e limitar a **20 resultados**.

> O exercício foi adaptado à estrutura efetivamente disponível: não existe coluna `populacao` nas tabelas usadas neste laboratório.

## Minha solução original
```sql
SELECT nome from municipios
where (nome like 'São%'
        or nome like 'Santa%'
        or nome like 'Santo%')
    and nome not in ('Santa Maria', 'São Paulo')
order by nome ASC
limit 20;
```

## Análise
- `SELECT nome FROM municipios`: retorna a coluna de nome da tabela.
- `LIKE 'São%'`, `LIKE 'Santa%'`, `LIKE 'Santo%'`: definem os três padrões de início.
- `OR`: permite que qualquer um dos prefixos corresponda.
- Parênteses: agrupam as alternativas antes da exclusão.
- `AND nome NOT IN ('Santa Maria', 'São Paulo')`: elimina os dois nomes especificados.
- `ORDER BY nome ASC`: classifica em ordem crescente.
- `LIMIT 20`: apresenta até vinte registros.

## Observações técnicas
- `NOT IN` é adequado aqui porque a lista de exclusões contém apenas textos não nulos. Se uma lista de exclusões contiver `NULL`, a semântica SQL de três valores exige cuidado.
- `LIKE` pode depender de configuração de collation para comportamento de comparação; a consulta preserva a exigência original de prefixos literais.

## Evidência
Captura de execução no Metabase: **a adicionar**.
