CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
genero varchar(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
genero varchar(100) NOT NULL,
nivel int,
poder varchar(100),
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Insira 5 registros na tabela tb_classes
INSERT INTO tb_classes (nome, genero)
VALUES ("Cachorro", "aventura"),
	   ("Ave", "corrida"),
	   ("Peixe", "futebol"),
	   ("Inseto", "luta");
       
SELECT * FROM tb_classes;
       
INSERT INTO tb_classes (nome, genero)
VALUES ("Gato", "desenho");

SELECT * FROM tb_classes;
       
ALTER TABLE tb_personagens ADD poder_ataque int; 

ALTER TABLE tb_personagens ADD poder_defesa int; 

-- Visualiza todos os dados da tabela tb_personagens
SELECT * FROM tb_personagens;


-- Insira 8 registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, genero, nivel, poder, classe_id, poder_ataque, poder_defesa)
VALUES ("Pastor Alemão", "masculino", 1, "voador", 1, 2000, 300),
	   ("Passarinho", "feminino", 2, "corrida", 2, 1500, 2000),
	   ("Peixe palhaço", "masculino", 3, "invisivel", 3, 2000, 3000),
	   ("Formiga", "feminino", 2, "fogo", 4, 4000, 1000),
       ("Bulldog", "masculino", 3, "gelo", 1, 1000, 3000),
	   ("Canário", "feminino", 3, "tempestade", 2, 2000, 2000),
	   ("Peixe espada", "masculino", 2, "canivete", 3, 4000, 4000),
	   ("Besouro", "feminino", 2, "pedra", 4, 4000, 1000);
       
-- Visualiza todos os dados da tabela tb_personagens
SELECT * FROM tb_personagens;
		
-- Um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE 1000 < poder_defesa < 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens WHERE nome LIKE "%c";
SELECT * FROM tb_personagens WHERE nome LIKE "c%";

-- SELECT com INNER JOIN
SELECT tb_personagens.nome AS personagens_nome,
tb_personagens.nivel AS nivel_personagem,
tb_classes.nome AS nome_classe,
tb_classes.genero AS genero_classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- SELECT com INNER JOIN e apenas os personagens que pertençam a uma classe específica
SELECT tb_personagens.nome AS personagens_nome,
tb_personagens.nivel AS nivel_personagem,
tb_classes.nome AS nome_classe,
tb_classes.genero AS genero_classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Cachorro";

