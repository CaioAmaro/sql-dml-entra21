CREATE DATABASE ex5_caio;
USE ex5_caio;

CREATE TABLE cor(
	cd_cor INTEGER AUTO_INCREMENT,
	ds_cor VARCHAR(30) NOT NULL,
	
	PRIMARY KEY (cd_cor)
);

INSERT INTO cor(ds_cor) VALUE 
('LARANJA'),
('ROXO'),
('AZUL'),
('VERDE'),
('VERMELHO'),
('AMARELO'),
('PRETO'),
('BRANCO'),
('ROSA'),
('CINZA');

CREATE TABLE acessorio(
	cd_acessorio INTEGER AUTO_INCREMENT,
	ds_acessorio VARCHAR(50)  NOT NULL,
	
	PRIMARY KEY (cd_acessorio)
);

INSERT INTO acessorio(ds_acessorio) VALUE
('AR-CONDICIONADO'),
('DIREÇÃO HIDRÁULICA'),
('VIDRO ELÉTRICO'),
('TRAVA ELÉTRICA'),
('SOM AUTOMOTIVO'),
('RODAS DE LIGA LEVE'),
('ALARME'),
('CÂMERA DE RÉ'),
('BANCOS DE COURO'),
('TETO SOLAR');

CREATE TABLE localidade(
	cd_localidade INTEGER AUTO_INCREMENT,
	nm_localidade VARCHAR(50) NOT NULL UNIQUE,
	
	PRIMARY KEY (cd_localidade)
);

INSERT INTO localidade(nm_localidade) VALUE
('CENTRO'),
('SALTO DO NORTE'),
('VILA NOVA'),
('ITOPAVA NORTE'),
('GARCIA'),
('PONTE AGUDA'),
('ÁGUA VERDE'),
('VELHA'),
('FIDÉLIS'),
('FORTALEZA');

CREATE TABLE marca(
	cd_marca INTEGER AUTO_INCREMENT,
	ds_marca VARCHAR(30) NOT NULL UNIQUE,
	
	PRIMARY KEY (cd_marca)
);

INSERT INTO marca(ds_marca) VALUE
('TOYOTA'),
('FORD'),
('CHEVROLET'),
('VOLKSWAGEN'),
('HONDA'),
('HYUNDAI'),
('NISSAN'),
('FIAT'),
('MERCEDES-BENZ'),
('BMW');

CREATE TABLE combustivel(
	cd_combustivel INTEGER AUTO_INCREMENT,
	ds_combustivel VARCHAR(30) UNIQUE NOT NULL,
	
	PRIMARY KEY (cd_combustivel)
);

INSERT INTO combustivel(ds_combustivel) VALUE
('GASOLINA'),
('DIESEL'),
('ÁLCOOL'),
('GNV'),
('ELETRICIDADE'),
('HÍBRIDO'),
('GPL'),
('BIODIESEL'),
('QUEROSENE'),
('METANOL');

CREATE TABLE modelo(
	cd_modelo INTEGER AUTO_INCREMENT,
	cd_marca INTEGER NOT NULL,
	ds_modelo VARCHAR(30) NOT NULL,
	
	PRIMARY KEY (cd_modelo),
	FOREIGN KEY (cd_marca) REFERENCES marca(cd_marca)
);

INSERT INTO modelo(cd_marca, ds_modelo) VALUES
(1, 'COROLLA'),
(1, 'HILUX'),
(2, 'FIESTA'),
(2, 'FOCUS'),
(3, 'ONIX'),
(3, 'S10'),
(4, 'GOL'),
(4, 'FOX'),
(5, 'CIVIC'),
(5, 'HR-V');

CREATE TABLE proprietario(
	cd_proprietario INTEGER AUTO_INCREMENT,
	cd_localidade INTEGER NOT NULL,
	nm_proprietario VARCHAR(50) NOT NULL,
	ds_logradouro VARCHAR(50) NOT NULL,
	ds_complemento VARCHAR(50) NOT NULL,
	ds_bairro VARCHAR(50) NOT NULL,
	nr_telefone VARCHAR(15) NOT NULL,
	ds_email VARCHAR(50) NOT NULL,
	sg_uf CHAR(2) NOT NULL,
	
	PRIMARY KEY (cd_proprietario),
	FOREIGN KEY (cd_localidade) REFERENCES localidade(cd_localidade)
);

INSERT INTO proprietario(cd_localidade, nm_proprietario, ds_logradouro, ds_complemento,ds_bairro,nr_telefone,ds_email, sg_uf) VALUE
(1, 'Caio Amaro', 'Rua das Flores, 123', 'Apto 101', 'Salto do Norte', '47999990001', 'caio.amaro@email.com', 'SC'),
(2, 'Brunna Lima', 'Av. Brasil, 456', 'Casa', 'Centro', '47988880002', 'brunna.lima@email.com', 'SC'),
(3, 'Lucas Sousa', 'Rua das Palmeiras, 789', '', 'Vila Nova', '47977770003', 'lucas.sousa@email.com', 'SC'),
(4, 'Ana Carolina', 'Travessa das Acácias, 12', 'Bloco B', 'Itopava Norte', '47966660004', 'ana.carolina@email.com', 'SC'),
(5, 'Felipe Melo', 'Rua 7 de Setembro, 345', '', 'Garcia', '47955550005', 'felipe.melo@email.com', 'SC'),
(6, 'Julia Costa', 'Av. Getúlio Vargas, 987', 'Sala 3', 'Ponte Aguda', '47944440006', 'julia.costa@email.com', 'SC'),
(7, 'Rafael Dias', 'Rua das Orquídeas, 654', '', 'Água Verde', '47933330007', 'rafael.dias@email.com', 'SC'),
(8, 'Carla Mendes', 'Rua dos Pinheiros, 321', 'Casa', 'Velha', '47922220008', 'carla.mendes@email.com', 'SC'),
(9, 'Gustavo Alves', 'Av. Getúlio Vargas, 111', 'Apto 402', 'Fidélis', '47911110009', 'gustavo.alves@email.com', 'SC'),
(10, 'Renata Vieira', 'Rua Marechal Deodoro, 222', '', 'Fortaleza', '47900000010', 'renata.vieira@email.com', 'SC');

CREATE TABLE veiculo(
	nr_placa CHAR(7) NOT NULL,
	cd_cor INTEGER NOT NULL,
	cd_proprietario INTEGER NOT NULL,
	cd_modelo INTEGER NOT NULL,
	nr_ano_fab INTEGER NOT NULL,
	nr_ano_mod INTEGER NOT NULL,
	qt_km_rodado INTEGER NOT NULL,
	qt_portas INTEGER NOT NULL,
	ds_observacao VARCHAR(100) NOT NULL,
	
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
	cd_combustivel INTEGER NOT NULL,
	nr_placa CHAR(7) NOT NULL,
	
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
	nr_placa CHAR(7) NOT NULL,
	cd_acessorio INTEGER NOT NULL,
	
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