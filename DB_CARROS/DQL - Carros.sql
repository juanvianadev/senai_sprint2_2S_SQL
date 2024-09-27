USE bd_carro;

SELECT * FROM tb_carros;
SELECT * FROM tb_proprietario;

SELECT marca, modelo FROM tb_carros;

SELECT MAX(valor) FROM tb_carros;
SELECT MIN(numeroVendas) FROM tb_carros;

SELECT * FROM tb_carros WHERE id = 1;

SELECT marca, modelo, ano, valor FROM tb_carros WHERE valor = (SELECT MIN(valor) FROM tb_carros);

SELECT COUNT(id) FROM tb_carros;
SELECT COUNT(DISTINCT(marca)) FROM tb_carros;

SELECT SUM(valor) FROM tb_carros;

SELECT * FROM tb_carros ORDER BY modelo ASC;
SELECT * FROM tb_carros ORDER BY marca DESC;

SELECT COUNT(id) AS "Total de Registros", marca, ano FROM tb_carros WHERE ano BETWEEN "1990" AND "2024" GROUP BY marca, ano;