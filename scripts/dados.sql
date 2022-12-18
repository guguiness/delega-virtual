-- Pessoa --
INSERT INTO pessoa 
	(nome, tipo, cpf_cnpj, dt_nasc_fund, funcionario, situacao) 
VALUES 
	("Lúcia Mainardes", 0, "814.245.607-99", "1991-02-01", 0, "falecido"),
	("Gilberto Boaventura", 0, "837.092.286-46", "1982-06-30", 1, "vivo"),
	("Danilo Ventura", 0, "051.156.267-56", "2000-12-05", 0, "vivo"),
	("Mainardes Computadores", 1, "01.246.044/0001-69", "2015-03-13", 0, "inativo"),
	("Alexander Pereira", 0, "123.456.789-09", "2001-08-19", 0, "vivo"),
	("Matheus Hero's", 0, "440.438.222-16", "2001-01-01", 0, "falecido"),
	("Gabriel Muniz", 0, "603.744.830-05", "2005-12-25", 1, "vivo");
	
SELECT * FROM pessoa;

-- Endereço --
INSERT INTO endereco  
	(estado, municipio)
VALUES 
	("PR", "Salgado Filho"),
	("PR", "Juranda"),
	("PB", "Campina Grande");

SELECT * FROM endereco;

-- Ocorrência -- 
INSERT INTO ocorrencia 
	(id_end, tipo, descricao, situacao)
VALUES
	(1, "latrocínio", "O suspeito, Danilo Ventura, invadiu na noite de 2022-11-16 a loja de eletrônicos Mainardes Computadores. No momento do crime a dona da loja, Lúcia Mainardes, estava terminando o expediente quando o suspeito invadiu. O suspeito baleou a vítima e roubou diversos equipamentos eletrônicos. Ele foi interceptado e preso enquanto tentava escapar em seu carro de fuga", "solucionado"),
	(2, "racismo", "A vítima, Alexander, foi vítima de racismo na tarde de 2022-11-18 no terminal central de ônibus por um homem que usava um boné vermelho, uma camiseta preta e calça jeans também preta.", "solucionado"),
	(3, "homicídio culposo", "A vítima, Matheus Hero's, foi morto a facadas pelo pai e teve o corpo abandonado no rio. O criminoso está foragido.", "investigando");
	
SELECT * FROM ocorrencia;

-- Vítimas da ocorrência --
INSERT INTO vitima_ocorrencia VALUES 
	(1, 1),
	(4, 1),
	(5, 2),
	(6, 3);

SELECT * FROM vitima_ocorrencia;
	
-- Suspeitos/Infratores da ocorrência --
INSERT INTO infrator_ocorrencia VALUES 
	(3, 1),
	(6, 2),
	(3, 3);

SELECT * FROM infrator_ocorrencia;
	
-- Arma --
INSERT INTO arma 
	(modelo, situacao)
VALUES
	("G2c .40 S&W", "apreendida");

SELECT * FROM arma;

-- Ocorrências com uso de armas --
INSERT INTO arma_ocorrencia VALUES
	(1, 1);

SELECT * FROM arma_ocorrencia;

-- Veículo --
INSERT INTO veiculo 
	(renavam, marca, ano_fab, id_proprietario)
VALUES
	("00419784047", "Fiat", 2012, 3);

SELECT * FROM veiculo;

-- Apreensao --
INSERT INTO apreensao 
	(id_veiculo, id_ocorrencia, infracao, situacao)
VALUES 
	(1, 1, "Veículo de fuga", "destruido");

SELECT * FROM apreensao;

-- Policial que realizou a apreensão --
INSERT INTO policial_apreensao VALUES
	(2, 1);

SELECT * FROM policial_apreensao;

-- Denúncia --
INSERT INTO denuncia 
	(dt_denuncia, motivo, confirmada, id_ocorrencia)
VALUES 
	("2022-12-03", "Uma pessoa estranha foi vista do lado de fora da Mainardes Computadores, esperando algo.", TRUE, 1);

SELECT * FROM denuncia;

-- Pessoa acusada na denúncia --
INSERT INTO denuncia_denunciado VALUES
	(1,3);

SELECT * FROM denuncia_denunciado;
