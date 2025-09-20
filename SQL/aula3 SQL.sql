USE caramelo;

CREATE TABLE tb_clientes (id INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(100), 
data_nascimento DATE, 
sexo VARCHAR(20), 
email VARCHAR(150), 
telefone VARCHAR(50),
cidade VARCHAR(100), 
estado VARCHAR(2), 
data_cadastro DATE);

CREATE TABLE tb_produtos ( id INT PRIMARY KEY AUTO_INCREMENT, 
nome_produto VARCHAR(200), 
categoria VARCHAR(100), 
subcategoria VARCHAR(100), 
marca VARCHAR(100), 
preco_unitario DECIMAL(10,2));

CREATE TABLE tb_vendas ( id INT PRIMARY KEY, 
data_venda DATE, 
id_cliente INT, 
FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id), 
id_produto INT, 
FOREIGN KEY (id_produto) REFERENCES tb_produtos(id),
quantidade INT, 
forma_pagamento VARCHAR(100), 
canal_venda VARCHAR(100));

SET GLOBAL local_infile = 1;

LOAD DATA INFILE 'C:/Users/leticya.franca/Downloads/tb_clientes.csv'
INTO TABLE tb_clientes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nome_cliente, data_nascimento, sexo, email, telefone, cidade, estado, data_cadastro);

LOAD DATA INFILE 'C:/Users/leticya.franca/Downloads/tb_produtos (1).csv'
INTO TABLE tb_produtos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nome_produto, categoria, subcategoria, marca, preco_unitario);

LOAD DATA INFILE 'C:/Users/leticya.franca/Downloads/tb_vendas.csv'
INTO TABLE tb_vendas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


DROP TABLE tb_produtos;

DROP TABLE tb_clientes;

DROP TABLE tb_vendas;

SELECT * FROM tb_clientes;

SELECT * FROM tb_vendas;

SELECT * FROM tb_produtos;

SELECT forma_pagamento, COUNT(quantidade) AS vendas_forma_de_pagamento 
FROM tb_vendas 
GROUP BY forma_pagamento;

SELECT canal_venda, AVG(quantidade) AS vendas_por_canal 
FROM tb_vendas 
GROUP BY canal_venda;

SELECT canal_venda, SUM(quantidade) AS mais_200_por_canal 
FROM tb_vendas 
GROUP BY canal_venda 
HAVING mais_200_por_canal > 200; 

# SELECT 

SELECT nome_produto, AVG(preco_unitario) AS superior_media 
