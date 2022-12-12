/*
Então, mano, provavelmente os dados dessas tabelas tão terrivelmente errados,
eu não sei mto bem de SQL, mas tô tentando aprender... daí me ajuda a consertar
dps ksks Eu nn coloquei as parada de primary key e tudo mais certinho pq...
nn entendi esse bgl, mas... daí vc me ajuda dps, blz? skssk foi mal
*/

create table ocorrencia (
    id_ocorrencia integer, /*chave primária*/
    id_end integer, /*chave estrangeira*/
    tipo varchar(30),
    descricao varchar(255),
    situacao char
);

create table infrator_ocorrencia (
    id_pessoa integer not null, /*chave estrangeira*/
    id_ocorrencia integer not null /*chave estrangeira*/
);

create table endereco (
    id_end integer not null, /*chave primária*/
    estado varchar(2) not null,
    municipio varchar(50) not null
);

create table arma (
    id_arma integer not null unique, /*chave primária*/
    modelo varchar(50) not null,
    situacao varchar(20) not null
);

create table arma_ocorrencia (
    id_ocorrencia integer not null unique, /*chave estrangeira*/
    id_arma integer not null /*chave estrangeira*/
);

create table denuncia (
    id_denuncia integer not null unique, /*chave primária*/
    dt_denuncia date not null,
    motivo varchar(255) not null
);

create table denuncia_denunciado (
    id_pessoa integer, /* chave estrangeira */
    id_denuncia integer /* chave estrangeira */
);

create table veiculo (
    id_veiculo integer not null, /*chave primária*/
    renavam varchar(25) not null,
    marca varchar(20),
    ano_fab integer,
    id_proprietario integer not null /*chave estrangeira*/
);

create table apreensao (
    id_apreensao integer, /*chave primária*/
    id_veiculo integer, /*chave estrangeira*/
    id_ocorrencia integer, /*chave estangeira*/
    infracao varchar(20),
    situacao varchar(20)
);

create table policial_apreensao (
    id_pessoa integer, /*chave estrangeira*/
    id_apreensao integer /*chave estrangeira*/
);

create table vitima_ocorrencia (
    id_pessoa integer, /*chave estrangeira*/
    id_ocorrencia integer /*chave estrangeira*/
);