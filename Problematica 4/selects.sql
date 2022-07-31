-- client amount per branch name from highest to lowest
/*
SELECT branch_name, count(*) AS branch_client_count FROM cliente INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id GROUP BY cliente.branch_id ORDER BY branch_client_count DESC
*/

-- (employee amount per client) per branch ratio
/*
SELECT sucursal.branch_name, employee_count, client_count, printf("%.3f", CAST(employee_count AS REAL) / CAST(client_count AS REAL)) AS employee_to_client_ratio
FROM (SELECT empleado.branch_id AS employee_branch_id, count(*) AS employee_count FROM empleado GROUP BY branch_id) 
INNER JOIN (SELECT count(*) AS client_count FROM cliente GROUP BY branch_id)
INNER JOIN sucursal
	ON employee_branch_id = sucursal.branch_id GROUP BY sucursal.branch_name 
ORDER BY employee_branch_id;
*/















