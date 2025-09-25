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

SELECT tb_clientes.estado, SUM(tb_vendas.quantidade) AS total_vendido
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
GROUP BY tb_clientes.estado;

# produtos que foram vendidos em quantidade superior à média geral.


SELECT tb_clientes.nome_cliente, COUNT(tb_vendas.id) AS total_compras
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
GROUP BY tb_clientes.nome_cliente
HAVING total_compras > 5;

SELECT tb_produtos.categoria, SUM(tb_vendas.quantidade) AS total_vendido
FROM tb_vendas
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
GROUP BY tb_produtos.categoria;

# produtos que tiveram vendas apenas via e-commerce.

SELECT tb_clientes.nome_cliente
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
WHERE tb_produtos.categoria = 'Smartphone'
GROUP BY tb_clientes.nome_cliente;

SELECT tb_produtos.nome_produto
FROM tb_produtos
LEFT JOIN tb_vendas ON tb_produtos.id = tb_vendas.id_produto
WHERE tb_vendas.id IS NULL;


SELECT tb_produtos.subcategoria, AVG(tb_vendas.quantidade) AS media_quantidade
FROM tb_vendas
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
GROUP BY tb_produtos.subcategoria;

SELECT tb_clientes.estado, AVG(tb_vendas.quantidade) AS media_quantidade
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
GROUP BY tb_clientes.estado
HAVING media_quantidade > 3;

SELECT tb_clientes.id, tb_clientes.nome_cliente, 
COUNT(tb_produtos.subcategoria) AS qtd_subcategorias
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
GROUP BY tb_clientes.id, tb_clientes.nome_cliente
HAVING qtd_subcategorias > 1;

SELECT tb_produtos.id, tb_produtos.nome_produto, 
COUNT(tb_vendas.id_cliente) AS qtd_clientes
FROM tb_vendas
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
GROUP BY tb_produtos.id, tb_produtos.nome_produto
HAVING qtd_clientes > 10;

# Canais de venda com vendas abaixo da média geral

SELECT tb_produtos.id, tb_produtos.nome_produto
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
WHERE tb_clientes.estado = 'RJ'
GROUP BY tb_produtos.id, tb_produtos.nome_produto;

SELECT tb_clientes.id, tb_clientes.nome_cliente
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
WHERE tb_produtos.marca = 'Samsung'
GROUP BY tb_clientes.id, tb_clientes.nome_cliente;

## Produtos vendidos em todos os canais disponíveis

SELECT tb_clientes.id, tb_clientes.nome_cliente, 
COUNT(tb_vendas.id) AS qtd_compras
FROM tb_vendas
JOIN tb_clientes ON tb_vendas.id_cliente = tb_clientes.id
GROUP BY tb_clientes.id, tb_clientes.nome_cliente
HAVING qtd_compras = 1;

SELECT tb_produtos.id, tb_produtos.nome_produto, 
AVG(tb_vendas.quantidade) AS media_quantidade
FROM tb_vendas
JOIN tb_produtos ON tb_vendas.id_produto = tb_produtos.id
GROUP BY tb_produtos.id, tb_produtos.nome_produto
HAVING media_quantidade > 2;



