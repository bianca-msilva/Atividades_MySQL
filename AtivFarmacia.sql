CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(255) NOT NULL,
    tipo_produto VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    fabricante VARCHAR(255),
    validade DATE NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY(id_produto),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Medicamento", "Medicamento controlado");
INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Medicamento", "Genérico");
INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Medicamento", "De Referência");
INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Vitaminas e Suplementos", "Cuidados pessoais");
INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Cosméticos", "Higiene");
INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Cosméticos", "SkinCare");
INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Cosméticos", "BodyCare");
INSERT INTO tb_categorias(categoria, tipo_produto) VALUES ("Cosméticos", "Maquiagens");

INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Rivotril 2mg', 'Roche', '2026-08-15', 28.90, 1);
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Paracetamol Genérico 500mg', 'Medley', '2025-12-31', 5.50, 2);
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Tylenol 500mg', 'Janssen', '2026-03-20', 12.90, 3);
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Vitamina C 1g', 'Neo Química', '2027-01-10', 19.90, 4);
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Sabonete Líquido Antisséptico', 'Granado', '2025-11-05', 14.50, 5);
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Sérum Facial com Ácido Hialurônico', 'La Roche-Posay', '2026-09-30', 89.90, 6);
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Loção Corporal Hidratante', 'Natura', '2026-05-12', 22.90, 7); 
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Base Líquida Matte', 'Vult', '2026-07-01', 39.90, 8);
INSERT INTO tb_produtos (nome, fabricante, validade, preco, categoria_id) VALUES ('Dipirona Genérico 500mg', 'EMS', '2025-10-20', 4.90, 2);

UPDATE tb_produtos SET preco = 41.25 WHERE id_produto = 8;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id ORDER BY tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.categoria = "Medicamento" ORDER BY tb_produtos.nome;