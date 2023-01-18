CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    preco DECIMAL(7,2),
    quantidade INT,
    marca VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES ("Camiseta",19.90,5,"Lacoste");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES ("Calça",300.90,10,"Kelvin Claiton");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES ("Tenis",35.90,2,"Adidos");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES ("Meia",100,7,"Naique");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES ("Boné",1035.90,5,"Pumba");

-- Select que retorna todos os dados da tabela
SELECT*FROM produtos;

-- Select que retorna apenas os produtos inferior a 500
SELECT*FROM produtos WHERE preco <500;

-- Select que retorna apenas os produtos superior a 500
SELECT*FROM produtos WHERE preco >500;

UPDATE produtos 
SET marca = "Lacote"
WHERE id=1;

