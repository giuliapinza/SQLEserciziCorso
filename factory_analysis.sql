/*
Progetto: SQL Factory Data Challenge
Descrizione: Analisi della qualità dei componenti industriali 
             tramite CTE e aggregazione dati.
             Esercizio svolto per il percorso di apprendimento SQL su Coddy Tech.
*/

WITH filtered_enom_gilpane_quality AS (
    WITH enom_gilpane_quality AS (
        SELECT part_id, ((rpm * watt) / size) AS quality
        FROM (
            SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM enom_gilpane) AS watt, size
            FROM enom_gilpane
        )
    )
    SELECT *
    FROM enom_gilpane_quality
    WHERE quality > (SELECT AVG(quality) FROM enom_gilpane_quality)
),
filtered_castle_loctus_quality AS (
    WITH castle_loctus_quality AS (
        SELECT part_id, ((rpm * watt) / size) AS quality
        FROM (
            SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM castle_loctus) AS watt, size
            FROM castle_loctus
        )
    )
    SELECT *
    FROM castle_loctus_quality
    WHERE quality > (SELECT AVG(quality) FROM castle_loctus_quality)
),
filtered_honpan_bilopsa_quality AS (
    WITH honpan_bilopsa_quality AS (
        SELECT part_id, ((rpm * watt) / size) AS quality
        FROM (
            SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM honpan_bilopsa) AS watt, size
            FROM honpan_bilopsa
        )
    )
    SELECT *
    FROM honpan_bilopsa_quality
    WHERE quality > (SELECT AVG(quality) FROM honpan_bilopsa_quality)
),
filtered_yurnol_qoltam_quality AS (
    WITH yurnol_qoltam_quality AS (
        SELECT part_id, ((rpm * watt) / size) AS quality
        FROM (
            SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM yurnol_qoltam) AS watt, size
            FROM yurnol_qoltam
        )
    )
    SELECT *
    FROM yurnol_qoltam_quality
    WHERE quality > (SELECT AVG(quality) FROM yurnol_qoltam_quality)
),
quality_table AS (
    SELECT * FROM filtered_enom_gilpane_quality
    UNION ALL
    SELECT * FROM filtered_castle_loctus_quality
    UNION ALL
    SELECT * FROM filtered_honpan_bilopsa_quality
    UNION ALL
    SELECT * FROM filtered_yurnol_qoltam_quality
)
SELECT part_id, AVG(quality) AS avg_quality
FROM quality_table
GROUP BY part_id
ORDER BY avg_quality DESC;