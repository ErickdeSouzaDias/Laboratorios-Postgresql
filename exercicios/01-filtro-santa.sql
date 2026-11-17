-- Exercício 01: solução original enviada pelo autor.
-- Atenção: DESC diverge da ordenação crescente solicitada no enunciado.
select nome from municipios
where nome like 'Santa%'
order by nome DESC
LIMIT 10;
