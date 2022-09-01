/*
CREATE TABLE movimientos (
	movement_id INTEGER PRIMARY KEY AUTOINCREMENT,
	account_id INTEGER,
	amount INTEGER,
	operation_type,
	operation_date,
	FOREIGN KEY (account_id)
		REFERENCES cuenta (account_id)
);
*/

BEGIN TRANSACTION;

UPDATE cuenta
SET balance = balance - 1000
WHERE account_id = 200;

UPDATE cuenta
SET balance = balance + 1000
WHERE account_id = 400;

INSERT INTO movimientos(account_id, amount, operation_type, operation_date)
VALUES (200, 1000, "RESTAR", DATETIME("NOW"));

INSERT INTO movimientos(account_id, amount, operation_type, operation_date)
VALUES (400, 1000, "ACREDITAR", DATETIME("NOW"));