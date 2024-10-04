USE db_clinica;

SELECT * FROM tb_veterinario;

SELECT * FROM tb_cliente AS C
INNER JOIN tb_pets AS P
ON C.id_cliente = P.id_cliente;

SELECT * FROM tb_veterinario AS V
INNER JOIN tb_atendimento AS A
ON V.id_veterinario = A.id_veterinario;

SELECT * FROM tb_pets AS P
INNER JOIN tb_atendimento AS A
ON P.id_pet = A.id_pet
INNER JOIN tb_veterinario AS V
ON V.id_veterinario = A.id_veterinario;

SELECT * FROM tb_atendimento AS A
INNER JOIN tb_pets AS P
ON A.id_pet = P.id_pet
INNER JOIN tb_cliente AS C
ON P.id_cliente = C.id_cliente
INNER JOIN tb_veterinario AS V
ON A.id_veterinario = V.id_veterinario
WHERE A.data_nascimento = (SELECT MAX(data_nascimento) FROM tb_atendimento); -- Escrevi errado (SOU BURRO!) no lugar de nascimento vc escreve atendimento

SELECT * FROM tb_atendimento AS A
RIGHT JOIN tb_veterinario AS V
ON A.id_veterinario = V.id_veterinario;

SELECT * FROM tb_cliente AS C
LEFT JOIN tb_pets AS P
ON C.id_cliente = P.id_cliente;

SELECT * FROM tb_cliente AS C
LEFT JOIN tb_pets AS P
ON P.id_cliente = C.id_cliente
UNION
SELECT * FROM tb_pets AS P
RIGHT JOIN tb_pets AS P
ON P.id_cliente = C.id_cliente;

SELECT * FROM tb_atendimento AS A
LEFT JOIN tb_pets AS P
ON P.id_pet = C.id_pet
UNION
SELECT * FROM tb_atendimento AS A
RIGHT JOIN tb_pets AS P
ON P.id_pet = C.id_pet;

SELECT * FROM tb_veterinario AS V
LEFT JOIN tb_atendimento AS A
ON V.id_veterinario = A.id_veterinario
UNION
SELECT * FROM tb_veterinario AS V
RIGHT JOIN tb_atendimento AS A
ON V.id_veterinario = A.id_veterinario;

SELECT * FROM tb_atendimento AS A 
LEFT JOIN tb_pets AS P
ON A.id_pet = P.id_pet
UNION
SELECT * FROM tb_atendimento AS A 
RIGHT JOIN tb_pets AS P
ON A.id_pet = P.id_pet;