CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
nome_classe varchar(255) not null,
especialidade varchar(255) not null,
arma_principal varchar(255) not null,
descricao varchar(255) not null,
primary key(id)
);

INSERT INTO tb_classes (nome_classe, especialidade, arma_principal, descricao)
VALUES
("Guerreiro", "Força e defesa", "Espada", "Lutador corpo a corpo com alta resistência"),
("Mago", "Magia elemental", "Cajado", "Especialista em magias e ataques à distância"),
("Arqueiro", "Precisão e agilidade", "Arco", "Ataca à distância com alta velocidade"),
("Assassino", "Velocidade e furtividade", "Adagas", "Ataca rapidamente e se esconde nas sombras"),
("Paladino", "Defesa e cura", "Martelo", "Equilibrado entre ataque e suporte aos aliados");

CREATE TABLE tb_personagens(
id bigint auto_increment primary KEY,
classe_id bigint NOT NULL,
nome varchar(255) NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
nivel INT NOT NULL,
pontos_vida INT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (classe_id, nome, poder_ataque, poder_defesa, nivel, pontos_vida)
VALUES
(1, "Thorin", 2500, 1800, 10, 5000),      -- Guerreiro
(2, "Eldric", 3000, 1200, 12, 3500),       -- Mago
(3, "Lyra", 2200, 1500, 11, 4000),         -- Arqueiro
(4, "Shade", 2800, 1300, 13, 3600),        -- Assassino
(5, "Roland", 2400, 1900, 10, 4800),       -- Paladino
(1, "Borin", 2100, 1600, 9, 4500),         -- Guerreiro
(3, "Cynthia", 2000, 1400, 11, 4200),      -- Arqueiro
(2, "Morgana", 3200, 1100, 14, 3300);      -- Mago

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%' OR nome LIKE '%c%';

SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, p.pontos_vida,
       c.nome_classe, c.especialidade, c.arma_principal
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id;

SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, p.pontos_vida,
       c.nome_classe, c.especialidade, c.arma_principal
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id
WHERE c.nome_classe = 'Arqueiro';