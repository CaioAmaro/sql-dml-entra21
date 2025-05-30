CREATE DATABASE ex6_caio;

USE ex6_caio;

CREATE TABLE table_area(
	cd_area INTEGER AUTO_INCREMENT,
	nm_area VARCHAR(50),
	
	PRIMARY KEY (cd_area)
);

CREATE TABLE professor(
	cd_professor INTEGER AUTO_INCREMENT,
	nm_professor VARCHAR(50),
	cd_area INTEGER,
	
	PRIMARY KEY (cd_professor),
	FOREIGN KEY (cd_area) REFERENCES table_area(cd_area)
);

CREATE TABLE aluno(
	cd_aluno INTEGER AUTO_INCREMENT,
	nm_aluno VARCHAR(50),
	dt_nascimento DATE,
	media_aluno DECIMAL(11,2),
	cd_professor INTEGER,
	
	PRIMARY KEY (cd_aluno),
	FOREIGN KEY (cd_professor) REFERENCES professor(cd_professor)
);


INSERT INTO  table_area(nm_area) VALUE 
	 ('AGRICULTURA'),
    ('TECNOLOGIA'),
    ('CIÊNCIAS EXATAS'),
    ('CIÊNCIAS HUMANAS'),
    ('ENGENHARIAS'),
    ('CIÊNCIAS DA SAÚDE'),
    ('CIÊNCIAS BIOLÓGICAS'),
    ('CIÊNCIAS SOCIAIS APLICADAS'),
    ('LINGUÍSTICA, LETRAS E ARTES'),
    ('EDUCAÇÃO');
    
    
INSERT INTO  professor(nm_professor, cd_area) VALUE 
	 ("Ana Souza", 1),
    ("Bruno Lima", 2),
    ("Carla Mendes", 3),
    ("Daniel Rocha", 4),
    ("Eduardo Silva", 5),
    ("Fernanda Alves", 6),
    ("Gustavo Martins", 7),
    ("Helena Costa", 8),
    ("Igor Santos", 9),
    ("Juliana Ribeiro", 10),
    ("Karla Torres", 1),
    ("Lucas Pinto", 2),
    ("Mariana Dias", 3),
    ("Nelson Teixeira", 4),
    ("Olívia Nunes", 5),
    ("Paulo Henrique", 6),
    ("Quésia Barreto", 7),
    ("Rafael Antunes", 8),
    ("Simone Carvalho", 9),
    ("Tiago Moura", 10),
    ("Ubirajara Freitas", 1),
    ("Vanessa Almeida", 2),
    ("Wagner Lopes", 3),
    ("Xênia Duarte", 4),
    ("Yara Oliveira", 5),
    ("Zeca Fonseca", 6),
    ("André Lima", 7),
    ("Bianca Martins", 8),
    ("Caio Amaro", 9),
    ("Denise Melo", 10),
    ("Eliana Souza", 1),
    ("Felipe Rocha", 2),
    ("Glória Monteiro", 3),
    ("Henrique Delgado", 4),
    ("Isadora Castro", 5),
    ("Jonas Peixoto", 6),
    ("Kelly Fernandes", 7),
    ("Leandro Campos", 8),
    ("Mônica Silva", 9),
    ("Nádia Freire", 10),
    ("Orlando Braga", 1),
    ("Patrícia Gomes", 2),
    ("Rodrigo Azevedo", 3),
    ("Sônia Tavares", 4),
    ("Túlio Neves", 5),
    ("Vitor Machado", 6),
    ("Willian César", 7),
    ("Yasmin Prado", 8),
    ("Zuleide Correia", 9),
    ("Alan Barreto", 10);
    
    
INSERT INTO aluno(nm_aluno, dt_nascimento, media_aluno, cd_professor) VALUE
	 ("Rafael Fernandes", "1978-09-18", 4.5, 33),
