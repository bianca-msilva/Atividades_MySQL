CREATE DATABASE dpto_rh;

USE dpto_rh;

CREATE TABLE tb_colaboradores(
	id_colaborador BIGINT AUTO_INCREMENT,
    nome_completo VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    data_admissao DATE NOT NULL, 
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id_colaborador)
);

INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, data_admissao, salario) VALUES ("Bianca Maria da Silva", "Desenvolvedora Fullstack", "TI", "2025-01-01", 4500);
INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, data_admissao, salario) VALUES ("Mariana Santos", "Especialista em Cybersegurança", "TI - Segurança da Informação", "2024-10-01", 6500);
INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, data_admissao, salario) VALUES ("João Oliveira", "Gerente", "RH", "2001-05-25", 3500);
INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, data_admissao, salario) VALUES ("Ana Clara da Silva", "Analista de marketing", "Marketing e Comunicação", "2021-07-17", 2500);
INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, data_admissao, salario) VALUES ("Lucas Cardoso", "Consultor financeiro", "Financeiro", "2000-11-23", 5600.62);
INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, data_admissao, salario) VALUES ("Flor Maria", "Auxiliar de limpeza", "Limpeza", "2003-12-07", 1320.62);
INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, data_admissao, salario) VALUES ("Mateus Ventura Silva", "Estagiário TI", "TI", "2025-03-11", 720.53);

UPDATE tb_colaboradores SET salario = 5500 WHERE id_colaborador = 1;
UPDATE tb_colaboradores SET salario = 1320.25 WHERE id_colaborador = 6;

UPDATE tb_colaboradores SET cargo = "Suporte TI Junior" WHERE id_colaborador = 7;
UPDATE tb_colaboradores SET salario = 3520.75 WHERE id_colaborador = 7;
UPDATE tb_colaboradores SET departamento = "TI" WHERE id_colaborador = 7;

-- Selecionar salários maiores que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;
-- Selecionar salários menores que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;
SELECT * FROM tb_colaboradores;