# EXERCÍCIOS --------------------------------------
select * from gafanhotos;
# 1 
select nome from gafanhotos
where sexo = 'F';

# 2
select * from gafanhotos
where nascimento between '2000/01/01' and '2015/12/31';

# 3
select nome from gafanhotos
where sexo = 'M' and profissao = 'Programador';

# 4
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

# 5
select nome, nacionalidade from gafanhotos
where nome like '%Silva%' and nacionalidade != 'Brasil' and peso < '100';

# 6
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

# 7
select avg(peso) from gafanhotos;

# 8
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and 
nascimento between '1990/01/01' and '2000/12/31';

# 9 
select count(altura) from gafanhotos
where sexo = 'F' and altura > '1.90';

# 10
select profissao, count(profissao) from gafanhotos
group by profissao
order by count(profissao) desc;

# 11
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

# 12
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3;

# 13
select altura, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);