CREATE TABLE pessoa (
	id_pessoa integer NOT NULL AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
	tipo boolean NOT NULL,	/* 0 = pessoa física; 1 = pessoa jurídica*/
	cpf_cnpj varchar(25) NOT NULL,
	dt_nasc_fund date NOT NULL,
	funcionario boolean NOT NULL,
	situacao varchar(15) NOT NULL,
	CONSTRAINT pk_pessoa PRIMARY KEY (id_pessoa)
);

CREATE TABLE endereco (
    id_end integer NOT NULL AUTO_INCREMENT,
    estado varchar(2) NOT NULL,
    municipio varchar(50) NOT NULL,
    CONSTRAINT pk_endereco PRIMARY KEY (id_end)
);


CREATE TABLE ocorrencia (
    id_ocorrencia integer NOT NULL AUTO_INCREMENT,
    id_end integer NOT NULL,
	tipo varchar(30) NOT NULL,
    descricao varchar(500) NOT NULL,
    situacao varchar(20) NOT NULL,
    CONSTRAINT pk_ocorrencia PRIMARY KEY (id_ocorrencia),
    CONSTRAINT fk_ocorrencia_pk_endereco FOREIGN KEY (id_end) REFERENCES endereco(id_end)
);

CREATE TABLE vitima_ocorrencia (
    id_pessoa integer,
	id_ocorrencia integer,
    CONSTRAINT fk_vitima_ocorrencia_pk_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa),
    CONSTRAINT fk_vitima_ocorrencia_pk_ocorrencia FOREIGN KEY (id_ocorrencia) REFERENCES ocorrencia(id_ocorrencia)
);

CREATE TABLE infrator_ocorrencia (
    id_pessoa integer NOT NULL,
	id_ocorrencia integer NOT NULL,
    CONSTRAINT fk_infrator_ocorrencia_pk_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa),
    CONSTRAINT fk_infrator_ocorrencia_pk_ocorrencia FOREIGN KEY (id_ocorrencia) REFERENCES ocorrencia(id_ocorrencia)
);

CREATE TABLE arma (
    id_arma integer NOT NULL AUTO_INCREMENT,
	modelo varchar(50) NOT NULL,
    situacao varchar(20) NOT NULL,
    CONSTRAINT pk_arma PRIMARY KEY (id_arma)
);

CREATE TABLE arma_ocorrencia (
	id_arma integer NOT NULL,
    id_ocorrencia integer NOT NULL,
    CONSTRAINT fk_arma_ocorrencia_pk_arma FOREIGN KEY (id_arma) REFERENCES arma(id_arma),
    CONSTRAINT fk_arma_ocorrencia_pk_ocorrencia FOREIGN KEY (id_ocorrencia) REFERENCES ocorrencia(id_ocorrencia)
);

CREATE TABLE veiculo (
    id_veiculo integer NOT NULL AUTO_INCREMENT,
	renavam varchar(25) NOT NULL UNIQUE,
    marca varchar(20),
    ano_fab integer,
    id_proprietario integer NOT NULL,
    CONSTRAINT pk_veiculo PRIMARY KEY (id_veiculo),
    CONSTRAINT fk_veiculo_pk_pessoa FOREIGN KEY (id_proprietario) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE apreensao (
    id_apreensao integer AUTO_INCREMENT,
	id_veiculo integer,
	id_ocorrencia integer,
	infracao varchar(50),
    situacao varchar(20),
    CONSTRAINT pk_apreensao PRIMARY KEY (id_apreensao),
    CONSTRAINT fk_apreensao_pk_veiculo FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    CONSTRAINT fk_apreensao_pk_ocorrencia FOREIGN KEY (id_ocorrencia) REFERENCES ocorrencia(id_ocorrencia)
);

CREATE TABLE policial_apreensao (
    id_pessoa integer,
	id_apreensao integer,
	CONSTRAINT fk_policial_apreensao_pk_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa),
	CONSTRAINT fk_policial_apreensao_pk_apreensao FOREIGN KEY (id_apreensao) REFERENCES apreensao(id_apreensao)
);

CREATE TABLE denuncia (
    id_denuncia integer NOT NULL AUTO_INCREMENT,
	dt_denuncia date NOT NULL,
    motivo varchar(255) NOT NULL,
    confirmada boolean NOT NULL,
    id_ocorrencia integer,
    CONSTRAINT pk_denuncia PRIMARY KEY (id_denuncia),
    CONSTRAINT fk_denuncia_pk_ocorrencia FOREIGN KEY (id_ocorrencia) REFERENCES ocorrencia(id_ocorrencia)
);

CREATE TABLE denuncia_denunciado (
	id_denuncia integer,
    id_pessoa integer,
	CONSTRAINT fk_denuncia_denunciado_pk_denuncia FOREIGN KEY (id_denuncia) REFERENCES denuncia(id_denuncia),
	CONSTRAINT fk_denuncia_denunciado_pk_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);