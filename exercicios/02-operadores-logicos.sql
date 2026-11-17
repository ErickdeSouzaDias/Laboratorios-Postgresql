-- Exercício 02: solução original enviada pelo autor.
select nome from municipios
where (nome like 'São%' or nome like 'Santa%') and nome <> 'Santa Maria'
order by nome ASC
limit 15;
