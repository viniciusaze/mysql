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