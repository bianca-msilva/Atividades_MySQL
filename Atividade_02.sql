CREATE DATABASE db_estetica_automotiva;

USE db_estetica_automotiva;

CREATE TABLE tb_produtos(
	id_produto BIGINT AUTO_INCREMENT,
    nome_prod VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    estoque BIGINT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id_produto)
);

INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Calota de Roda VW", "Automóveis", "Calota de Roda original 14 polegadas para seu VW", 380, 100, "VolksWagen");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Calotas Com O Brasão Colorido", "Automóveis", "Calotas Com O Brasão Colorido - Kit De 4 Unidades.", 50, 2543.00, "Porsche");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Calotas Ferrari", "Automóveis", "Calotas Ferrari PuroSangue - Kit De 4 Unidades.", 15, 3565.78, "Ferrari");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Kit Lavagem Simples", "Uso externo - Limpeza", "Este kit reúne o shampoo automotivo de alta performance V-Floc com uma luva chenille ultra macia e uma flanela de secagem de grande porte, garantindo limpeza profunda sem riscos e secagem rápida e sem marcas na pintura.", 234, 87.30, "Vonixx");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("V-Leather Pro 50ml - Vonixx", "Uso interno - Proteção Couro", "O V-Leather Pro 50ml da Vonixx é um ceramic coating premium para couro.", 125, 121.15, "Vonixx");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Blend Ceramic Carnaúba Paste Wax Black Edition", "Uso externo - Proteção Pintura", "A Blend Ceramic & Carnaúba Paste Wax Black Edition da Vonixx é uma cera híbrida premium, especialmente formulada para veículos de cor escura.", 100, 89.15, "Vonixx");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Toalha de Microfibra Para Secagem", "Uso externo - Limpeza", "A Toalha de Microfibra Coreana 47x87cm da Detailer foi desenvolvida para quem busca eficiência e segurança na secagem automotiva.", 450, 25.45, "Detailer");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Pulverizador Gerador de Espuma Manual", "Uso externo - Limpeza", "Com capacidade útil de 1,5 litros, ele gera uma espuma densa e homogênea.", 250, 133.65, "Guarany");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Limpa Ar Condicionado Carro", "Uso interno - Limpeza", "É a solução ideal para higienizar dutos e o sistema de ventilação automotivo.", 310, 15.85, "Orbi Air");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Espuma Limpadora Limpa Estofados", "Uso interno - Limpeza", "A solução ideal para quem busca eficiência e agilidade na limpeza a seco de estofados automotivos ou domésticos.", 215, 20.80, "Luxcar");
INSERT INTO tb_produtos(nome_prod, categoria, descricao, estoque, preco, marca) VALUES("Restaurax Aerossol", "Uso externa - Proteção", "O Restaurax Aerossol 400ml da Vonixx foi desenvolvido para renovar e proteger superfícies plásticas externas do veículo.", 520, 41.99, "Vonixx");

ALTER TABLE tb_produtos ADD marca VARCHAR(255);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
SELECT * FROM tb_produtos;