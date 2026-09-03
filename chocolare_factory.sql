/*
Progetto: SQL Chocolate Factory Challenge
Descrizione: Analisi della produzione di cioccolato per marchio tramite l'uso di sottoquery, 
             funzioni di finestra (ROW_NUMBER) e filtraggio delle righe pari.
             Esercizio svolto per il percorso di apprendimento SQL su Coddy Tech.
*/     

SELECT * FROM (
    SELECT factory.brand, sugar/243 AS choc_num, choc_avg, ROW_NUMBER() OVER(ORDER BY factory.brand DESC)AS row_number
    FROM factory
    JOIN (
        SELECT brand, ROUND(AVG(chocolates),2) AS choc_avg
        FROM book
        GROUP BY brand
    ) AS book_avg ON book_avg.brand=factory.brand
    ORDER BY choc_avg DESC
)
WHERE row_number % 2 = 0