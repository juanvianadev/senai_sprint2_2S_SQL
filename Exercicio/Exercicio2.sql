CREATE DATABASE db_biblioteca;
USE db_biblioteca;
SET @@autocommit = ON;
-- DDL

CREATE TABLE tb_autores(
id_autor INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
data_nascimento DATETIME,
PRIMARY KEY(id_autor)
);

CREATE TABLE tb_livros(
id_livro INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(100) NOT NULL,
ano_publicacao INT(4) NOT NULL,
PRIMARY KEY(id_livro),
id_autor INT(100) NOT NULL,
FOREIGN KEY (id_autor) REFERENCES tb_autores(id_autor)
);

CREATE TABLE tb_membros(
id_membro INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
data_adesao DATETIME,
PRIMARY KEY(id_membro)
);

CREATE TABLE tb_emprestimos(
id_emprestimo INT NOT NULL AUTO_INCREMENT,
data_emprestimo DATETIME,
data_devolucao DATETIME,
PRIMARY KEY(id_emprestimo),
id_membro INT(100) NOT NULL,
FOREIGN KEY (id_membro) REFERENCES tb_membros(id_membro),
id_autor INT(100) NOT NULL,
FOREIGN KEY (id_autor) REFERENCES tb_autores(id_autor),
id_livro INT(100) NOT NULL,
FOREIGN KEY (id_livro) REFERENCES tb_livros(id_livro)
);

-- DML

INSERT INTO tb_autores (nome, data_nascimento) VALUES 
("Marcos", "2000/01/01"), 
("Renata", "2000/01/01"), 
("Bill", "2000/01/01");

INSERT INTO tb_livros (id_autor, titulo, ano_publicacao) VALUES 
("1","Diario de um Banana 1", "2014"), 
("2","Diario de um Banana 2", "2015"), 
("3","Diario de um Banana 3", "2016");

INSERT INTO tb_membros (nome, data_adesao) VALUES 
("Jessica", "1997/01/01"), 
("Caique", "1980/01/01"), 
("Carol", "1989/01/01");

INSERT INTO tb_emprestimos (data_emprestimo, data_devolucao, id_membro, id_autor, id_livro) VALUES 
("2024/01/01", "2024/02/01","1","1","1"), 
("2024/02/01", "2024/03/01","2","2","2"), 
("2024/03/01", "2024/04/01","3","3","3");

-- DQL

SELECT MAX(ano_publicacao) FROM tb_livros;
SELECT MIN(ano_publicacao) FROM tb_livros;

SELECT COUNT(id_livro) FROM tb_livros;

SELECT * FROM tb_livros ORDER BY id_autor ASC;
SELECT * FROM tb_livros ORDER BY titulo DESC;

-- SUBQUERIES

SELECT nome FROM tb_autores
WHERE id IN (SELECT id_autor FROM tb_livros
			       WHERE ano_publicado > (SELECT AVG(ano_publicado) FROM tb_livros));
             
SELECT nome FROM tb_membros WHERE id_membro IN (SELECT id_membro FROM tb_emprestimo 
												GROUP BY id HAVING COUNT(id) > 1);

SELECT titulo FROM tb_livros
WHERE id IN (SELECT id_livro FROM tb_emprestimo);

