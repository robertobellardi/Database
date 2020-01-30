/* 1) Valore del magazzino */
SELECT sum(a.prezzo*a.rimanenza) from articolo a;

/* 2) Valore del magazzino per categoria */
SELECT sum(a.prezzo*a.rimanenza) from articolo a GROUP by categoria;

/* 3) articoli ordinati e quantità relative */
SELECT a.descrizione,sum(od.quantità) FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id GROUP by a.descrizione order by sum(od.quantità) desc;

/* 4) quantità articoli ordinati per categoria */
SELECT a.categoria,sum(od.quantità) FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id GROUP by a.categoria order by sum(od.quantità) desc;

/* 5) articoli ordinati in un particolare ordine */
SELECT a.descrizione,od.quantità FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id where a.descrizione = "chiavetta" || a.descrizione = "hard-disk" || a.descrizione = "webcam" group by a.descrizione order by od.quantità desc;

/* 6) articolo più ordinato */
SELECT a.descrizione,sum(od.quantità) FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id group by a.descrizione order by sum(od.quantità) desc  limit 1;

/* 7) Valore degli ordini: Totale in euro ordinato dai clienti  */
SELECT Sum(a.prezzo*od.quantità) FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id;

/* 8) Seleziono i clienti che hanno effettuato ordini*/
SELECT c.cognome,c.email FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id join cliente c on c.cliente_id = o.cliente_id group by c.cognome;

/* 9) Seleziono gli ordini eseguiti dai clienti e i nomi corrispondenti */
SELECT c.cognome,o.ordine_id,o.data FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id join cliente c on c.cliente_id = o.cliente_id group by  c.cognome,o.ordine_id,o.data;

/* 10) Seleziono gli ordini eseguiti da un particolare cliente ('Esposito') con il dettaglio degli articoli richiesti */
SELECT o.ordine_id,o.data,a.descrizione,od.quantità,sum(a.prezzo*od.quantità) FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id join cliente c on c.cliente_id = o.cliente_id where c.cognome = "Esposito" group by a.descrizione,o.ordine_id;

/* 10+) Seleziono un particolare ordine (ordine_id=7) eseguiti da un particolare cliente ('Esposito') con il dettaglio degli articoli richiesti */
SELECT o.ordine_id,o.data,a.descrizione,od.quantità,sum(a.prezzo*od.quantità) FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id join cliente c on c.cliente_id = o.cliente_id where c.cognome = "Esposito" and o.ordine_id="7" group by a.descrizione,o.ordine_id;

/* 11) Voglio sapere quanto hanno speso in totale singoli clienti, i record andranno ordinati dal più spendaccione al più tirchio */
SELECT c.cognome,sum(a.prezzo*od.quantità) as speso FROM ordine o JOIN ordine_dettaglio od on o.ordine_id = od.ordine_id join articolo a on a.articolo_id = od.articolo_id join cliente c on c.cliente_id = o.cliente_id group by c.cognome order by sum(a.prezzo*od.quantità) desc;