SELECT * FROM pessoa;
SELECT * FROM ocorrencia;
SELECT * FROM infrator_ocorrencia;
SELECT * FROM vitima_ocorrencia;
SELECT * FROM veiculo;
SELECT * FROM apreensao;
SELECT * FROM denuncia;
SELECT * FROM arma;

-- Pessoas nascidas depois de 2000
SELECT *
FROM pessoa
WHERE dt_nasc_fund > "2000-01-01"
ORDER BY nome ASC;

-- Funcionários
SELECT nome, cpf_cnpj 
FROM pessoa
WHERE funcionario = 1;

-- Criminosos
SELECT p.id_pessoa, p.nome, p.situacao, o.id_ocorrencia, o.tipo
FROM ((pessoa p
INNER JOIN infrator_ocorrencia io ON  io.id_pessoa = p.id_pessoa)
INNER JOIN ocorrencia o ON io.id_ocorrencia = o.id_ocorrencia);

-- Veículos retidos
SELECT v.id_veiculo, v.renavam, v.marca, a.situacao, p.nome, p.cpf_cnpj
FROM ((veiculo v
INNER JOIN apreensao a ON v.id_veiculo = a.id_veiculo)
INNER JOIN pessoa p ON v.id_proprietario = p.id_pessoa)
WHERE a.situacao LIKE "retido";

-- Denunciados
SELECT p.nome, p.cpf_cnpj, p.situacao, d.dt_denuncia, d.motivo, d.confirmada
FROM ((pessoa p
INNER JOIN denuncia_denunciado dd ON p.id_pessoa = dd.id_pessoa)
INNER JOIN denuncia d ON dd.id_denuncia = d.id_denuncia);