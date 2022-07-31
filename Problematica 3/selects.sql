--
/*
SELECT * FROM cuenta WHERE balance < 0;
*/

-- name = Brendan
/*
SELECT cliente.branch_id, customer_name, customer_surname, dob, branch_name FROM cliente INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id WHERE customer_name LIKE "Brendan";
*/

-- loan_total > 80.000 INNER JOIN loan_type = "PRENDARIO"
/*
SELECT * FROM (SELECT * FROM prestamo 
WHERE CAST(substr(loan_total, 1, (LENGTH(loan_total) - 2)) || "." || substr(loan_total, (LENGTH(loan_total) - 1), 2) AS REAL) > 80000 
AND loan_type != "PRENDARIO" ORDER BY loan_total) 
INNER JOIN prestamo 
	ON prestamo.loan_type = "PRENDARIO";
*/
	
-- loan_total > loan_total_average
/*
SELECT * FROM prestamo 
WHERE (SELECT CAST(substr(loan_total, 1, (LENGTH(loan_total) - 2)) || "." || substr(loan_total, (LENGTH(loan_total) - 1), 2) AS REAL)) > 
(SELECT avg(CAST(substr(loan_total, 1, (LENGTH(loan_total) - 2)) || "." || substr(loan_total, (LENGTH(loan_total) - 1), 2) AS REAL)) FROM prestamo) 
ORDER BY loan_total;
*/

-- age < 50 count
/*
SELECT count(*) AS age_50_count FROM (SELECT strftime('%Y', date('now')) - strftime('%Y', date(dob)) AS "edad" FROM cliente WHERE edad < 50);
*/

--
/*
SELECT * FROM cuenta ORDER BY balance DESC LIMIT 5;
*/

-- first 5 acounts where balance > 8.000
/*
SELECT * FROM cuenta WHERE (CAST(substr(balance, 1, (LENGTH(balance) - 2)) || "." || substr(balance, (LENGTH(balance) - 1), 2) AS REAL)) > 8000 ORDER BY balance LIMIT 5;
*/

-- prestamos abril/junio/agosto
/*
SELECT * from prestamo where loan_date LIKE "%-04-%" OR loan_date LIKE "%-06-%" OR loan_date LIKE "%-08-%" ORDER BY loan_total;
*/

--total loan sum of each loan type
/*
SELECT loan_type, sum((CAST(substr(loan_total, 1, (LENGTH(loan_total) - 2)) || "." || substr(loan_total, (LENGTH(loan_total) - 1), 2) AS REAL))) AS loan_total_accu FROM prestamo GROUP BY loan_type;
*/

