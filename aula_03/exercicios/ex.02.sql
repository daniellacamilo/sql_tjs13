CREATE DATABASE db_pizzaria_legal;

-- Selecionar o Banco de Dados db_pizzaria_legal
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);
       
SELECT * FROM tb_categorias;

-- Insira 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao)
VALUES ("Queijo", "Pizza com tomate, queijo e manjericao"),
	   ("Vegana", "Pizza com tomate, queijo, cebola, pimentao e ovo"),
	   ("Doce", "Pizza com queijo e calabresa"),
	   ("Tradicional", "Pizza com quatro tipos de queijo"),
	   ("Especial", "Pizza com tomate, queijo e molho de tomate especial");
       
SELECT * FROM tb_categorias;
       
-- Criar a tabela tb_pizzas
CREATE TABLE tb_pizzas (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
sabor varchar(255),
tamanho ENUM ('P', 'M', 'G') NOT NULL,
preco decimal (6,2) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzas;

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias
INSERT INTO tb_pizzas (nome, sabor, tamanho, preco, categoria_id)
VALUES ("Marguerita", "queijo e tomate", "P", 50.00, 4),
	   ("Portuguesa", "ovo e cebola", "M", 59.90, 5),
	   ("Calabresa", "calabresa e queijo", "G", 49.50, 4),
	   ("Quatro queijos", "queijo", "P", 55.90, 5),
	   ("Pomodoro", "molho de tomate", "M", 46.90, 1);
       
SELECT * FROM tb_pizzas;

-- Um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas WHERE nome LIKE "%m";
SELECT * FROM tb_pizzas WHERE nome LIKE "m%";

-- Um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT tb_pizzas.nome AS nome_pizza,
tb_categorias.nome AS nome_categoria,
tb_pizzas.sabor AS sabor_da_pizza,
preco 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- Um SELECT com INNER JOIN e apenas as pizzas que pertençam a uma categoria específica
SELECT tb_pizzas.nome AS nome_pizza,
tb_categorias.nome AS nome_categoria,
tb_pizzas.sabor AS sabor_da_pizza
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Especial";






