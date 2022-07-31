CREATE VIEW IF NOT EXISTS v_by_DNI
AS
	SELECT
		customer_id AS id,
		branch_id AS numero_sucursal,
		customer_name AS name,
		customer_surname AS apellido,
		customer_DNI as DNI,
		strftime('%Y', date('now')) - strftime('%Y', date(dob)) AS "edad"
		
	FROM
		cliente
	WHERE
		edad > 40
	ORDER BY
		customer_DNI;
		
CREATE VIEW IF NOT EXISTS v_by_name_and_age
AS
	SELECT
		customer_id AS id,
		branch_id AS numero_sucursal,
		customer_name AS name,
		customer_surname AS apellido,
		customer_DNI as DNI,
		strftime('%Y', date('now')) - strftime('%Y', date(dob)) AS "edad"
		
	FROM
		cliente
	WHERE
		name LIKE "Anne" or name LIKE "Tyler"
	ORDER BY
		edad;
	