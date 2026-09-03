Qui raccolgo le soluzioni di interessanti esercizi e sfide di analisi dati tramite SQL, affrontati durante il mio percorso di apprendimento su Coddy Tech. Purtroppo non ho potuto mettere i file per le tabelle perchè non li fa vedere bene.

## I Progetti

### 1. SQL Factory Data Challenge (`factory_analysis.sql`)

Lo scenario è quello di una fabbrica immaginaria. L'obiettivo è analizzare la qualità dei componenti prodotti su diverse linee per identificare i pezzi migliori per il proprio settore.

* **Normalizzazione Dati**: Calcolo della media dei `watt` per tabella e aggiunta di questo valore ai singoli componenti.
* **Indice di Qualità**: Applicazione della formula: `Quality = (rpm * adjusted_watt) / size`.
* **Filtro Avanzato e Unione**: Selezione delle componenti sopra la media e consolidamento dei dati di quattro linee (`enom_gilpane`, `castle_loctus`, `honpan_bilopsa`, `yurnol_qoltam`) tramite `UNION ALL` e aggregazione finale.

### 2. SQL Chocolate Factory Challenge (`chocolate_factory.sql`)

Analisi della produzione di cioccolato e zucchero per marchio all'interno di una fabbrica di dolciumi.

* **Aggregazione e Media**: Calcolo della media arrotondata dei cioccolati (`ROUND(AVG(...))`) raggruppati per marchio tramite sottoquery.
* **Funzioni di Finestra**: Utilizzo di `ROW_NUMBER() OVER(ORDER BY ...)` per numerare e ordinare i record dei brand.
* **Filtraggio Condizionale**: Selezione finale basata sulle righe con indice pari (`WHERE row_number % 2 = 0`).

### 3. SQL Castle Inventory Challenge (`castle_inventory.sql`)

Gestione e ottimizzazione delle risorse di un castello, calcolando l'inventario degli strumenti e lo spazio/energia disponibile in base alla difficoltà.

* **Somme Cumulative**: Utilizzo di `SUM() OVER(ORDER BY ...)` all'interno di una CTE per tracciare la difficoltà progressiva degli strumenti.
* **Sottoquery Correlate**: Calcolo dinamico dello spazio residuo sottraendo la potenza utilizzata da quella totale disponibile, filtrando i risultati per fascia oraria ed efficienza.

## Competenze Tecniche

In questi esercizi ho messo in pratica:

* **CTE (Common Table Expressions)**: Per organizzare query complesse in blocchi logici e leggibili.
* **Funzioni di Finestra (Window Functions)**: Utilizzo di `ROW_NUMBER()` e `SUM() OVER()` per analisi progressive e posizionali.
* **Subquery (Correlate e Annidate)**: Per eseguire calcoli dinamici basati sui dati delle tabelle.
* **Set Operations & Aggregazioni**: Gestione di `UNION ALL`, `GROUP BY`, `AVG` e funzioni matematiche (`ROUND`).
* **Logica Condizionale e Operatori**: Filtri avanzati basati su resti aritmetici (`% 2 = 0`) e condizioni temporali (`NOT LIKE`).

## Struttura della Repository

* `factory_analysis.sql`: Analisi della qualità dei componenti industriali tramite CTE e `UNION ALL`.
* `chocolate_factory.sql`: Analisi della produzione di cioccolato con funzioni di finestra e filtraggio righe.
* `castle_inventory.sql`: Gestione delle risorse e calcolo dello spazio con somme cumulative.

---
