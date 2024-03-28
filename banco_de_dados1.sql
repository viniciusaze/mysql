# CRIANDO O BANCO DE DADOS --------------------

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

# CRIANDO A TABELA PESSOAS --------------------

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

DESCRIBE pessoas;
