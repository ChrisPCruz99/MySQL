CREATE DATABASE db_pizzariadozeh;

USE db_pizzariadozeh;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255),
	tamanho CHAR
);

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(255),
    quantidade INT,
    acompanhamento VARCHAR(255),
    borda_recheada BOOLEAN,
    valor INT,
	categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(nome_categoria,tamanho) 
VALUES("Salgada","P");
INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Salgada","M");
INSERT INTO tb_categoria(nome_categoria,tamanho) 
VALUES("Salgada","G");
INSERT INTO tb_categoria(nome_categoria,tamanho) 
VALUES("Doce","P");
INSERT INTO tb_categoria(nome_categoria,tamanho) 
VALUES("Doce","M");
INSERT INTO tb_categoria(nome_categoria,tamanho) 
VALUES("Doce","G");
INSERT INTO tb_categoria(nome_categoria,tamanho) 
VALUES("Vegetariana","P");
INSERT INTO tb_categoria(nome_categoria,tamanho) 
VALUES("Vegetariana","M");
INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Vegetariana","G");

SELECT*FROM tb_categoria;

INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Mussarela",1,"Coca-Cola",true,48,3);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Calabresa",2,"Suco de Maracujá",false,50,2);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Toscana",1,"Vinho",false,55,3);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Gorgonzola",1,"Agua c/ Gás",false,85,1);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("MM's",1,"Soda",false,50,4);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Prestigio",1,"Dell Vale",false,70,5);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Romeu e Julieta",1,"Coca Cola 2l",false,75,6);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Abobrinha",1,"Heineken",true,50,7);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Brocolis c/ Catupiry",2,"Suco de laranja",true,80,8);
INSERT INTO tb_pizza (sabor,quantidade,acompanhamento,borda_recheada,valor,categoria_id)
VALUES ("Escarola",1,"Vinho",true,80,9);

SELECT*FROM tb_pizza;
SELECT*FROM tb_pizza WHERE valor >50;
SELECT*FROM tb_pizza WHERE valor BETWEEN 60 AND 100;
SELECT*FROM tb_pizza WHERE sabor LIKE "%m%";

SELECT*FROM tb_pizza INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.categoria_id;

SELECT*FROM tb_pizza INNER JOIN tb_categoria 
ON tb_categoria.id = tb_pizza.categoria_id
WHERE nome_categoria LIKE "%doce%";

SELECT*FROM tb_pizza INNER JOIN tb_categoria 
ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_categoria.id = 4;
