create table pessoa (
	id_pessoa integer not null,
	nome varchar(50),
	tipo boolean not null,
	cpf_cnpj varchar(14),
	dt_nasc_fund date,
	situacao varchar(15),
	constraint pk_pessoa primary key (id_pessoa)
);

select * from pessoa;