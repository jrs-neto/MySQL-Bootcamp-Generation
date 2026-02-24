CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome varchar(255) not null,
descricao varchar(255) not null,
preco decimal(10,2) not null,
estoque INT not null,
primary key (id)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque)
VALUES ("Notebook Dell Inspiron", "Notebook 16GB RAM SSD 512GB", 4200.00, 10),
	   ("Smartphone Samsung Galaxy", "Smartphone 256GB 5G", 1800.00, 25),
	   ("Teclado Mecânico Gamer", "Teclado RGB Switch Blue", 350.00, 40),
	   ("Mouse Gamer Logitech", "Mouse 16000 DPI RGB", 280.00, 50),
	   ("Smart TV 55 Polegadas", "TV 4K UHD", 3200.00, 8),
	   ("Cadeira Gamer", "Cadeira ergonômica reclinável", 950.00, 15),
	   ("Fone de Ouvido Bluetooth", "Fone sem fio com cancelamento de ruído", 450.00, 30),
	   ("Monitor 27 Polegadas", "Monitor Full HD IPS", 1100.00, 12);
       
SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 3999.00 WHERE id =1;