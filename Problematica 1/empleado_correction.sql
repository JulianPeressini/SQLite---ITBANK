CREATE TABLE temp_date (
employee_id INTEGER,
employee_hire_date TEXT
);

INSERT INTO temp_date SELECT employee_id, employee_hire_date FROM empleado;

UPDATE temp_date SET employee_hire_date = substr((SELECT employee_hire_date FROM empleado WHERE empleado.employee_id = temp_date.employee_id ORDER BY employee_id ), 7, 4) 
|| "/" 
|| substr((SELECT employee_hire_date FROM empleado WHERE empleado.employee_id = temp_date.employee_id ORDER BY employee_id LIMIT 500), 4, 2) 
|| "/" 
|| substr((SELECT employee_hire_date FROM empleado WHERE empleado.employee_id = temp_date.employee_id ORDER BY employee_id LIMIT 500), 1, 2);

UPDATE empleado SET employee_hire_date = temp_date.employee_hire_date FROM temp_date WHERE empleado.employee_id = temp_date.employee_id;

DROP TABLE temp_date;