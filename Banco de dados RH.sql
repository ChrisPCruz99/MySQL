CREATE DATABASE rh;
USE rh;

CREATE TABLE colaboradores(
	id BIGINT auto_increment PRIMARY KEY,
    nome VARCHAR(255),
    setor VARCHAR(255),
    cargo VARCHAR(255),
	salario DECIMAL(10,2)
);

INSERT INTO colaboradores(nome,setor,cargo,salario)
VALUES ("Christian","Desenvolvimento","Dev JR",3500);

INSERT INTO colaboradores(nome,setor,cargo,salario)
VALUES ("José","Desenvolvimento","Analista",3800);

INSERT INTO colaboradores(nome,setor,cargo,salario)
VALUES ("João","Dir","Gerente",6000);

INSERT INTO colaboradores(nome,setor,cargo,salario)
VALUES ("Bart","Desenvolvimento","Dev Senior",10000);

INSERT INTO colaboradores(nome,setor,cargo,salario)
VALUES ("Samuel","Limpeza","Aux. de limpeza",3000);

SELECT*FROM colaboradores;

SELECT*FROM colaboradores WHERE salario <2000;
SELECT*FROM colaboradores WHERE salario >2000;

UPDATE colaboradores SET salario = 1900.00  WHERE id=5;
