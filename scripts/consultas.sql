SELECT * FROM pessoa;
SELECT * FROM ocorrencia;
SELECT * FROM infrator_ocorrencia;
SELECT * FROM vitima_ocorrencia;
SELECT * FROM veiculo;
SELECT * FROM denuncia;
SELECT * FROM arma;

-- Funcionários
SELECT nome, cpf_cnpj 
FROM pessoa
WHERE funcionario = 1;

-- Criminosos
SELECT p.id_pessoa, p.nome, p.situacao, o.id_ocorrencia, o.tipo
FROM ((pessoa p
INNER JOIN infrator_ocorrencia io ON  io.id_pessoa = p.id_pessoa)
INNER JOIN ocorrencia o ON io.id_ocorrencia = o.id_ocorrencia);