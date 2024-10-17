USE db_biblioteca;

DELIMITER $$
CREATE PROCEDURE inserirAutor(
IN id_autor_p INT(10),
IN novo_autor_p VARCHAR(100)
)
BEGIN

DECLARE nome DECIMAL(10,2);
SELECT valor FROM tb_autores WHERE id_autor = id_autor_p;

UPDATE tb_autores SET nome = novo_autor_p WHERE id_autor = id_autor_p;

INSERT INTO tb_autores(id_autor, nome)
VALUES(id_autor_p, novo_autor_p);

END $$
DELIMITER ;

CALL inserirAutor('10', 'Clarice Lispector');
SELECT * FROM tb_autores;

