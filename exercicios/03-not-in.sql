-- Exercício 03: solução original enviada pelo autor.
SELECT nome from municipios
where (nome like 'São%'
        or nome like 'Santa%'
        or nome like 'Santo%')
    and nome not in ('Santa Maria', 'São Paulo')
order by nome ASC
limit 20;
