CREATE DATABASE db_clinica;

USE db_clinica;

-- DDL ==============================================
CREATE TABLE tb_veterinario(
id_veterinario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(100) NOT NULL,
telefone VARCHAR(100) NOT NULL,
PRIMARY KEY(id_veterinario)
);

CREATE TABLE tb_cliente(
id_cliente INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
endereco VARCHAR(100) NOT NULL,
telefone VARCHAR(100) NOT NULL,
PRIMARY KEY(id_cliente)
);

CREATE TABLE tb_pets(
id_pet INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
tipo VARCHAR(100) NOT NULL,
raca VARCHAR(100) NOT NULL,
data_nascimento DATETIME,
id_cliente INT NOT NULL,
PRIMARY KEY(id_pet),
FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente)
);

CREATE TABLE tb_atendimento(
id_atendimento INT NOT NULL AUTO_INCREMENT,
id_pet INT NOT NULL,
id_veterinario INT NOT NULL,
data_nascimento DATETIME,
descricao VARCHAR(100) NOT NULL,
PRIMARY KEY(id_atendimento),
FOREIGN KEY (id_pet) REFERENCES tb_cliente(id_cliente),
FOREIGN KEY (id_veterinario) REFERENCES tb_cliente(id_cliente)
);

SELECT * FROM tb_veterinario;
SELECT * FROM tb_cliente;
SELECT * FROM tb_pets;
SELECT * FROM tb_atendimento;

-- DML ==============================================

INSERT INTO tb_veterinario(nome, especialidade, telefone) VALUES(
"Jessica",
"Cachorro",
"11999999999"
);

INSERT INTO tb_veterinario(nome, especialidade, telefone) VALUES(
"Caique",
"Gato",
"11999999999"
);

INSERT INTO tb_veterinario(nome, especialidade, telefone) VALUES(
"Carol",
"Girafa",
"11999999999"
);

-- ==========

INSERT INTO tb_cliente(nome, endereco, telefone) VALUES(
"Juan",
"Rua 01 - Bairro 01",
"11999999999"
);

INSERT INTO tb_cliente(nome, endereco, telefone) VALUES(
"Renata",
"Rua 02 - Bairro 02",
"11999999999"
);

INSERT INTO tb_cliente(nome, endereco, telefone) VALUES(
"Bill",
"Rua 03 - Bairro 03",
"11999999999"
);

-- ==========

INSERT INTO tb_pets(nome, tipo, raca, data_nascimento, id_cliente) VALUES(
"Rex",
"Cachorro",
"French",
"2020/09/12",
"1"
);

INSERT INTO tb_pets(nome, tipo, raca, data_nascimento, id_cliente) VALUES(
"Mingal",
"Gato",
"Perca",
"2023/07/05",
"2"
);

INSERT INTO tb_pets(nome, tipo, raca, data_nascimento, id_cliente) VALUES(
"Roberto",
"Girafa",
"Girafa",
"2012/11/15",
"3"
);

-- ==========

INSERT INTO tb_atendimento(id_pet, id_veterinario, data_nascimento, descricao) VALUES(
"1",
"1",
"2020/09/12",
"Problema no ouvido"
);

INSERT INTO tb_atendimento(id_pet, id_veterinario, data_nascimento, descricao) VALUES(
"2",
"2",
"2023/07/05",
"Bola de pelo no estomago"
);

INSERT INTO tb_atendimento(id_pet, id_veterinario, data_nascimento, descricao) VALUES(
"1",
"1",
"2012/11/15",
"Girafa"
);

-- DQL ==============================================

SELECT id_pet, nome, data_nascimento FROM tb_pets WHERE data_nascimento = (SELECT MAX(data_nascimento) FROM tb_pets);
SELECT id_pet, nome, data_nascimento FROM tb_pets WHERE data_nascimento = (SELECT MIN(data_nascimento) FROM tb_pets);
SELECT COUNT(id_pet) FROM tb_pets;
SELECT * FROM tb_pets ORDER BY nome ASC;
SELECT * FROM tb_pets ORDER BY nome DESC;
SELECT * FROM tb_veterinario ORDER BY nome ASC;
SELECT * FROM tb_veterinario ORDER BY nome DESC;
SELECT MIN(data_nascimento) FROM tb_atendimento;
SELECT MAX(data_nascimento) FROM tb_atendimento;