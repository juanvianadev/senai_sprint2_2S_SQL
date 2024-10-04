USE db_biblioteca;

SELECT * FROM tb_autores;

SELECT * FROM tb_emprestimos;

-- 1
SELECT M.nome, E.data_emprestimo, E.data_devolucao, L.titulo 
FROM tb_membros AS M
INNER JOIN tb_emprestimos AS E ON M.id_membro = E.id_membro 
INNER JOIN tb_livros AS L ON E.id_livro = L.id_livro;

SELECT *  FROM tb_autores AS A
INNER JOIN tb_livros AS L ON A.id_livro = L.id_autor
INNER JOIN tb_emprestimos AS E ON L.id_livro = E.id_livro;

-- 2
INSERT INTO tb_membros(nome, data_adesao) VALUES 
("Jucelino", "1970/01/01");

INSERT INTO tb_livros(titulo, ano_publicacao, id_autor) VALUES 
("Diario de um Banana", "2024", "1");

SELECT * FROM tb_emprestimos AS E
RIGHT JOIN tb_membros AS M
ON M.id_membro = E.id_membro
WHERE E.id_membro IS NULL;

SELECT nome, titulo, data_emprestimo -- tb_autores.nome
FROM tb_livros AS L
LEFT JOIN tb_emprestimos AS E 
ON L.id_livro = E.id_livro
INNER JOIN tb_autores AS A 
ON A.id_autor = L.id_autor
WHERE E.id_emprestimo IS NULL;

-- 3

SELECT L.titulo, A.nome FROM tb_livros AS L
LEFT JOIN tb_autores AS A
ON L.id_autor = A.id_autor
UNION
SELECT L.titulo, A.nome FROM tb_autores AS A
LEFT JOIN tb_livros AS L
ON L.id_autor = A.id_autor;

SELECT * FROM tb_membros AS M
LEFT JOIN tb_emprestimos AS E
ON M.id_membro = E.id_membro
LEFT JOIN tb_livros AS L
ON L.id_livro = E.id_livro
WHERE id_membro IS NULL;





