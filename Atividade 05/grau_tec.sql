CREATE DATABASE grau_tec;
USE grau_tec;

CREATE TABLE aluno(
    cpf VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE professor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    formacao VARCHAR(50),
    idade INT NOT NULL
);

CREATE TABLE curso(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(50) NOT NULL,
    duracao INT NOT NULL
);

CREATE TABLE materia(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_curso INT NOT NULL,
    id_professor INT NOT NULL,
    carga_horaria INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso(id),
    FOREIGN KEY (id_professor) REFERENCES professor(id)
);

CREATE TABLE matricula(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno VARCHAR(20) NOT NULL,
    id_curso INT NOT NULL,
    data_matricula TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_aluno) REFERENCES aluno(cpf),
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);

INSERT INTO aluno(cpf,nome,data_nascimento) VALUES
('999999999-99','Anderson','2003-01-20'),
('777777777-77','Allan','2008-06-21'),
('888888888-88','Laryssa','1996-01-27'),
('111111111-11','Jura','1974-01-28');

INSERT INTO professor(nome,formacao,idade) VALUES
('Ney','Cientista da Computação',24),
('Cefras','Engenheiro da Computação',20),
('Diego','PHD em Computação',28);

INSERT INTO curso(nome_curso,duracao) VALUES
('Técnico em Informática',2),
('Radiologia',1),
('Manutenção de Computadores',2);

INSERT INTO materia(nome,id_curso,id_professor,carga_horaria) VALUES
('Informática Básica',1,1,48),
('Informática Básica',2,1,24),
('Informática Básica',3,1,48),
('Banco de Dados',1,3,48),
('Lógica de Programação',1,2,48),
('Lógica de Programação',3,2,48);

INSERT INTO matricula(id_aluno,id_curso) VALUES
('999999999-99',1),
('777777777-77',3),
('888888888-88',2),
('111111111-11',3);

ALTER TABLE materia MODIFY COLUMN nome VARCHAR(100) NOT NULL;
UPDATE aluno SET nome = 'Jurandir' WHERE cpf = '111111111-11';

SELECT * FROM aluno;
SELECT * FROM professor;
SELECT * FROM curso;
SELECT * FROM materia;
SELECT * FROM matricula;

DELETE FROM materia WHERE id = 6;

SELECT m.id,a.nome AS Aluno,c.nome_curso AS Curso FROM matricula m INNER JOIN aluno a, curso c WHERE m.id_aluno = a.cpf AND m.id_curso = c.id;
SELECT m.nome AS 'Matéria',c.nome_curso AS Curso,p.nome AS Instrutor,m.carga_horaria AS 'Carga Horária' FROM materia m INNER JOIN curso c, professor p WHERE m.id_curso = c.id AND m.id_professor = p.id;

DROP TABLE matricula;
DROP TABLE materia;
DROP TABLE curso;
DROP TABLE professor;
DROP TABLE aluno;
DROP DATABASE grau_tec;