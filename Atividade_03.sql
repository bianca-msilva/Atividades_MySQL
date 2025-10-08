CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id_aluno BIGINT AUTO_INCREMENT,
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    turma VARCHAR(255) NOT NULL,
    contato VARCHAR(255) NOT NULL,
    media_geral DECIMAL(2,1) NOT NULL,
    PRIMARY KEY(id_aluno)
);

ALTER TABLE tb_estudantes MODIFY media_geral DECIMAL(4,2) NOT NULL;

INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("Clara Silva", "2007-10-25", "1°A EM", "19 1234-5697", 7);
INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("Beatriz Ferreira", "2009-12-08", "9°B EF", "beatriz@email.com, 19 4567-5987", 9);
INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("João Pedro", "2005-08-26", "3°A EM", "19 1234-7894", 5.75);
INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("Lucas Santos", "2008-05-06", "1°B EM", "19 5678-1234", 6);
INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("Mariana Rocha", "2010-09-07", "9°C EF", "19 4567-9874", 10);
INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("Pedro João", "2005-04-13", "3°B EM", "19 1234-5679", 8);
INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("Carolina Silva", "2006-06-20", "3°A EM", "19 1234-1234, carolinas@email.com", 9.5);
INSERT INTO tb_estudantes(nome_completo, data_nascimento, turma, contato, media_geral) VALUES ("Ana Luiza", "2009-11-05", "1°C EM", "19 5679-5697", 7.25);

UPDATE tb_estudantes SET media_geral = 7.85 WHERE id_aluno = 5;

SELECT * FROM tb_estudantes WHERE media_geral >= 7;
SELECT * FROM tb_estudantes WHERE media_geral < 7;
SELECT * FROM tb_estudantes;