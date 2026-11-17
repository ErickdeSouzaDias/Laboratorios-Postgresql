-- Exercício 04: solução original do autor (aprovada).
-- Nomes de municípios que aparecem mais de uma vez.
select count(nome) as qtd, nome
from municipios
GROUP BY nome
having count(nome) > 1
order by qtd DESC
limit 10;
