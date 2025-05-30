CREATE DATABASE ex4_caio;
USE ex4_caio;

CREATE TABLE cor(
	cd_cor INTEGER,
	ds_cor VARCHAR(30),
	
	PRIMARY KEY (cd_cor)
);

INSERT INTO cor(cd_cor, ds_cor) VALUE 
(1, 'LARANJA'),
(2, 'ROXO'),
(3, 'AZUL'),
(4, 'VERDE'),
(5, 'VERMELHO'),
(6, 'AMARELO'),
(7, 'PRETO'),
(8, 'BRANCO'),
(9, 'ROSA'),
(10, 'CINZA');

CREATE TABLE acessorio(
	cd_acessorio INTEGER,
	ds_acessorio VARCHAR(50),
	
	PRIMARY KEY (cd_acessorio)
);

INSERT INTO acessorio(cd_acessorio, ds_acessorio) VALUE
(1, 'AR-CONDICIONADO'),
(2, 'DIREÇÃO HIDRÁULICA'),
(3, 'VIDRO ELÉTRICO'),
(4, 'TRAVA ELÉTRICA'),
(5, 'SOM AUTOMOTIVO'),
(6, 'RODAS DE LIGA LEVE'),
(7, 'ALARME'),
(8, 'CÂMERA DE RÉ'),
(9, 'BANCOS DE COURO'),
(10, 'TETO SOLAR');

CREATE TABLE localidade(
	cd_localidade INTEGER,
	nm_localidade VARCHAR(50),
	
	PRIMARY KEY (cd_localidade)
);

INSERT INTO localidade(cd_localidade, nm_localidade) VALUE
(1, 'CENTRO'),
(2, 'SALTO DO NORTE'),
(3, 'VILA NOVA'),
(4, 'ITOPAVA NORTE'),
(5, 'GARCIA'),
(6, 'PONTE AGUDA'),
(7, 'ÁGUA VERDE'),
(8, 'VELHA'),
(9, 'FIDÉLIS'),
(10, 'FORTALEZA');

CREATE TABLE marca(
	cd_marca INTEGER,
	ds_marca VARCHAR(30),
	
	PRIMARY KEY (cd_marca)
);

INSERT INTO marca(cd_marca, ds_marca) VALUE
(1, 'TOYOTA'),
(2, 'FORD'),
(3, 'CHEVROLET'),
(4, 'VOLKSWAGEN'),
(5, 'HONDA'),
(6, 'HYUNDAI'),
(7, 'NISSAN'),
(8, 'FIAT'),
(9, 'MERCEDES-BENZ'),
(10, 'BMW');

CREATE TABLE combustivel(
	cd_combustivel INTEGER,
	ds_combustivel VARCHAR(30),
	
	PRIMARY KEY (cd_combustivel)
);

INSERT INTO combustivel(cd_combustivel, ds_combustivel) VALUE
(1, 'GASOLINA'),
(2, 'DIESEL'),
(3, 'ÁLCOOL'),
(4, 'GNV'),
(5, 'ELETRICIDADE'),
(6, 'HÍBRIDO'),
(7, 'GPL'),
(8, 'BIODIESEL'),
(9, 'QUEROSENE'),
(10, 'METANOL');

CREATE TABLE modelo(
	cd_modelo INTEGER,
	cd_marca INTEGER,
	ds_modelo VARCHAR(30),
	
	PRIMARY KEY (cd_modelo),
	FOREIGN KEY (cd_marca) REFERENCES marca(cd_marca)
);

INSERT INTO modelo(cd_modelo, cd_marca, ds_modelo) VALUES
(1, 1, 'COROLLA'),
(2, 1, 'HILUX'),
(3, 2, 'FIESTA'),
(4, 2, 'FOCUS'),
(5, 3, 'ONIX'),
(6, 3, 'S10'),
(7, 4, 'GOL'),
(8, 4, 'FOX'),
(9, 5, 'CIVIC'),
(10, 5, 'HR-V');

CREATE TABLE proprietario(
	cd_proprietario INTEGER,
	cd_localidade INTEGER,
	nm_proprietario VARCHAR(50),
	ds_logradouro VARCHAR(50),
	ds_complemento VARCHAR(50),
	ds_bairro VARCHAR(50),
	nr_telefone VARCHAR(15),
	ds_email VARCHAR(50),
	sg_uf CHAR(2),
	
	PRIMARY KEY (cd_proprietario),
	FOREIGN KEY (cd_localidade) REFERENCES localidade(cd_localidade)
);

INSERT INTO proprietario(cd_proprietario, cd_localidade, nm_proprietario, ds_logradouro, ds_complemento,ds_bairro,nr_telefone,ds_email, sg_uf) VALUE
(1, 1, 'Caio Amaro', 'Rua das Flores, 123', 'Apto 101', 'Salto do Norte', '47999990001', NULL, 'SC'),
(2, 2, 'Brunna Lima', 'Av. Brasil, 456', 'Casa', 'Centro', '47988880002', NULL, 'SC'),
(3, 3, 'Lucas Sousa', 'Rua das Palmeiras, 789', '', 'Vila Nova', NULL, NULL, 'SC'),
(4, 4, 'Ana Carolina', 'Travessa das Acácias, 12', 'Bloco B', 'Itopava Norte', '47966660004', 'ana.carolina@email.com', 'SC'),
(5, 5, 'Felipe Melo', 'Rua 7 de Setembro, 345', '', 'Garcia', '47955550005', 'felipe.melo@email.com', 'SC'),
(6, 6, 'Julia Costa', 'Av. Getúlio Vargas, 987', 'Sala 3', 'Ponte Aguda', '47944440006', 'julia.costa@email.com', 'SC'),
(7, 7, 'Rafael Dias', 'Rua das Orquídeas, 654', '', 'Água Verde', '47933330007', 'rafael.dias@email.com', 'SC'),
(8, 8, 'Carla Mendes', 'Rua dos Pinheiros, 321', 'Casa', 'Velha', '47922220008', 'carla.mendes@email.com', 'SC'),
(9, 9, 'Gustavo Alves', 'Av. Getúlio Vargas, 111', 'Apto 402', 'Fidélis', '47911110009', 'gustavo.alves@email.com', 'SC'),
(10, 10, 'Renata Vieira', 'Rua Marechal Deodoro, 222', '', 'Fortaleza', '47900000010', 'renata.vieira@email.com', 'SC');

