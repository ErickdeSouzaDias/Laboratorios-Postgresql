# Laboratórios PostgreSQL 🐘

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-SQL-336791?logo=postgresql&logoColor=white) ![Status](https://img.shields.io/badge/status-em%20desenvolvimento-blue)

Repositório de estudos práticos de **SQL com PostgreSQL**, com exercícios progressivos, consultas autorais e documentação das decisões e correções realizadas.

## Objetivos
- Desenvolver raciocínio lógico aplicado a consultas SQL.
- Praticar filtros, operadores lógicos, ordenação e limitação de resultados.
- Registrar soluções, dificuldades e aprendizados de maneira reproduzível.

## Ambiente utilizado
- PostgreSQL executado em contêiner Docker, em rede interna.
- Metabase conectado ao PostgreSQL para executar e explorar consultas.
- Tabela de estudo: `municipios`, coluna utilizada: `nome`.

> **Dados e esquema:** este repositório não distribui a base original nem presume outras colunas. Para executar os exercícios, utilize uma tabela `municipios` com coluna textual `nome`. O arquivo `banco/estrutura-minima.sql` oferece um esquema de demonstração e dados fictícios de teste, **não** o banco original.

## Exercícios

| Nº | Tema | Situação | Arquivo |
|---|---|---|---|
| 01 | `LIKE`, `ORDER BY`, `LIMIT` | Solução original registrada; ordenação divergente do enunciado | [SQL](exercicios/01-filtro-santa.sql) · [Documentação](documentacao/01-filtro-santa.md) |
| 02 | `OR`, `AND`, `<>` | Solução atende ao enunciado | [SQL](exercicios/02-operadores-logicos.sql) · [Documentação](documentacao/02-operadores-logicos.md) |
| 03 | `NOT IN` e múltiplos padrões | Solução atende ao enunciado | [SQL](exercicios/03-not-in.sql) · [Documentação](documentacao/03-not-in.md) |

| 04 | `COUNT`, `GROUP BY`, `HAVING` | Concluído; aprovado (10/10) | [SQL](exercicios/04-group-by-having.sql) · [Documentação](documentacao/04-group-by-having.md) |
| 05 | `COUNT(DISTINCT)` e diferença de contagens | Solução autoral registrada | [SQL](exercicios/05-count-distinct.sql) · [Documentação](documentacao/05-count-distinct.md) |
| 06 | `WHERE`, `GROUP BY`, `HAVING` e ordenação múltipla | Concluído; aprovado | [SQL](exercicios/06-agrupamento-filtros.sql) · [Documentação](documentacao/06-agrupamento-filtros.md) |
| 07 | Subconsulta e `AVG` | **Em estudo**; exemplo orientado, não solução autoral | [SQL](exercicios/07-subconsulta-media-exemplo.sql) · [Documentação](documentacao/07-subconsulta-media-exemplo.md) |

## Como executar
1. Conecte-se ao PostgreSQL pelo Metabase ou por outro cliente SQL.
2. Utilize a tabela `municipios` existente, com a coluna `nome`; ou crie uma base de demonstração executando `banco/estrutura-minima.sql` em um banco de testes.
3. Abra o arquivo SQL do exercício, execute a consulta e compare o resultado com o enunciado.
4. Leia a documentação correspondente para entender a lógica e as melhorias.

**Importante:** a consulta original do exercício 01 ordena por `DESC`, embora o enunciado peça ordem crescente (`ASC`). A divergência foi mantida intencionalmente como parte do histórico de aprendizagem; a versão corrigida está documentada.

## Organização
```text
laboratorios-postgresql/
├── README.md
├── LICENSE
├── .gitignore
├── banco/
│   ├── README.md
│   └── estrutura-minima.sql
├── exercicios/
│   ├── 01-filtro-santa.sql
│   ├── 02-operadores-logicos.sql
│   ├── 03-not-in.sql
│   ├── 04-group-by-having.sql
│   ├── 05-count-distinct.sql
│   ├── 06-agrupamento-filtros.sql
│   └── 07-subconsulta-media-exemplo.sql
├── documentacao/
│   └── 01 a 07 — documentação individual em Markdown
└── imagens/
    └── README.md
```

## Próximos passos
Refazer o exercício 07 de forma independente e avançar para relacionamentos conforme a estrutura real do banco permitir; registrar capturas de execução no Metabase sem expor credenciais ou dados sensíveis.

## Autor
**Erick de Souza Dias** — [GitHub](https://github.com/ErickdeSouzaDias)
