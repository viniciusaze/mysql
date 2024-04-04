# RELACIONANDO MUITOS PRA MUITOS -------------------
# Criando a tabela assiste -------------------------
create table gafanhoto_assiste_curso (
	id int not null auto_increment,
	data date,
	idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcurso)
    ) default charset = utf8mb4;
    
# JUNTANDO AS TABELAS -------------------------------

select g.nome, c.nome from gafanhotos as g
join gafanhoto_assiste_curso as a
on g.id = a.idgafanhoto
join cursos as c
on c.idcurso = a.idcurso
order by g.nome;