CREATE TABLE veiculo(
	nr_placa CHAR(7),
	cd_cor INTEGER,
	cd_proprietario INTEGER,
	cd_modelo INTEGER,
	nr_ano_fab INTEGER,
	nr_ano_mod INTEGER,
	qt_km_rodado INTEGER,
	qt_portas INTEGER,
	ds_observacao VARCHAR(100),
	
	PRIMARY KEY (nr_placa),
	FOREIGN KEY (cd_cor) REFERENCES cor(cd_cor),
	FOREIGN KEY (cd_proprietario) REFERENCES proprietario(cd_proprietario),
	FOREIGN KEY (cd_modelo) REFERENCES modelo(cd_modelo)
);

INSERT INTO veiculo(nr_placa, cd_cor, cd_proprietario, cd_modelo,nr_ano_fab, nr_ano_mod, qt_km_rodado, qt_portas, ds_observacao) VALUE
('QWE1A23', 1, 1, 1, 2019, 2020, 52000, 4, 'Único dono, IPVA pago'),
('RTY4B56', 2, 2, 2, 2018, 2018, 68000, 4, 'Troca de pneus recente'),
('UIO7C89', 3, 3, 3, 2020, 2021, 31000, 2, 'Revisões em dia'),
('PAS0D12', 4, 4, 4, 2017, 2018, 74000, 4, 'Lataria com pequenos arranhões'),
('DFG3E45', 5, 5, 5, 2021, 2022, 19000, 4, 'Veículo seminovo'),
('HJK6F78', 6, 6, 6, 2015, 2015, 95000, 4, 'Troca de óleo em janeiro'),
('LZX9G01', 7, 7, 7, 2016, 2017, 86000, 2, 'Ar-condicionado funcionando'),
('CVB2H34', 8, 8, 8, 2022, 2022, 8000, 4, 'Carro de garagem'),
('NMK5I67', 9, 9, 9, 2013, 2014, 113000, 4, 'Revisão completa em 2024'),
('XZA8J90', 10, 10, 10, 2014, 2015, 102000, 4, 'Troca recente de correia dentada');


CREATE TABLE veiculo_combustivel(
	cd_combustivel INTEGER,
	nr_placa CHAR(7),
	
	PRIMARY KEY (nr_placa),
	FOREIGN KEY (nr_placa) REFERENCES veiculo(nr_placa),
	FOREIGN KEY (cd_combustivel) REFERENCES combustivel(cd_combustivel)
);

INSERT INTO veiculo_combustivel(cd_combustivel, nr_placa) VALUE
(1, 'QWE1A23'),
(2, 'RTY4B56'),
(3, 'UIO7C89'),
(1, 'PAS0D12'),
(4, 'DFG3E45'),
(2, 'HJK6F78'),
(5, 'LZX9G01'),
(3, 'CVB2H34'),
(1, 'NMK5I67'),
(2, 'XZA8J90');

CREATE TABLE veiculo_acessorio(
	nr_placa CHAR(7),
	cd_acessorio INTEGER,
	
	PRIMARY KEY (nr_placa, cd_acessorio),
	FOREIGN KEY (nr_placa) REFERENCES veiculo(nr_placa),
	FOREIGN KEY (cd_acessorio) REFERENCES acessorio(cd_acessorio)
);

INSERT INTO veiculo_acessorio(nr_placa, cd_acessorio) VALUE
('QWE1A23', 1),
('RTY4B56', 2),
('UIO7C89', 3),
('PAS0D12', 4),
('DFG3E45', 5),
('HJK6F78', 6),
('LZX9G01', 7),
('CVB2H34', 8),
('NMK5I67', 9),
('XZA8J90', 10);


SHOW TABLES;
SELECT * FROM modelo;
SELECT * FROM marca;
SELECT * FROM proprietario;

SELECT * FROM proprietario 
WHERE 
ds_email IS NULL
AND
nr_telefone IS NOT NULL;

SELECT * FROM veiculo;

SELECT * FROM veiculo WHERE nr_ano_fab > 2015 ORDER BY nr_ano_fab DESC;

SELECT * FROM modelo WHERE  ds_modelo LIKE('F%') ORDER BY ds_modelo DESC;

SELECT * FROM acessorio WHERE LOWER(ds_acessorio) LIKE('%som%'); 

SELECT * FROM proprietario WHERE nr_telefone LIKE('47%');

SELECT * FROM veiculo WHERE qt_portas = 2;

SELECT * FROM veiculo WHERE qt_km_rodado > 100000;
