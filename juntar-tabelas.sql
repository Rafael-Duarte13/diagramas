use db_locadora;

SELECT 
    cli_id, cli_nome, cli_cpf, sex_nome
FROM
    tb_clientes,
    tb_sexos
WHERE
    sex_id = cli_sex_id;



use db_locadora;

SELECT 
    cli_id, cli_cpf, cli_nome, sex_nome, bai_nome
FROM
    tb_bairros
        JOIN
    tb_clientes ON bai_id = cli_bai_id
        JOIN
    tb_sexos ON sex_id = cli_sex_id
WHERE
    cli_nome LIKE '%neto%'
ORDER BY cli_nome ASC;