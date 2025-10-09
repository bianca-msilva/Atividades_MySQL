CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    borda_recheada VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
	id_pizza BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    ingredientes VARCHAR(255),
    preco DECIMAL(6,2) NOT NULL,
    vegetariana BOOLEAN DEFAULT FALSE,
    categorias_id BIGINT,
    PRIMARY KEY(id_pizza),
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Tradicional", "Broto", "Catupiry");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Tradicional", "Grande", "Catupiry");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Tradicional", "Grande", "Requeijão");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Tradicional", "Broto", "Requeijão");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Tradicional", "Broto", "Sem");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Tradicional", "Grande", "Sem");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Doce", "Broto", "Chocolate");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Doce", "Grande", "Chocolate");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Doce", "Grande", "Chocolate Branco");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Doce", "Broto", "Chocolate Branco");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Doce", "Broto", "Sem");
INSERT INTO tb_categorias(tipo, tamanho, borda_recheada) VALUES("Doce", "Grande", "Sem");

INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Aliche", "Mussarela, aliche", 55.90, false, 1);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Aliche", "Mussarela, aliche", 70.90, false, 2);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Americana", "Presunto, palmito, ovo, ervilha, mussarela", 85.50, false, 2);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Brócolis", "Brócolis, mussarela vegana", 65.50, true, 9);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Brócolis", "Brócolis, mussarela vegana", 100.45, true, 10);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Churros", "Doce de leite, amendoim e canela", 39.75, false, 11);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Ninho", "Creme de leite ninho e leite ninho em pó", 68.95, false, 12);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Ninho com Morango", "Creme de leite, ninho e morango em pedaços", 51.56, false, 8);
INSERT INTO tb_pizzas(nome, ingredientes, preco, vegetariana, categorias_id) VALUES("Romeu e Julieta", "Goiabada e mussarela", 69.85, false, 9);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00 ORDER BY preco;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id ORDER BY tb_pizzas.categorias_id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id WHERE tb_categorias.borda_recheada = "Sem";

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;