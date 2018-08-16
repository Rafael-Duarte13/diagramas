use db_loja_manha;

-- 1°
SELECT 
    dep_nome AS 'NOME DO DEPARTAMENTO',
    pro_des_produto AS 'DESCRIÇÃO',
    pro_preco AS 'VALOR',
    dep_desconto AS 'DESCONTO'
FROM
    tb_departamentos
        JOIN
    tb_produtos ON dep_codigo = pro_dep_codigo
WHERE
    pro_qt_estoque > pro_qt_minima
ORDER BY dep_nome ASC;

-- 2°
SELECT 
    dep_nome AS 'NOME DO DEPARTAMENTO',
    pro_des_produto AS 'DESCRIÇÃO',
    pro_preco AS 'VALOR',
    dep_desconto AS 'DESCONTO'
FROM
    tb_departamentos
        JOIN
    tb_produtos ON dep_codigo = pro_dep_codigo
WHERE
    dep_nome = 'CALCADOS';

-- 3°
SELECT 
    cli_nome, cli_numero
FROM
    tb_clientes
WHERE
    cli_bai_codigo = (SELECT 
            bai_codigo
        FROM
            tb_bairros
        WHERE
            bai_bairro = 'ALECRIM')
ORDER BY cli_nome ASC;

-- 4°
SELECT 
    for_nome, for_numero
FROM
    tb_fornecedores
WHERE
    for_cid_codigo = (SELECT 
            cid_codigo
        FROM
            tb_cidades
        WHERE
            cid_cidade = 'NATAL' AND 'PARNAMIRIM');













