USE DB_LOCADORA;

SELECT 
    *
FROM
    TB_CATEGORIAS;

SELECT 
    cat_id, cat_nome
FROM
    tb_categorias;

SELECT 
    cat_nome
FROM
    tb_categorias
WHERE
    cat_preco < 3;

SELECT 
    fil_id AS id, fil_titulo AS filme
FROM
    tb_filmes
WHERE
    fil_cla_id = 1;
    
SELECT 
    cli_id AS codigo, cli_cpf AS cpf, cli_nome AS cliente
FROM
    tb_clientes
WHERE
    cli_data_nascimento BETWEEN '1991-01-01' AND '2000-12-31'
ORDER BY cli_nome ASC;

SELECT 
    cli_id AS codigo,
    cli_cpf AS cpf,
    cli_nome AS cliente
FROM
    tb_clientes
ORDER BY cli_data_nascimento ASC 
LIMIT 2;
