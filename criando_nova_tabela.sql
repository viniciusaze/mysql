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

# DROP TABLE cursos;

INSERT INTO cursos
VALUES 
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2','Algoritimos','Logica de Programação','20','8','2014'),
('3','Photoshop','Aulas de Photoshop CC','9','20','2014'),
('4','PGP','PHP para Iniciantes','33','40','2010'),
('5','Jarva','Intro ao Java','22','10','2000'),
('6','MySQL','Curso MySQL','21','15','2016'),
('7','World','Word Completo','40','30','2018'),
('8','Sapateado','Dança Rítimica','14','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar Polêmicas e Ganhar Inscritos','5','2','2010');

# MANIPULANDO REGISTROS/LINHA/TUPLA --------------------------------------------

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

UPDATE cursos
SET nome = 'Algoritmos'
WHERE idcurso = '2';

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
LIMIT 1; # PARA LIMITAR A ALTERAÇÃO PARA UMA LINHA

# APAGANDO LINHAS ---------------------------------------------------------------

DELETE FROM cursos
WHERE idcurso = '10';

# APAGANDO TODA A TABELA ---------------------------------------------------------

# TRUNCATE TABLE cursos;

SELECT * FROM cursos;

DESCRIBE cursos;