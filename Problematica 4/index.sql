/*
CREATE INDEX cliente_DNI
ON cliente (customer_DNI)
*/

EXPLAIN QUERY PLAN 
SELECT * FROM cliente WHERE customer_DNI = 10082924
