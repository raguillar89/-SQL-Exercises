SELECT * FROM tipos_hamburguer;

CREATE TABLE tipos_hamburguer(
	id_tp_hbg SERIAl PRIMARY KEY,
	tipo_hbg VARCHAR(20) NOT NULL
);

INSERT INTO tipos_hamburguer(tipo_hbg) VALUES
(''),


SELECT * FROM frios;

CREATE TABLE frios(
	id_frios SERIAL PRIMARY KEY,
	nome_frios VARCHAR(30) NOT NULL
);

INSERT INTO frios(nome_frios) VALUES
(''),


SELECT * FROM complementos;

CREATE TABLE complementos(
	id_comp SERIAL PRIMARY KEY,
	nome_comp VARCHAR(30) NOT NULL
);

INSERT INTO complementos(nome_comp) VALUES
(''),


SELECT * FROM hamburguer;

CREATE TABLE hamburguer(
	id_hamburguer SERIAL PRIMARY KEY,
	id_tp_hbg INTEGER,
	FOREIGN KEY (id_tp_hbg) REFERENCES tipos_hamburguer(id_tp_hbg),
	id_frios_1 INTEGER,
	FOREIGN KEY (id_frios_1) REFERENCES frios(id_frios),
	id_frios_2 INTEGER,
	FOREIGN KEY (id_frios_2) REFERENCES frios(id_frios),
	id_comp_1 INTEGER,
	FOREIGN KEY (id_comp_1) REFERENCES complementos(id_comp),
	id_comp_2 INTEGER,
	FOREIGN KEY (id_comp_2) REFERENCES complementos(id_comp),
	id_comp_3 INTEGER,
	FOREIGN KEY (id_comp_3) REFERENCES complementos(id_comp)
);

INSERT INTO hamburguer(id_tp_hbg,id_frios_1,id_frios_2,id_comp_1,id_comp_2,id_comp_3) VALUES
('','','','','',''),


SELECT * FROM bebida;

CREATE TABLE bebida(
	id_bbd SERIAL PRIMARY KEY,
	nome_bbd VARCHAR(30) NOT NULL
);

INSERT INTO bebida(nome_bbd) VALUES
(''),


SELECT * FROM forma_pag;

CREATE TABLE forma_pag(
	id_fpg SERIAL PRIMARY KEY,
	fpg VARCHAR(30) NOT NULL
);

INSERT INTO forma_pag(fpg) VALUES
(''),


SELECT * FROM status;

CREATE TABLE status_pedido(
	id_statuspd SERIAL PRIMARY KEY,
	nome_statuspd VARCHAR(30) NOT NULL
);

INSERT INTO status(nome_statuspd) VALUES
(''),


SELECT * FROM pedido;

CREATE TABLE pedido(
	id_pedido SERIAL PRIMARY KEY	
);

ALTER TABLE pedido ADD id_hamburguer_1 INTEGER NOT NULL;
ALTER TABLE pedido ADD id_hamburguer_2 INTEGER NOT NULL;
ALTER TABLE pedido ADD id_hamburguer_3 INTEGER NOT NULL;
ALTER TABLE pedido ADD id_bbd_1 INTEGER NOT NULL;
ALTER TABLE pedido ADD id_bbd_2 INTEGER NOT NULL;
ALTER TABLE pedido ADD id_bbd_3 INTEGER NOT NULL;
ALTER TABLE pedido ADD id_fpg INTEGER NOT NULL;
ALTER TABLE pedido ADD id_statuspd INTEGER NOT NULL;

ALTER TABLE pedido ADD FOREIGN KEY (id_hamburguer_1) REFERENCES hamburguer(id_hamburguer);
ALTER TABLE pedido ADD FOREIGN KEY (id_hamburguer_2) REFERENCES hamburguer(id_hamburguer);
ALTER TABLE pedido ADD FOREIGN KEY (id_hamburguer_3) REFERENCES hamburguer(id_hamburguer);
ALTER TABLE pedido ADD FOREIGN KEY (id_bbd_1) REFERENCES bebida(id_bbd);
ALTER TABLE pedido ADD FOREIGN KEY (id_bbd_2) REFERENCES bebida(id_bbd);
ALTER TABLE pedido ADD FOREIGN KEY (id_bbd_3) REFERENCES bebida(id_bbd);
ALTER TABLE pedido ADD FOREIGN KEY (id_fpg) REFERENCES forma_pag(id_fpg);
ALTER TABLE pedido ADD FOREIGN KEY (id_statuspd) REFERENCES status_pedido(id_statuspd);

INSERT INTO pedido(id_hamburguer_1,id_hamburguer_2,id_hamburguer_3,id_bbd_1,id_bbd_2,id_bbd_3,id_fpg,id_statuspd) VALUES
('','','','','','','',''),