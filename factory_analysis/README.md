# SQL Factory Data Challenge

Benvenuti in questa repository! Qui raccolgo la soluzione di un interessante esercizio di analisi dati tramite SQL, affrontato durante il mio percorso di apprendimento su Coddy Tech.

## Il Progetto
Lo scenario è quello di una fabbrica immaginaria. L'obiettivo è analizzare la qualità dei componenti prodotti su diverse linee (tabelle) per identificare i pezzi migliori per il proprio settore.

### Cosa ho realizzato
Ho scritto una query complessa che esegue i seguenti passaggi:
1. **Normalizzazione Dati**: Calcolo della media dei `watt` per tabella e aggiunta di questo valore ai singoli componenti (`adjusted_watt`).
2. **Indice di Qualità**: Applicazione della formula: `Quality = (rpm * adjusted_watt) / size`.
3. **Filtro Avanzato**: Selezione delle sole componenti la cui qualità è superiore alla media di produzione della rispettiva linea.
4. **Unione Dati**: Utilizzo di `UNION ALL` per consolidare le analisi di quattro diversi prodotti (`enom_gilpane`, `castle_loctus`, `honpan_bilopsa`, `yurnol_qoltam`).
5. **Aggregazione**: Calcolo della media finale di qualità per ogni `part_id`, con ordinamento dei risultati.

## Competenze Tecniche
In questo esercizio ho messo in pratica:
* **CTE (Common Table Expressions)**: Per organizzare il codice in blocchi logici e leggibili.
* **Subquery correlate**: Per eseguire calcoli dinamici (come la media) basati sui dati della tabella.
* **Set Operations**: Utilizzo di `UNION ALL` per unire dataset omogenei.
* **Aggregazione Dati**: Uso di `AVG` e `GROUP BY` per sintetizzare le informazioni finali.

## Struttura della Repository
- `factory_analysis.sql`: Il codice SQL completo e commentato.

---
*Progetto realizzato da Giulia Pinzauti*