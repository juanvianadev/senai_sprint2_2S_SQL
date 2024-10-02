USE bd_carro;

SELECT AVG(valor) from tb_carros;

SELECT * FROM tb_carros
WHERE valor > 59472.50;

SELECT * FROM tb_carros
WHERE valor > (SELECT AVG(valor) FROM tb_carros);

SELECT * FROM tb_proprietario
WHERE id = 2;

SELECT * FROM tb_carros 
WHERE marca = "BWM";

SELECT nome FROM tb_proprietario
WHERE id = (SELECT * FROM tb_carros WHERE marca = "BMW");

SELECT nome FROM tb_proprietario
WHERE id = (SELECT id FROM tb_carros WHERE marca = "BMW");