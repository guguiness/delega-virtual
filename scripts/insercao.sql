insert into pessoa(
    nome,
    tipo,
    cpf_cnpj,
    dt_nasc_fund,
    funcionario,
    situacao
) values (
    "Norton",
    false,
    "109.876.543-21",
    "19/01/0753",
    false,
    "Vivo"
);
insert into pessoa(
    nome,
    tipo,
    cpf_cnpj,
    dt_nasc_fund,
    funcionario,
    situacao
) values (
    "Gustavo Evil",
    false,
    "987.654.321-00",
    "01/01/0788",
    false,
    "Vivo"
);

insert into endereco(
    estado,
    municipio
) values (
    "PR",
    "Salgado Filho"
);

insert into ocorrencia(
    id_end,
    tipo,
    descricao,
    situacao
) values (
    0,
    "Homicídio culposo",
    "O Gustavo Evil foi morto pelo Norton em frente a um colégio, no centro. Motivo da morte não identificado.",
    "A"
);

insert into vitima_ocorrencia(
    id_pessoa
    id_ocorrencia,
) values (
    1,
    0
);