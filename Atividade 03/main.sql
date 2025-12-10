CREATE TABLE aluno(
    cpf VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_nascimento TIMESTAMP NOT NULL
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
    id INT PRIMARY KEY,
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