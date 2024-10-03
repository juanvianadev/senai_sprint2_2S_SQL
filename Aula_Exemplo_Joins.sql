USE bd_carro;

SELECT * FROM tb_proprietario AS P
INNER JOIN tb_carros AS C
ON P.id_carro = C.id_proprietario;

SELECT * FROM tb_proprietario
RIGHT JOIN tb_carros
ON tb_proprietario.id_carro = tb_carro.id_proprietario;

SELECT * FROM tb_carros AS C
LEFT JOIN tb_proprietario AS P
ON C.id_proprietario = P.id_carro;


SELECT * FROM tb_proprietario AS P
LEFT JOIN tb_carros AS C
ON P.id_carro = C.id_proprietario
UNION
SELECT * FROM tb_proprietario AS P
RIGHT JOIN tb_carros AS C
ON C.id_proprietario = P.id_carro
WHERE P.id_carro IS NULL;