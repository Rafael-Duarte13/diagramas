USE DB_LOJA_MANHA;

SELECT 
    *
FROM
    (SELECT 
        *
    FROM
        TB_CIDADES
    LEFT JOIN TB_UFS ON UF_ID = CID_UF_ID UNION SELECT 
        *
    FROM
        TB_CIDADES
    RIGHT JOIN TB_UFS ON UF_ID = CID_UF_ID) AS R
WHERE
    R.CID_ID IS NULL OR R.UF_ID IS NULL;