-- CRIAR BASE DE DADOS (DATABASE)

CREATE DATABASE bd_carro;

-- ACESSAR A BASE DE DADOS
USE bd_carro;

-- CRIAR TABELA
CREATE TABLE tb_carros(
id INT(10) NOT NULL,
marca VARCHAR(100) NOT NULL,
modelo VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
cor VARCHAR(50) NOT NULL,
numeroVendas INT(10),
ano INT(4),
PRIMARY KEY(id)
);

-- NOT NULL -> Campo Obrigatório

SELECT * FROM tb_carros;

CREATE TABLE tb_proprietario(
id INT(10) NOT NULL,
nome VARCHAR(100) NOT NULL,
idCarro INT(10) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (idCarro) REFERENCES tb_carros(id)
);

CREATE TABLE tb_historico_preco(
id INT(10) NOT NULL AUTO_INCREMENT,
dataModificacao DATETIME,
valorAnterior DECIMAL(10,2),
valorNovo DECIMAL(10,2),
idCarro INT(10) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (idCarro) REFERENCES tb_carros(id)
);
-- DELETAR A BASE
-- DROP DATABASE bd_carro;

ALTER TABLE tb_proprietario ADD idade INT(3) NOT NULL;


