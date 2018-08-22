-- Lista.4
USE db_loja_manha;

-- 1°
SELECT 
    dep_id AS 'ID',
    dep_nome AS 'DEPARTAMENTO',
    COUNT(pro_dep_id) AS 'QUANTIDADE PRODUTOS'
FROM
    tb_departamentos
        LEFT JOIN
    tb_produtos ON dep_id = pro_dep_id
GROUP BY dep_nome
ORDER BY dep_id ASC;

-- 2°
SELECT 
    cli_id AS 'ID',
    cli_nome AS 'CLIENTE',
    COUNT(fdc_fone) AS 'QUANTIDADE FONES'
FROM
    tb_clientes
        JOIN
    tb_fones_clientes ON cli_id = fdc_cli_id
GROUP BY cli_nome
ORDER BY cli_id ASC;

-- 3°
SELECT DISTINCT
    mar_id AS 'ID',
    mar_nome AS 'MARCA',
    COUNT(idv_pro_id) AS 'UNIDADES VENDIDAS',
    SUM(pro_preco) AS 'TOTAL'
FROM
    tb_produtos
        JOIN
    tb_itens_vendas ON pro_id = idv_pro_id
        RIGHT JOIN
    tb_marcas ON mar_id = pro_mar_id
GROUP BY mar_nome
ORDER BY mar_id;

-- 4°
SELECT
	for_nome_fantasia, com_total_compra
FROM
    tb_fornecedores
        left JOIN
    tb_compras ON for_id = com_for_id;








