CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Salgada', 'Pizzas tradicionais salgadas, como calabresa e frango'),
('Doce', 'Pizzas doces, como chocolate e banana'),
('Especial', 'Pizzas especiais com ingredientes premium'),
('Vegana', 'Pizzas sem produtos de origem animal'),
('Quatro Queijos', 'Pizzas feitas com quatro tipos diferentes de queijo');

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria_id BIGINT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (categoria_id, nome, ingredientes, preco, tamanho)
VALUES
(1, 'Calabresa', 'Calabresa, cebola, molho de tomate, queijo', 50.00, 'Médio'),
(1, 'Frango com Catupiry', 'Frango desfiado, Catupiry, molho de tomate, queijo', 55.00, 'Grande'),
(2, 'Chocolate', 'Chocolate ao leite, granulado, queijo', 45.00, 'Médio'),
(2, 'Banana com Canela', 'Banana, canela, açúcar, queijo', 48.00, 'Médio'),
(3, 'Portuguesa Especial', 'Presunto, ovos, cebola, azeitona, queijo premium', 65.00, 'Grande'),
(4, 'Vegana de Legumes', 'Tomate, abobrinha, pimentão, queijo vegano', 60.00, 'Grande'),
(5, 'Quatro Queijos Tradicional', 'Mussarela, parmesão, gorgonzola, provolone', 70.00, 'Grande'),
(1, 'Marguerita', 'Tomate, manjericão, mussarela, molho de tomate', 52.00, 'Médio');

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%' OR nome LIKE '%m%';

SELECT p.id, p.nome, p.ingredientes, p.preco, p.tamanho,
       c.nome_categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.ingredientes, p.preco, p.tamanho,
       c.nome_categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Doce';