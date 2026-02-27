CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
tamanho int, 
cor varchar(255),
marca varchar(255),
preco decimal (10, 2), 
PRIMARY KEY (id)

);

INSERT INTO tb_produtos(nome, tamanho, cor, marca, preco) 
VALUES  ("calca", "36", "azul","adidas", "550.00"),
        ("short", "34", "branco", "nike", "189.00"),
        ("blusa", "38", "preto", "fila", "129.00"),
        ("calcinha", "44", "vermelho", "lycra", "59.90"),
        ("sutia", "48", "azul", "lycra", "89.90"),
        ("cueca", "52", "branco", "zorba", "59.90"),
        ("casaco", "32", "preto", "nike", "478.90");
        ("top", "32", "preto", "nike", "199.90");
        
SELECT * FROM tb_produtos;

-- SELECT que retorne todes os produtos > 500
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- SELECT que retorne todes os produtos < 500
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 399.00, tamanho = 48 WHERE id = 7;