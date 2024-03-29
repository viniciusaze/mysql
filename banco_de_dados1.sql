# CRIANDO O BANCO DE DADOS -------------------------------------------------

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

# CRIANDO A TABELA PESSOAS --------------------------------------------------

CREATE TABLE pessoas(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M','F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
)DEFAULT CHARSET = utf8mb4;

# INSERINDO DADOS NA TABELA ---------------------------------------------------

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Gilmar', '1980-02-26', 'M', '88.7', '1.90', DEFAULT);

# SE A ORDEM INFORMADA FOR A MESMA DOS ATRIBUTOS, PODE SER FEITO DESSA MANEIRA: 

INSERT INTO pessoas VALUES
(DEFAULT, 'Vinicius', '1995-07-27', 'M', '75.7', '1.75', DEFAULT);

# PARA INSERIR VARIOS VALORES NO MESMO CODIGO ---------------------------------

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Claudio', '1984-12-14', 'M', '89.9', '1.67', DEFAULT),
('Marina', '2000-04-30', 'F', '70', '1.77', DEFAULT),
('Fernanda', '2002-04-03', 'F', '55', '1.65', DEFAULT),
('Valmir', '1970-01-18', 'M', '85', '1.80', DEFAULT),
('Patrícia', '1971-02-11', 'F', '84.3', '1.73', DEFAULT);

# ADICIONAR COLUNA ------------------------------------------------------------

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

# REMOVER COLUNA ---------------------------------------------------------------

ALTER TABLE pessoas
DROP COLUMN profissao;

# ESCOLHENDO A POSIÇÃO DA NOVA COLUNA ------------------------------------------

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome; # PARA COLOCAR EM PRIMEIRO, USAR O COMANDO FIRST

# ALTERANDO A COLUNA -----------------------------------------------------------

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20);

# ALTERANDO O NOME DA COLUNA ---------------------------------------------------

ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

# RENOMEANDO TABELA ------------------------------------------------------------

ALTER TABLE pessoas
RENAME TO gafanhotos;

# DESCREVENDO A TABELA ---------------------------------------------------------

DESCRIBE gafanhotos;

# SELECIONANDO TODOS OS ITENS DA TABELA ----------------------------------------

SELECT * FROM gafanhotos;