("Igor Carvalho", "1995-10-12", 4.4, 32),
("Mariana Freitas", "1996-12-07", 4.1, 37),
("Xênia Ribeiro", "1992-11-25", 6.6, 14),
("Xênia Oliveira", "1983-04-25", 7.4, 44),
("Daniel Silva", "1991-02-09", 1.9, 36),
("Igor Teixeira", "1989-07-05", 9.8, 21),
("Karla Freitas", "1995-08-17", 5.9, 41),
("Wagner Duarte", "1983-08-03", 8.9, 16),
("Wagner Freitas", "1997-07-24", 5.2, 18),
("Lucas Mendes", "1973-06-19", 3.3, 9),
("Eliane Dias", "1985-04-11", 9.2, 2),
("Clara Moraes", "1999-08-27", 2.7, 45),
("Eduardo Campos", "1978-10-06", 4.8, 38),
("Bárbara Pinto", "1984-12-09", 7.1, 6),
("Marcos Azevedo", "1993-01-03", 6.7, 29),
("Sofia Ramos", "1987-03-21", 8.4, 7),
("João Lopes", "1994-11-11", 3.0, 23),
("Gabriela Santos", "1976-05-14", 9.5, 25),
("Felipe Cardoso", "1982-02-28", 5.8, 19),
("Mariana Souza", "1990-07-16", 7.0, 4),
("Thiago Martins", "1988-06-24", 6.3, 31),
("Ana Clara", "1977-09-09", 4.9, 12),
("Daniela Almeida", "1989-11-05", 7.6, 50),
("Carlos Ferreira", "1991-04-01", 3.7, 40),
("Patrícia Costa", "1983-08-13", 8.2, 13),
("Ricardo Moreira", "1995-12-30", 2.5, 22),
("Vanessa Rocha", "1979-10-15", 6.0, 21),
("Roberto Dias", "1986-03-17", 7.9, 8),
("Larissa Carvalho", "1992-07-19", 4.4, 34),
("Rodrigo Alves", "1980-01-25", 9.1, 27),
("Bruna Lima", "1993-05-10", 5.5, 15),
("Marcelo Nunes", "1975-09-30", 3.2, 3),
("Juliana Gomes", "1981-02-04", 6.8, 16),
("Vitor Henrique", "1984-04-23", 7.3, 39),
("Amanda Silva", "1996-08-29", 5.0, 20),
("Felipe Costa", "1978-12-12", 8.6, 35),
("Priscila Fernandes", "1990-03-01", 4.7, 26),
("Lucas Santos", "1987-09-15", 6.9, 28),
("Débora Pereira", "1994-11-21", 2.3, 17),
("Gustavo Teixeira", "1989-06-08", 9.4, 11),
("Julio César", "1974-07-22", 5.1, 5),
("Sandra Monteiro", "1982-01-29", 7.7, 36),
("Roberta Matos", "1991-05-16", 3.9, 18),
("Thiago Souza", "1985-11-20", 6.2, 14),
("Marina Rodrigues", "1993-03-23", 4.0, 13),
("Renato Carvalho", "1977-08-04", 8.8, 24),
("Patrícia Moura", "1988-12-15", 7.5, 22),
("Vinicius Lopes", "1990-06-07", 5.6, 31),
("Marcos Lima", "1983-04-10", 2.8, 33),
("Carla Silva", "1992-09-26", 9.0, 7),
("André Santos", "1976-05-02", 6.4, 38),
("Gabriela Rocha", "1984-07-30", 7.2, 39),
("Fábio Alves", "1991-10-21", 3.5, 10),
("Natália Azevedo", "1989-02-18", 8.3, 26),
("Igor Barbosa", "1985-01-15", 6.1, 41),
("Monique Ferreira", "1978-11-23", 4.3, 45),
("Rafael Moreira", "1995-08-30", 5.4, 48),
("Carolina Pinto", "1986-09-04", 9.7, 12),
("Lucas Oliveira", "1992-12-12", 2.9, 50),
("Thaís Fernandes", "1980-07-19", 7.8, 9),
("Bruno Castro", "1979-06-25", 4.6, 20),
("Camila Mendes", "1993-10-31", 8.1, 15),
("Felipe Martins", "1987-03-12", 6.7, 43),
("Ana Paula", "1991-01-05", 5.3, 22),
("Rogério Almeida", "1984-10-08", 4.2, 17),
("Vanessa Rocha", "1978-02-28", 9.9, 11),
("Eduardo Silva", "1990-05-14", 3.8, 14),
("Mariana Costa", "1983-03-11", 6.5, 27),
("Gustavo Santos", "1994-12-22", 7.9, 34),
("Patrícia Silva", "1985-06-07", 5.7, 28),
("Lucas Ferreira", "1992-08-13", 2.6, 36),
("Jéssica Rodrigues", "1977-09-02", 4.9, 29),
("Marcelo Dias", "1980-04-16", 8.0, 33),
("Carla Almeida", "1991-07-23", 7.4, 19),
("Bruna Carvalho", "1989-11-10", 6.6, 40),
("Rodrigo Martins", "1986-12-01", 4.1, 21),
("Natália Santos", "1993-05-09", 7.1, 38),
("Felipe Souza", "1987-10-18", 5.2, 24),
("Aline Pereira", "2002-03-25", 9.3, 16),
("Carlos Gomes", "1995-11-30", 6.8, 15),
("Vanessa Lima", "1990-06-15", 3.4, 13),
("Lucas Rodrigues", "1988-07-07", 8.5, 12),
("Daniela Silva", "1984-09-19", 4.7, 11),
("Rafael Fernandes", "1978-12-22", 7.0, 10),
("Fernanda Alves", "1991-08-01", 6.3, 9),
("Mariana Sousa", "2002-02-14", 5.5, 8),
("Ricardo Oliveira", "1986-10-28", 3.7, 7),
("André Souza", "1982-11-22", 8.9, 6),
("Camila Costa", "1993-03-30", 2.1, 5),
("Bruno Ferreira", "1980-01-11", 7.6, 4),
("Luciana Mendes", "2002-05-17", 9.1, 3),
("Felipe Ribeiro", "1987-09-25", 4.4, 2),
("Thais Moreira", "1989-12-09", 6.9, 1);

SELECT * FROM aluno;
SELECT * FROM aluno WHERE media_aluno > 7.0 ORDER BY media_aluno DESC;
SELECT * FROM professor WHERE cd_area = 2;
SELECT cd_aluno, nm_aluno, dt_nascimento FROM aluno WHERE dt_nascimento > "2002-01-01";
SELECT * FROM aluno WHERE cd_professor = 1;


    

   
