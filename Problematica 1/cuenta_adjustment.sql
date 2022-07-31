ALTER TABLE cuenta ADD COLUMN account_type;

UPDATE cuenta 
SET account_type = (SELECT abs(random()) % (4 - 1) + 1) 
WHERE cuenta.account_id 
IN 
	(
	SELECT account_id
	FROM cuenta
	ORDER BY random()
	limit 500
	);
	
UPDATE cuenta 
SET account_type = (SELECT abs(random()) % (4 - 1) + 1) 
WHERE cuenta.account_id 
IN 
	(
	SELECT account_id
	FROM cuenta
	ORDER BY random()
	limit 50
	);
	
UPDATE cuenta 
SET account_type = (SELECT abs(random()) % (4 - 1) + 1) 
WHERE cuenta.account_id 
IN 
	(
	SELECT account_id
	FROM cuenta
	ORDER BY random()
	limit 50
	);
	
UPDATE cuenta 
SET account_type = (SELECT abs(random()) % (4 - 1) + 1) 
WHERE cuenta.account_id 
IN 
	(
	SELECT account_id
	FROM cuenta
	ORDER BY random()
	limit 50
	);
	
UPDATE cuenta 
SET account_type = (SELECT abs(random()) % (4 - 1) + 1) 
WHERE cuenta.account_id 
IN 
	(
	SELECT account_id
	FROM cuenta
	ORDER BY random()
	limit 50
	);
	
UPDATE cuenta 
SET account_type = (SELECT abs(random()) % (4 - 1) + 1) 
WHERE cuenta.account_id 
IN 
	(
	SELECT account_id
	FROM cuenta
	ORDER BY random()
	limit 50
	);
	
UPDATE cuenta 
SET account_type = (SELECT abs(random()) % (4 - 1) + 1) 
WHERE cuenta.account_id 
IN 
	(
	SELECT account_id
	FROM cuenta
	ORDER BY random()
	limit 50
	);