CREATE TABLE tipo_cliente (
client_type_id INTEGER PRIMARY KEY,
client_type_desc TEXT NOT NULL
);

INSERT INTO tipo_cliente
(client_type_id, client_type_desc)
VALUES
	(1, "CLASSIC"),
	(2, "GOLD"),
	(3, "BLACK");
	
CREATE TABLE tipo_cuenta (
account_type_id INTEGER PRIMARY KEY,
account_type_desc TEXT NOT NULL
);

INSERT INTO tipo_cuenta
(account_type_id, account_type_desc)
VALUES
	(1, "Caja de ahorro en pesos"),
	(2, "Caja de ahorro en dolares"),
	(3, "Cuenta corriente");
	
CREATE TABLE marca_tarjetas (
creditcard_brand_id INTEGER PRIMARY KEY,
creditcard_brand_name TEXT NOT NULL
);

INSERT INTO marca_tarjetas
(creditcard_brand_id, creditcard_brand_name)
VALUES
	(1, "Mastercard"),
	(2, "Visa"),
	(3, "American Express");

CREATE TABLE tarjeta (
card_id INTEGER PRIMARY KEY AUTOINCREMENT,
card_number TEXT UNIQUE NOT NULL,
card_security_code TEXT NOT NULL,
card_issue_date TEXT NOT NULL,
card_expiration_date TEXT NOT NULL,
card_type TEXT NOT NULL,
creditcard_brand_id INTEGER NOT NULL,
customer_id INTEGER NOT NULL,
FOREIGN KEY(creditcard_brand_id) REFERENCES marca_tarjetas(creditcard_brand_id),
FOREIGN KEY(customer_id) REFERENCES cliente(customer_id),
CHECK (length(card_number) <= 20)
);

CREATE TABLE direccion (
dir_id INTEGER PRIMARY KEY NOT NULL,
dir_calle TEXT NOT NULL,
dir_city TEXT NOT NULL,
dir_province TEXT NOT NULL,
dir_country TEXT NOT NULL
);