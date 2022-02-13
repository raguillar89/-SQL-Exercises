SELECT * FROM aluno;

CREATE TABLE aluno(
	id_aluno SERIAL PRIMARY KEY,
	nome_aluno VARCHAR(100) NOT NULL,
	matricula_aluno VARCHAR(8) NOT NULL,
	turma_aluno VARCHAR(10) NOT NULL	
);

INSERT INTO aluno (nome_aluno,matricula_aluno,turma_aluno) VALUES
('João Ricardo','00000001','Turma 1'),
('Ricardo José','00000002','Turma 1'),
('Maria Joaquina','00000003','Turma 1'),
('Ana Maria','00000004','Turma 1'),
('Matheus Marcelo','00000005','Turma 1'),
('Cassio Borges','00000006','Turma 2'),
('Claudete Silva','00000007','Turma 2'),
('Andreas Rocha','00000008','Turma 2'),
('Maxwell Araujo','00000009','Turma 2'),
('Brenda Mary','00000010','Turma 2');

DROP TABLE aluno;


SELECT * FROM professor;

CREATE TABLE professor(
	id_prof SERIAL PRIMARY KEY,
	nome_prof VARCHAR(100) NOT NULL,
	matricula_prof VARCHAR(5) NOT NULL,
	id_disc SERIAL,
	FOREIGN KEY (id_disc) REFERENCES disciplina(id_disc)	
);

INSERT INTO professor(nome_prof,matricula_prof,id_disc) VALUES
('Ednei da Silva','00001',1),
('Rafaela Braga','00002',2),
('Rodinei do Carmo','00003',4),
('Diego Haidar','00004',5),
('Eric Pinho','00005',3),
('Edicleide Rocha','00006',6)


SELECT * FROM disciplina;

CREATE TABLE disciplina(
	id_disc SERIAL PRIMARY KEY,
	nome_disc VARCHAR(50) NOT NULL
);

INSERT INTO disciplina(nome_disc) VALUES
('Matemática'),
('Português'),
('Física'),
('Biologia'),
('Redação'),
('História')


SELECT * FROM calendario_t1;

CREATE TABLE calendario_t1(
	id_calendario_t1 SERIAL PRIMARY KEY,
	horario_t1 VARCHAR(20) NOT NULL,
	domingo_t1 VARCHAR(50) NOT NULL,
	segunda_feira_t1 VARCHAR(50) NOT NULL,
	terça_feira_t1 VARCHAR(50) NOT NULL,
	quarta_feira_t1 VARCHAR(50) NOT NULL,
	quinta_feira_t1 VARCHAR(50) NOT NULL,
	sexta_feira_t1 VARCHAR(50) NOT NULL,
	sabado_t1 VARCHAR(50) NOT NULL
);

INSERT INTO calendario_t1(horario_t1,domingo_t1,segunda_feira_t1,terça_feira_t1,quarta_feira_t1,quinta_feira_t1,sexta_feira_t1,sabado_t1) VALUES
('07:00 às 08:00','','Português','Física','Biologia','Redação','Matemática',''),
('08:00 às 09:00','','Português','Física','Biologia','Redação','Matemática',''),
('09:00 às 10:00','','História','Matemática','Redação','Português','Física',''),
('09:00 às 10:00','','Intervalo','Intervalo','Intervalo','Intervalo','Intervalo',''),
('10:30 às 11:30','','História','Matemática','Redação','Português','Física',''),
('11:30 às 12:30','','Biologia','Biologia','Português','Português','','')

DROP TABLE calendario_t1;

SELECT * FROM calendario_t2;

CREATE TABLE calendario_t2(
	id_calendario_t2 SERIAL PRIMARY KEY,
	horario_t2 VARCHAR(20) NOT NULL,
	domingo_t2 VARCHAR(50) NOT NULL,
	segunda_feira_t2 VARCHAR(50) NOT NULL,
	terça_feira_t2 VARCHAR(50) NOT NULL,
	quarta_feira_t2 VARCHAR(50) NOT NULL,
	quinta_feira_t2 VARCHAR(50) NOT NULL,
	sexta_feira_t2 VARCHAR(50) NOT NULL,
	sabado_t2 VARCHAR(50) NOT NULL
);

INSERT INTO calendario_t2(horario_t2,domingo_t2,segunda_feira_t2,terça_feira_t2,quarta_feira_t2,quinta_feira_t2,sexta_feira_t2,sabado_t2) VALUES
('07:00 às 08:00','','História','Matemática','Redação','Português','Física',''),
('08:00 às 09:00','','História','Matemática','Redação','Português','Física',''),
('09:00 às 10:00','','Português','Física','Biologia','Redação','Matemática',''),
('09:00 às 10:00','','Intervalo','Intervalo','Intervalo','Intervalo','Intervalo',''),
('10:30 às 11:30','','Português','Física','Biologia','Redação','Matemática',''),
('11:30 às 12:30','','Português','Português','Biologia','Biologia','','')

DROP TABLE calendario_t2;
