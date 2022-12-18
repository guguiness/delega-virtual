-- Pessoa --
INSERT INTO pessoa 
	(nome, tipo, cpf_cnpj, dt_nasc_fund, funcionario, situacao) 
VALUES 
	("Lúcia Mainardes", 0, "814.245.607-99", "1991-02-01", 0, "falecido"),
	("Gilberto Boaventura", 0, "837.092.286-46", "1982-06-30", 1, "vivo"),
	("Danilo Ventura", 0, "051.156.267-56", "2000-12-05", 0, "vivo"),
	("Mainardes Computadores", 1, "01.246.044/0001-69", "2015-03-13", 0, "inativo"),
	("Joel Prado", 0, "116.897.019-94", "1990-04-24", 0, "desaparecido"),
	("Carla Rodrigues", 0, "419.198.789-55", "1991-12-19", 0, "desaparecido"),
	("Roberto Alencar", 0, "730.443.529-16", "1985-01-10", 0, "vivo"),
	("José Ferreira", 0, "854.511.879-16", "1995-03-21", 0, "vivo");
	
SELECT * FROM pessoa;

-- Endereço --
INSERT INTO endereco  
	(estado, municipio)
VALUES 
	("PR", "Salgado Filho"),
	("PR", "Juranda");

SELECT * FROM endereco;

-- Ocorrência -- 
INSERT INTO ocorrencia 
	(id_end, tipo, descricao, situacao)
VALUES
	(1, "latrocínio", "O suspeito, Danilo Ventura, invadiu na noite de 2022-11-16 a loja de eletrônicos Mainardes Computadores. No momento do crime a dona da loja, Lúcia Mainardes, estava terminando o expediente quando o suspeito invadiu. O suspeito baleou a vítima e roubou diversos equipamentos eletrônicos. Ele foi interceptado e preso enquanto tentava escapar em seu carro de fuga", "solucionado"),
	(2, "furto", "Os suspeitos, Carla Rodrigue e Joel Prado, aplicaram um golpe na vítima, Roberto Alencar, em que, após casar-se com Roberto, Carla transferiu todo seu dinheiro para sua conta bancária e, desde o dia 2022-12-05, está foragida juntamente com Joel, que participou do planejamento do crime. O carro do casal foi abandonado e apreendido.", "aberto");
	
SELECT * FROM ocorrencia;

-- Vítimas da ocorrência --
INSERT INTO vitima_ocorrencia VALUES 
	(1, 1),
	(4, 1),
	(7, 2);

SELECT * FROM vitima_ocorrencia;
	
-- Suspeitos/Infratores da ocorrência --
INSERT INTO infrator_ocorrencia VALUES 
	(3, 1),
	(5, 2),
	(6, 2);

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
	("00419784047", "Fiat", 2012, 3),
	("65417692409", "Ford", 1995, 5);

SELECT * FROM veiculo;

-- Apreensao --
INSERT INTO apreensao 
	(id_veiculo, id_ocorrencia, infracao, situacao)
VALUES 
	(1, 1, "Veículo de fuga", "destruido"),
	(2, 2, "Abandono", "retido");

SELECT * FROM apreensao;

-- Policial que realizou a apreensão --
INSERT INTO policial_apreensao VALUES
	(2, 1),
	(2, 2);

SELECT * FROM policial_apreensao;

-- Denúncia --
INSERT INTO denuncia 
	(dt_denuncia, motivo, confirmada, id_ocorrencia)
VALUES 
	("2022-12-03", "Uma pessoa estranha foi vista do lado de fora da Mainardes Computadores, esperando algo.", TRUE, 1),
	("2022-12-10", "O vizinho da testemunha toca música alta o dia todo, incomodando a vizinhança", FALSE, NULL);

SELECT * FROM denuncia;

-- Pessoa acusada na denúncia --
INSERT INTO denuncia_denunciado VALUES
	(1,3),
	(2,8);

SELECT * FROM denuncia_denunciado;
