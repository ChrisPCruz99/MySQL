CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255),
	humano BOOLEAN
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
    lane VARCHAR (255),
    hp int,
    sexo VARCHAR(255),
	classe_id BIGINT,
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(classe, humano) 
VALUES("Atirador",true);
INSERT INTO tb_classes(classe,humano) 
VALUES("Atirador",false);
INSERT INTO tb_classes(classe,humano) 
VALUES("Mago",true);
INSERT INTO tb_classes(classe,humano) 
VALUES("Mago",false);
INSERT INTO tb_classes(classe,humano) 
VALUES("Guerreiro",true);
INSERT INTO tb_classes(classe,humano) 
VALUES("Guerreiro",false);

SELECT*FROM tb_classes;

INSERT INTO tb_personagens (nome,lane,hp,sexo,classe_id)
VALUES ("Lucian","BOT","300","Masc",1);
INSERT INTO tb_personagens (nome,lane,hp,sexo,classe_id)
VALUES ("Kai'sa","BOT","350","Fem",2);
INSERT INTO tb_personagens (nome,lane,hp,sexo,classe_id)
VALUES ("Ryze","MID","320","Masc",3);
INSERT INTO tb_personagens (nome,lane,hp,sexo,classe_id)
VALUES ("Vel'Koz","MID","310","Masc",4);
INSERT INTO tb_personagens (nome,lane,hp,sexo,classe_id)
VALUES ("Yasuo","TOP","400","Masc",5);
INSERT INTO tb_personagens (nome,lane,hp,sexo,classe_id)
VALUES ("Nasus","TOP","420","Masc",6);

SELECT*FROM tb_personagens;
SELECT*FROM tb_personagens WHERE hp >340;
SELECT*FROM tb_personagens WHERE hp BETWEEN 400 AND 500;
SELECT*FROM tb_personagens WHERE nome LIKE "%c%";

SELECT*FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT*FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classe_id
WHERE classe LIKE "%mago%";

SELECT*FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.id = 5;