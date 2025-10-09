CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    origem_animal VARCHAR(255) NOT NULL,
    nivel_demanda VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id_prod BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    temp_armazenamento DECIMAL(4,2),
    validade DATE NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(origem_animal, nivel_demanda) VALUES("Bovino", "ALta"), 
("Suíno", "Médio"),
("Frango", "Alta"),
("Outros", "Baixa");

INSERT INTO tb_produtos (nome, temp_armazenamento, validade, preco, categoria_id)
VALUES ('Picanha Premium', -2.0, '2025-11-15', 89.90, 1),      
  ('Costela Bovina', -1.5, '2025-11-10', 49.90, 1),         
  ('Linguiça Suína Artesanal', 4.0, '2025-10-25', 29.90, 2),
  ('Lombo Suíno Temperado', 4.0, '2025-10-30', 39.90, 2),   
  ('Coxa de Frango', 2.0, '2025-10-20', 18.50, 3),          
  ('Peito de Frango Desossado', 2.0, '2025-10-22', 21.90, 3),
  ('Hambúrguer Vegano', -10.0, '2025-12-01', 24.90, 4),     
  ('Carne de Javali', -5.0, '2025-11-05', 59.90, 4);        

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.origem_animal = "Bovino";
SELECT * FROM tb_produtos LEFT JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.origem_animal = "Frango";