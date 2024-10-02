SELECT @@autocommit;

SET @@autocommit = OFF;

INSERT INTO tb_proprietario VALUES(
"6",
"Teste",
"4",
"35"
);

DELETE FROM tb_proprietario
WHERE id_proprietario = 2;

ROLLBACK;

SELECT * FROM tb_proprietario;

START TRANSACTION;
	INSERT INTO tb_proprietario VALUES(
	"6",
	"Teste1",
	"6",
	"30"
); 

COMMIT;

SELECT * FROM tb_proprietario;

UPDATE tb_proprietario 
SET nome = "Caique"
WHERE id_proprietario  = 1;

ROLLBACK;

