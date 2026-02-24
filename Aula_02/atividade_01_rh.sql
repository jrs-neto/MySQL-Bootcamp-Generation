CREATE DATABASE db_recursos_humanos;

use db_recursos_humanos;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome varchar(255) not null,
cargo varchar(255) not null,
data_admissao date not null,
salario decimal(10,2) not null,
primary key (id)
);

INSERT INTO tb_colaboradores (nome, cargo, data_admissao, salario)
VALUES ("Carlos Silva", "Analista de RH", "2023-05-10", 3500.00),
	   ("Mariana Souza", "Recrutadora", "2022-08-15", 4200.00),
       ("João Pereira", "Assistente Administrativo", "2021-01-20", 2500.00),
       ("Fernanda Lima", "Gerente de RH", "2021-03-01", 8000.00),
       ("Lucas Almeida", "Estagiário", "2025-02-01", 1500.00);
       
SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 7500.00 WHERE id = 4;