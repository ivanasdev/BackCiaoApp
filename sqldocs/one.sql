
    SELECT *
    FROM tb_AOAAPG
    WHERE st_Alimento LIKE '%a%'
    
    
    UNION ALL
     SELECT *
    FROM tb_AOABAG
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
    SELECT *
    FROM tb_AOA_Bajo_Grasa
    WHERE Alimento LIKE '%a%'

    UNION ALL
  SELECT *
    FROM tb_AceitesyGrasas
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
  SELECT *
    FROM tb_AceitesyGrasasPoteina
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
  SELECT *
    FROM tb_FrutasSmae
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
   SELECT *
    FROM tb_LecheConAzucar
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
  SELECT *
    FROM tb_LecheEntera
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
      SELECT *
    FROM tb_LecheSemiDescremada
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
  SELECT *
    FROM tb_Leguminosas
    WHERE st_Alimento LIKE '%a%'

    UNION ALL
  SELECT *
    FROM tb_Vegetales
    WHERE st_alimento LIKE '%a%';