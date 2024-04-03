# JUNÇÕES ------------------------------------------
select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;

# INNER JOIN ( Só seleciona os alunos que tem curso preferido)
select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos inner join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;
# Cláusula on para relacionar as chave estrangeiras e primarias

# USANDO APELIDOS
select g.nome, c.nome, c.ano 
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

# OUTER JOIN
select g.nome, c.nome, c.ano 
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;
# Left usado para dar preferencia a tabela da esquerda do comando -> gafanhotos

select g.nome, c.nome, c.ano 
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;
# Right usado para dar preferencia a tabela da direita do comando -> cursos