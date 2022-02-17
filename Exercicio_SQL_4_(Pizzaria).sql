SELECT * FROM ingredientes;

DROP TABLE ingredientes;

CREATE TABLE ingredientes(
	id_ing SERIAL PRIMARY KEY,
	nome_ing VARCHAR(50) NOT NULL
);

INSERT INTO ingredientes(nome_ing) VALUES
(''),


SELECT * FROM complementos;

DROP TABLE complementos;

CREATE TABLE complementos(
	id_comp SERIAL PRIMARY KEY,
	nome_comp VARCHAR(50) NOT NULL
);

INSERT INTO complementos(nome_comp) VALUES
(''),


SELECT * FROM bordas;

DROP TABLE bordas;

CREATE TABLE bordas(
	id_bordas SERIAL PRIMARY KEY,
	nome_bordas VARCHAR(50) NOT NULL
);

INSERT INTO bordas(nome_bordas) VALUES
(''),


SELECT * FROM pizzas;

DROP TABLE pizzas;

CREATE TABLE pizzas(
	id_pizzas SERIAL PRIMARY KEY,
	nome_pizzas VARCHAR(50) NOT NULL
);

ALTER TABLE pizzas ADD id_ing_1 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_ing_2 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_ing_3 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_ing_4 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_ing_5 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_comp_1 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_comp_2 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_comp_3 INTEGER NOT NULL;
ALTER TABLE pizzas ADD id_bordas INTEGER NOT NULL;

ALTER TABLE pizzas ADD FOREIGN KEY (id_ing_1) REFERENCES ingredientes(id_ing);
ALTER TABLE pizzas ADD FOREIGN KEY (id_ing_2) REFERENCES ingredientes(id_ing);
ALTER TABLE pizzas ADD FOREIGN KEY (id_ing_3) REFERENCES ingredientes(id_ing);
ALTER TABLE pizzas ADD FOREIGN KEY (id_ing_4) REFERENCES ingredientes(id_ing);
ALTER TABLE pizzas ADD FOREIGN KEY (id_ing_5) REFERENCES ingredientes(id_ing);
ALTER TABLE pizzas ADD FOREIGN KEY (id_comp_1) REFERENCES complementos(id_comp);
ALTER TABLE pizzas ADD FOREIGN KEY (id_comp_2) REFERENCES complementos(id_comp);
ALTER TABLE pizzas ADD FOREIGN KEY (id_comp_3) REFERENCES complementos(id_comp);
ALTER TABLE pizzas ADD FOREIGN KEY (id_bordas) REFERENCES bordas(id_bordas);

INSERT INTO pizzas(nome_pizzas,id_ing_1,id_ing_2,id_ing_3,id_ing_4,id_ing_5,id_comp_1,id_comp_2,id_comp_3,id_bordas) VALUES
('','','','','','','','','',''),


SELECT * FROM forma_pagamento;

DROP TABLE forma_pagamento;

CREATE TABLE forma_pagamento(
	id_form_pag SERIAL PRIMARY KEY,
	nome_form_pag VARCHAR(50) NOT NULL
);

INSERT INTO forma_pagamento(nome_form_pag) VALUES
(''),


SELECT * FROM status;

DROP TABLE status;

CREATE TABLE status(
	id_status SERIAL PRIMARY KEY,
	nome_status VARCHAR(40) NOT NULL
);

INSERT INTO status(nome_status) VALUES
(''),


SELECT * FROM pedidos;

DROP TABLE pedidos;

CREATE TABLE pedidos(
	id_pedidos SERIAL PRIMARY KEY,
	nome_pedidos VARCHAR(50) NOT NULL,
	id_pizzas INTEGER,
	FOREIGN KEY (id_pizzas) REFERENCES pizzas(id_pizzas),
	id_form_pag INTEGER,
	FOREIGN KEY (id_form_pag) REFERENCES forma_pagamento(id_form_pag),
	id_status INTEGER,
	FOREIGN KEY (id_status) REFERENCES status(id_status)
);

INSERT INTO pedidos(nome_pedidos,id_pizzas,id_form_pag,id_status) VALUES
('','','',''),