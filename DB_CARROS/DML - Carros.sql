INSERT INTO tb_carros VALUES(
'1',
'Fiat',
'Uno',
'20000.00',
'Verde',
'50000',
'1990'
);

INSERT INTO tb_carros VALUES(
'2',
'Honda',
'Civic',
'100000.00',
'Preto',
'50000',
'2000'
);

INSERT INTO tb_carros VALUES(
'3',
'Volkswagen',
'Fusca',
'20000.00',
'Branco',
'5000000',
'1980'
);

INSERT INTO tb_carros VALUES(
'4',
'Chevrolet',
'Monza',
'40000.00',
'Preto',
'45000',
'1970'
);

INSERT INTO tb_carros VALUES(
'5',
'Chevrolet',
'Prisma',
'60000',
'Prata',
'54000',
'2000'
);

INSERT INTO tb_carros VALUES(
'6',
'BMW',
'Serie 3',
'200000.00',
'Verde',
'100',
'1980'
);

INSERT INTO tb_carros VALUES(
'7',
'Jaguar',
'F-PACE',
'1000000.00',
'Preto',
'3500',
'2024'
);

INSERT INTO tb_carros VALUES(
'8',
'BMW',
'i7',
'500000.00',
'Azul',
'4000',
'2024'
);

INSERT INTO tb_carros VALUES(
'9',
'Mario',
'Kart',
'0',
'Vermelho',
'0',
'1980'
);

INSERT INTO tb_carros VALUES(
'10',
'Volkswagen',
'Saveiro',
'450000.00',
'Laranja',
'50000',
'2024'
);

-- =======================================================

INSERT INTO tb_proprietario VALUES(
'1',
'Juan',
'1',
'24'
);

INSERT INTO tb_proprietario VALUES(
'2',
'Marcos',
'7',
'20'
);

INSERT INTO tb_proprietario VALUES(
'3',
'Renata',
'10',
'18'
);

INSERT INTO tb_proprietario VALUES(
'4',
'Bill',
'3',
'30'
);

INSERT INTO tb_proprietario VALUES(
'5',
'Vinicius',
'4',
'20'
);

SELECT * FROM tb_proprietario;

UPDATE tb_carros SET valor = 15000 WHERE id = 1;

-- DELETE FROM tb_carros WHERE id = 3;