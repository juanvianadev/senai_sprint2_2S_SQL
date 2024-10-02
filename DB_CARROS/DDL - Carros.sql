-- CRIAR BASE DE DADOS (DATABASE)

CREATE DATABASE bd_carro;

-- ACESSAR A BASE DE DADOS
USE bd_carro;

-- CRIAR TABELA
CREATE TABLE tb_carros(
id_carro INT(10) NOT NULL,
marca VARCHAR(100) NOT NULL,
modelo VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
cor VARCHAR(50) NOT NULL,
numero_vendas INT(10),
ano INT(4),
PRIMARY KEY(id_carro)
);

-- NOT NULL -> Campo Obrigatório

SELECT * FROM tb_carros;

CREATE TABLE tb_proprietario(
id_proprietario INT(10) NOT NULL,
nome VARCHAR(100) NOT NULL,
id_carro INT(10) NOT NULL,
PRIMARY KEY (id_proprietario),
FOREIGN KEY (id_carro) REFERENCES tb_carros(id_carro)
);

CREATE TABLE tb_historico_preco(
id_historico_preco INT(10) NOT NULL AUTO_INCREMENT,
data_modificacao DATETIME,
valor_anterior DECIMAL(10,2),
valor_novo DECIMAL(10,2),
id_carro INT(10) NOT NULL,
PRIMARY KEY (id_historico_preco),
FOREIGN KEY (id_carro) REFERENCES tb_carros(id_carro)
);
-- DELETAR A BASE
-- DROP DATABASE bd_carro;

ALTER TABLE tb_proprietario ADD idade INT(3) NOT NULL;
