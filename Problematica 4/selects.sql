-- client amount per branch name from highest to lowest
/*
SELECT branch_name, count(*) AS branch_client_count FROM cliente INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id GROUP BY cliente.branch_id ORDER BY branch_client_count DESC
*/

-- (employee amount per client) per branch ratio
/*
SELECT sucursal.branch_name, employee_count, client_count, printf("%.3f", CAST(employee_count AS REAL) / CAST(client_count AS REAL)) AS employee_to_client_ratio FROM 
	(SELECT empleado.branch_id AS employee_branch_id, count(*) AS employee_count FROM empleado GROUP BY branch_id) 
INNER JOIN 
	(SELECT count(*) AS client_count FROM cliente GROUP BY branch_id)
INNER JOIN 
	sucursal
ON employee_branch_id = sucursal.branch_id GROUP BY sucursal.branch_name 
ORDER BY employee_branch_id;
*/

-- credit card amount per branch branch
/*
SELECT total_credit_cards, branch_name FROM 
	(SELECT SUM(creditCount) AS total_credit_cards, branch_id AS client_branch_id FROM (SELECT creditCount, customer_id, branch_id FROM 
		(SELECT count(*) AS creditCount, customer_id FROM tarjeta WHERE card_type = "CREDIT" GROUP BY customer_id)
	INNER JOIN
		(SELECT customer_id AS client_cust_id, branch_id FROM cliente)
	ON customer_id = client_cust_id)
	GROUP BY branch_id)
INNER JOIN
	(SELECT branch_name, branch_id AS sucursal_branch_id FROM sucursal)
ON client_branch_id = sucursal_branch_id
ORDER BY total_credit_cards
*/

-- average credits by branch
/*
SELECT avg(total_loan_amount) AS average_credits FROM
(SELECT sum(loanCount) AS total_loan_amount, branch_id FROM
	(SELECT count(*) AS loanCount, customer_id FROM prestamo GROUP BY customer_id)
INNER JOIN
	(SELECT branch_id, customer_id AS client_cust_id from cliente)
ON customer_id = client_cust_id
GROUP BY branch_id)
*/






