insert into pessoa(
    nome,
    tipo,
    cpf_cnpj,
    dt_nasc_fund,
    funcionario,
    situacao
) values (
    "Matheus China",
    false,
    "109.876.543-21",
    "19/01/1989",
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
    "Alexander Pereira",
    false,
    "987.654.321-00",
    "19/08/2001",
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
    "Gabriel Muniz",
    false,
    "917.634.321-00",
    "19/08/2004",
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
    "Racismo",
    "Ele foi vítima de racismo num ônibus do transporte público próximo ao terminal central",
    "A"
);

insert into ocorrencia(
    id_end,
    tipo,
    descricao,
    situacao
) values (
    0,
    "Roubo de celular",
    "A vítima teve o celular roubado próximo à praça dos Multiversos",
    "P"
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

insert into vitima_ocorrencia(
    id_pessoa
    id_ocorrencia,
) values (
    2,
    1
);