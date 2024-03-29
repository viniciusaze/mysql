# CRIANDO UMA NOVA TABELA ---------------------------------------------

CREATE TABLE IF NOT EXISTS cursos (
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totaulas INT UNSIGNED,
ano YEAR DEFAULT '2024'
) DEFAULT CHARSET = utf8mb4;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

# APAGANDO A TABELA ------------------------------------------------

DROP TABLE cursos;

DESCRIBE cursos;