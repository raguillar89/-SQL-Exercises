SELECT * FROM componentes

CREATE TABLE componentes(
	id_comp SERIAL PRIMARY KEY,
	nome_comp VARCHAR(100) NOT NULL,
	qtd_comp INTEGER NOT NULL
);

INSERT INTO componentes(nome_comp,qtd_comp) VALUES
('Placa Lógica (HD)','100'),
('Atuador (HD)','150'),
('Braço (HD)','120'),
('Eixo (HD)','140'),
('Disco (HD)','115'),
('Cabeça de Leitura e Gravação (HD)','134'),
('Interface Sata - Serial ATA (HD)','200'),
('Dissipador de Alumínio (Cooler)','300'),
('Ventilador (Cooler)','500'),
('Sem mais Componentes','0')


SELECT * FROM hardware

CREATE TABLE hardware(
	id_hw SERIAL PRIMARY KEY,
	nome_hw VARCHAR(100) NOT NULL
);

INSERT INTO hardware(nome_hw) VALUES
('Hard Disk (HD)'),
('Cooler')


SELECT * FROM producao

DROP TABLE producao

CREATE TABLE producao(
	id_pdc SERIAL PRIMARY KEY
);

ALTER TABLE producao ADD id_hw INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_1 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_2 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_3 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_4 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_5 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_6 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_7 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_8 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_9 INTEGER NOT NULL
ALTER TABLE producao ADD id_comp_10 INTEGER NOT NULL

ALTER TABLE producao DROP COLUMN id_hw
ALTER TABLE producao DROP COLUMN id_comp_1
ALTER TABLE producao DROP COLUMN id_comp_2
ALTER TABLE producao DROP COLUMN id_comp_3
ALTER TABLE producao DROP COLUMN id_comp_4
ALTER TABLE producao DROP COLUMN id_comp_5
ALTER TABLE producao DROP COLUMN id_comp_6
ALTER TABLE producao DROP COLUMN id_comp_7
ALTER TABLE producao DROP COLUMN id_comp_8
ALTER TABLE producao DROP COLUMN id_comp_9
ALTER TABLE producao DROP COLUMN id_comp_10

ALTER TABLE producao ADD FOREIGN KEY (id_hw) REFERENCES hardware(id_hw);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_1) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_2) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_3) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_4) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_5) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_6) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_7) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_8) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_9) REFERENCES componentes(id_comp);
ALTER TABLE producao ADD FOREIGN KEY (id_comp_10) REFERENCES componentes(id_comp);

--Código 10 é quando o Hardware não precisa de mais componentes
INSERT INTO producao(id_hw,id_comp_1,id_comp_2,id_comp_3,id_comp_4,id_comp_5,id_comp_6,id_comp_7,id_comp_8,id_comp_9,id_comp_10) VALUES
('1','1','2','3','4','5','6','7','10','10','10'),
('2','8','9','10','10','10','10','10','10','10','10')