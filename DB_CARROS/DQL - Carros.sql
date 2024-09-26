USE bd_carro;

SELECT * FROM tb_carros;
SELECT * FROM tb_proprietario;

SELECT marca, modelo FROM tb_carros;

SELECT MAX(valor) FROM tb_carros;
SELECT MIN(numeroVendas) FROM tb_carros;

SELECT marca, modelo, ano FROM tb_carros WHERE valor = (SELECT MAX(valor) FROM tb_carros)
