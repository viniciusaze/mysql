# AULA COMANDO SELECT ------------------------------------------

# ORDENANDO EM ORDEM ALFABETICA --------------------------------
select* from cursos
order by nome desc; # Desc = ordem decrescente

# SELECIONANDO COLUNAS -----------------------------------------
select ano, nome, carga from cursos
order by ano, nome;

# SELECIONANDO LINHAS E COLUNAS --------------------------------
select nome, descricao, ano from cursos
where ano <= '2015'
order by ano, nome;

# SELECIONANDO INTERVALOS ---------------------------------------
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

# SELECIONANDO VALORES ------------------------------------------
select nome, descricao, ano from cursos
where ano in ('2014',2016, 2020)
order by ano;

# COMBINANDO TESTES ---------------------------------------------
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;

# SELEÇÃO POR NOME ----------------------------------------------
select * from cursos
where nome = 'PHP';

select * from cursos
where nome like 'P%' # % Substitui NENHUM ou VARIOS caracteres
order by idcurso;

select * from cursos
where nome like '%A';

select * from cursos
where nome like '%A%';

select * from cursos
where nome not like '%A%';

select * from cursos
where nome like 'PH%P%';

select * from cursos
where nome like 'PH%P_'; # _ exige que tenha um caracatere

select * from gafanhotos
where nome like '%Silva';

# DISTINGUINDO ---------------------------------------------------
select distinct carga from cursos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

# AGREGAÇÃO ------------------------------------------------------
select count(nome) from cursos;

select count(*) from cursos
where carga > 40;

select max(carga) from cursos where ano = '2015';

select min(totaulas) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2016';

select avg(totaulas) from cursos where ano = '2016';

