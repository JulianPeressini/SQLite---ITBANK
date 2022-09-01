CREATE TABLE auditoria_cuenta (
	id INTEGER PRIMARY KEY,
	old_id INTEGER,
	new_id INTEGER,
	old_balance INTEGER,
	new_balance INTEGER,
	old_iban TEXT,
	new_iban TEXT,
	old_type INTEGER,
	new_type INTEGER,
	user_action TEXT,
	created_at TEXT
);


CREATE TRIGGER log_account_value_update
	AFTER UPDATE ON cuenta
BEGIN
	INSERT INTO auditoria_cuenta (
		old_id,
		new_id,
		old_balance,
		new_balance,
		old_iban,
		new_iban,
		old_type,
		new_type,
		user_action,
		created_at
	)
VALUES (
	old.account_id,
	new.account_id,
	old.balance,
	new.balance,
	old.iban,
	new.iban,
	old.account_type,
	new.account_type,
	"UPDATE",
	DATETIME("NOW")
);
END;


UPDATE cuenta
SET balance = balance - 100
WHERE
	account_id > 9 AND account_id < 15