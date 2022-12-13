CREATE TABLE pessoa (
	id_pessoa integer NOT NULL,
	nome varchar(50) NOT NULL,
	tipo boolean NOT NULL,
	cpf_cnpj varchar(14) NOT NULL,
	dt_nasc_fund date NOT NULL,
	situacao varchar(15) NOT NULL,
	CONSTRAINT pk_pessoa PRIMARY KEY (id_pessoa)
);

SELECT * FROM pessoa;

CREATE TABLE endereco (
    id_end integer NOT NULL,
    estado varchar(2) NOT NULL,
    municipio varchar(50) NOT NULL,
    CONSTRAINT pk_endereco PRIMARY KEY (id_end)
);

SELECT * FROM endereco;

CREATE TABLE ocorrencia (
    id_ocorrencia integer,
    id_end integer,
	tipo varchar(30),
    descricao varchar(255),
    situacao char,
    CONSTRAINT pk_ocorrencia PRIMARY KEY (id_ocorrencia),
    CONSTRAINT fk_ocorrencia_pk_endereco FOREIGN KEY (id_end) REFERENCES endereco(id_end)
);

SELECT * FROM ocorrencia;

-- TODO
CREATE TABLE vitima_ocorrencia (
    id_pessoa integer, /*chave estrangeira*/
id_ocorrencia integer /*chave estrangeira*/
);

CREATE TABLE infrator_ocorrencia (
    id_pessoa integer NOT NULL,/*chave estrangeira*/
	id_ocorrencia integer NOT NULL /*chave estrangeira*/
);

CREATE TABLE arma (
    id_arma integer NOT NULL UNIQUE, /*chave primária*/
	modelo varchar(50) NOT NULL,
    situacao varchar(20) NOT NULL
);

CREATE TABLE arma_ocorrencia (
    id_ocorrencia integer NOT NULL UNIQUE, /*chave estrangeira*/
	id_arma integer NOT NULL /*chave estrangeira*/
);

CREATE TABLE denuncia (
    id_denuncia integer NOT NULL UNIQUE,/*chave primária*/
	dt_denuncia date NOT NULL,
    motivo varchar(255) NOT NULL
);

CREATE TABLE denuncia_denunciado (
    id_pessoa integer,/* chave estrangeira */
	id_denuncia integer /* chave estrangeira */
);

CREATE TABLE veiculo (
    id_veiculo integer NOT NULL,/*chave primária*/
	renavam varchar(25) NOT NULL,
    marca varchar(20),
    ano_fab integer,
    id_proprietario integer NOT NULL /*chave estrangeira*/
);

CREATE TABLE apreensao (
    id_apreensao integer,/*chave primária*/
	id_veiculo integer,/*chave estrangeira*/
	id_ocorrencia integer,/*chave estangeira*/
	infracao varchar(20),
    situacao varchar(20)
);

CREATE TABLE policial_apreensao (
    id_pessoa integer,/*chave estrangeira*/
	id_apreensao integer /*chave estrangeira*/
);

CREATE TABLE vitima_ocorrencia (
    id_pessoa integer,/*chave estrangeira*/
	id_ocorrencia integer /*chave estrangeira*/
);