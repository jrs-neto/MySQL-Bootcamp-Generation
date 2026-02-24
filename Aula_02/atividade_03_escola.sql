CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
turma VARCHAR(100) NOT NULL,
nota DECIMAL(3,1) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, idade, turma, nota)
VALUES ("Ana Souza", 15, "1A", 8.5),
("Bruno Lima", 16, "1A", 6.8),
("Carla Mendes", 15, "2B", 9.2),
("Daniel Rocha", 17, "2B", 5.9),
("Eduarda Alves", 16, "3C", 7.5),
("Felipe Martins", 15, "3C", 4.7),
("Gabriela Santos", 17, "1A", 8.0),
("Henrique Costa", 16, "2B", 6.5),
("Isabela Ferreira", 15, "3C", 9.8),
("João Oliveira", 17, "1A", 3.9);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.2 WHERE id = 2;

SELECT * FROM tb_estudantes;


