CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    turma VARCHAR(50),
    nota DECIMAL(6, 2),
    endereco VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, turma, nota, endereco) 
VALUES  ("Gabriel","1997-08-29","2012/2", "5.00", "Rua do Ouvir, 55" ),
        ("Victor","1992-07-24", "2013/1", "4.00", "Rua Paz de Siqueira, 12"),
        ("Isabela", "1996-12-08", "2015/2", "10.00", "Rua da Penha, 71"),
        ("Julia", "1997-02-19", "2014/2", "9.90", "Rua Florentino Avidos, 07"),
        ("Matheus", "1993-08-19", "2012/1", "8.90", "Avenida Champagnat, 200"),
        ("Jonas", "1991-01-11", "2011/2", "10.00", "Rua Diogenes Malacarne, 380"),
        ("Guilherme", "1993-09-07", "2012/1", "8.90", "Avenida Boulevard, 28"),
        ("Lucas", "1993-09-17", "2012/1", "9.70", "Rua Doutor Satamni, 292");

SELECT * FROM tb_estudantes;

-- SELECT que retorne todas as notas > 7
SELECT * FROM tb_estudantes WHERE nota > 7;

-- SELECT que retorne todas as notas < 7
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 6.00, endereco = "Avenida Maracana, 100" WHERE id = 2;




