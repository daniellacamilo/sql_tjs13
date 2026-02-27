CREATE DATABASE db_servicorh;

USE db_servicorh;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int, 
cargo varchar(255) NOT NULL,
data_admissao date,
salario decimal (10, 2), 
PRIMARY KEY (id)

);

INSERT INTO tb_funcionarios(nome, idade, cargo, data_admissao, salario) 
VALUES ("Luiz", "29", "Analista de RH","2024-03-02", "3800.00"),
        ("Matheus", "34", "Cinegrafista", "2018-10-10", "5500.00"),
        ("Teo", "25", "Desenvolvedor Fullstack", "2020-08-18", "7400.00"),
        ("Evellyn", "28", "Analista de Marketing", "2022-02-28", "3500.00");

-- SELECT que retorne todes os colaboradores com o salário > 2000
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

-- SELECT que retorne todes os colaboradores com o salário < 2000
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

-- Atualizar um registro desta tabela 
UPDATE tb_funcionarios SET salario = 1500.00 WHERE id = 8;
        










