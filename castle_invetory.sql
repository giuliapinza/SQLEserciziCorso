/*
Progetto: SQL Castle Inventory Challenge
Descrizione: Calcolo delle risorse e dello spazio disponibile tramite CTE, 
             funzioni di finestra con somme cumulative (SUM OVER) e sottoquery correlate.
             Esercizio svolto per il percorso di apprendimento SQL su Coddy Tech.
*/

WITH cumulating AS(
    SELECT SUM(difficulty) OVER(ORDER BY row_num ASC) AS tot_until_now
    FROM(
        SELECT name, difficulty, ROW_NUMBER() OVER(ORDER BY difficulty ASC) AS row_num
        FROM tools
    )
    ORDER BY difficulty
)
SELECT hour, space
FROM(
    SELECT hour, power - used AS space
    FROM(
        SELECT hour, power,(
            SELECT tot_until_now
            FROM cumulating
            WHERE tot_until_now <= power
            ORDER BY tot_until_now DESC
            LIMIT 1
        ) AS used
        FROM strength
    )
)
WHERE space> 0 AND hour NOT LIKE '%:30%'
ORDER BY space DESC