CREATE DATABASE ex_slide_1;

USE ex_slide_1;

CREATE TABLE departamento(
	cd_departamento INTEGER,
	nm_departamento VARCHAR(30),

	PRIMARY KEY (cd_departamento)
);

CREATE TABLE funcionario(
	cd_funcionario INTEGER,
	cd_departamento INTEGER,
	nm_funcionario VARCHAR(30),
	salario_funcionario DECIMAL(11,2),
	
	
	PRIMARY KEY (cd_funcionario),
	FOREIGN KEY (cd_departamento) REFERENCES departamento(cd_departamento)
);


INSERT INTO departamento(cd_departamento, nm_departamento) VALUES 
(1, 'COMPRAS'),
(2, 'VENDAS'),
(3, 'FINANCEIRO'),
(4, 'RH'),
(5, 'LOGÍSTICA'),
(6, 'TI'),
(7, 'MARKETING'),
(8, 'ATENDIMENTO'),
(9, 'ADMINISTRAÇÃO'),
(10, 'PRODUÇÃO');


INSERT INTO funcionario(cd_funcionario, cd_departamento, nm_funcionario, salario_funcionario) VALUES 
(1, 3, 'CAIO AMARO', 10000),
(2, 2, 'BRUNNA LIMA', 9500),
(3, 1, 'LUCAS SOUSA', 8700),
(4, 4, 'ANA CAROLINA', 9100),
(5, 5, 'FELIPE MELO', 7600),
(6, 6, 'JULIA COSTA', 8800),
(7, 7, 'RAFAEL DIAS', 9200),
(8, 8, 'CARLA MENDES', 9700),
(9, 9, 'GUSTAVO ALVES', 8400),
(10, 10, 'RENATA VIEIRA', 8900),
(11, 1, 'DANIEL ROCHA', 9300),
(12, 2, 'MARCELA BRITO', 8600),
(13, 3, 'TIAGO PEREIRA', 9400),
(14, 4, 'LARISSA NUNES', 8900),
(15, 5, 'PEDRO HENRIQUE', 8200),
(16, 6, 'MARIA FERNANDA', 9800),
(17, 7, 'JOÃO VICTOR', 8500),
(18, 8, 'ISABELA RIBEIRO', 9000),
(19, 9, 'RODRIGO SILVA', 9100),
(20, 10, 'BEATRIZ CASTRO', 9600);

SELECT * FROM departamento;
SELECT * FROM funcionario;

UPDATE funcionario SET
 salario_funcionario = 5000
WHERE cd_funcionario = 20;

SELECT * FROM funcionario;

DELETE FROM funcionario
WHERE cd_funcionario = 20;

SELECT * FROM funcionario;

UPDATE funcionario SET
 salario_funcionario = 5000
WHERE 
cd_funcionario = 20
OR
salario_funcionario >= 6000;


SELECT * FROM funcionario;






