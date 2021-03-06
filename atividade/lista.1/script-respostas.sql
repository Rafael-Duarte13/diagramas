-- Lista.1
USE DB_LOJA_MANHA;

-- 1°
SELECT 
    DEP_NOME AS 'NOME', DEP_DESCONTO AS 'DESCONTO'
FROM
    TB_DEPARTAMENTOS;

-- 2°
SELECT 
    PRO_DES_PRODUTO AS 'DESCRIÇÃO',
    PRO_PRECO AS 'VALOR',
    PRO_QT_ESTOQUE AS 'ESTOQUE'
FROM
    TB_PRODUTOS;

-- 3°
SELECT 
    PRO_DES_PRODUTO AS 'DESCRIÇÃO',
    PRO_PRECO AS 'VALOR',
    PRO_QT_ESTOQUE AS 'ESTOQUE',
    PRO_QT_MINIMA AS 'MINIMO'
FROM
    TB_PRODUTOS
WHERE
    PRO_QT_ESTOQUE < PRO_QT_MINIMA;

-- 4°
SELECT 
    PRO_DES_PRODUTO AS 'DESCRIÇÃO',
    PRO_PRECO AS 'VALOR',
    PRO_QT_ESTOQUE AS 'ESTOQUE',
    PRO_QT_MINIMA AS 'MINIMO'
FROM
    TB_PRODUTOS
WHERE
    PRO_QT_ESTOQUE > PRO_QT_MINIMA;

-- 5°
SELECT 
    VEN_CODIGO AS 'MATRICULA',
    VEN_NOME AS 'NOME',
    VEN_DT_ADMISSAO AS 'DATA ADMISSÃO'
FROM
    TB_VENDEDORES
WHERE
    VEN_SEX_CODIGO = (SELECT 
            SEX_CODIGO
        FROM
            TB_SEXOS
        WHERE
            SEX_SEXO = 'FEMININO');

-- 6°
SELECT 
    VEN_CODIGO AS 'MATRICULA',
    VEN_NOME AS 'NOME',
    VEN_DT_ADMISSAO AS 'DATA ADMISSÃO'
FROM
    TB_VENDEDORES
WHERE
    (VEN_SEX_CODIGO = (SELECT 
            SEX_CODIGO
        FROM
            TB_SEXOS
        WHERE
            SEX_SEXO = 'MASCULINO')
        AND VEN_DT_ADMISSAO BETWEEN '2005-01-01' AND '2008-12-31');

-- 7°
SELECT 
    CLI_NOME AS 'NOME'
FROM
    TB_CLIENTES
WHERE
    CLI_NOME LIKE ('%SANTOS%');

-- 8°
SELECT 
    PRO_DES_PRODUTO AS 'DESCRIÇÃO', PRO_PRECO AS 'VALOR'
FROM
    TB_PRODUTOS
ORDER BY PRO_PRECO ASC
LIMIT 2;

-- 9°
SELECT 
    PRO_DES_PRODUTO AS 'DESCRIÇÃO', PRO_PRECO AS 'VALOR'
FROM
    TB_PRODUTOS
ORDER BY PRO_PRECO DESC
LIMIT 2;

-- 10°
SELECT 
    VEN_CODIGO AS 'MATRICULA',
    VEN_DT_ADMISSAO AS 'DATA ADMISSÃO'
FROM
    TB_VENDEDORES
ORDER BY VEN_DT_ADMISSAO ASC
LIMIT 3;