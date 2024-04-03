# RELACIONANDO TABELAS --------------------------------
desc gafanhotos;
desc cursos;

# USANDO CHAVES ESTRANGEIRAS ---------------------------
# Criando a nova coluna para a chave estrangeira
alter table gafanhotos
add column cursopreferido int;

# Transformando a coluna na chave estrangeira
alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;

# Adicionando cursos preferidos nos alunos
update gafanhotos set cursopreferido = '15'
where id = '16';

