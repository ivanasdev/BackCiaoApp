
CREATE PROCEDURE `SPR_BUSCADOR_NAME`(
    IN p_busqueda VARCHAR(100)
)
BEGIN

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, st_categoria 
    FROM tb_AOAAPG
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, st_categoria
    FROM tb_AOABAG
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id AS id, Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, 'Alimentos de origen animal bajo en grasa' AS st_categoria
    FROM tb_AOA_Bajo_Grasa
    WHERE Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, st_categoria
    FROM tb_AceitesyGrasas
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, st_categoria
    FROM tb_AceitesyGrasasPoteina
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Fruta AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, 'Frutas' AS st_categoria
    FROM tb_FrutasSmae
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, st_categoria
    FROM tb_LecheConAzucar
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g,st_lipidos_g, st_categoria
    FROM tb_LecheEntera
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g,st_lipidos_g, st_categoria
    FROM tb_LecheSemiDescremada
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, st_categoria
    FROM tb_Leguminosas
    WHERE st_Alimento LIKE CONCAT('%', p_busqueda, '%')

    UNION ALL

    SELECT id_Alimento AS id, st_Alimento AS alimento, st_energia_kcal, st_proteina_g, st_hidratos_de_carbono_g, st_lipidos_g, st_categoria
    FROM tb_Vegetales
    WHERE st_alimento LIKE CONCAT('%', p_busqueda, '%');

END