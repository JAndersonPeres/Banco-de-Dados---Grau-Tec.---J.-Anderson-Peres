CREATE DATABASE Hospital;
USE Hospital;

CREATE TABLE Especialidades(
	Id_especialidade INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Pacientes(
	Id_paciente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(100),
    Telefone VARCHAR(100) NOT NULL,
    Data_nascimento DATE NOT NULL
);

CREATE TABLE Medicos(
	Id_medico INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Id_especialidade INT NOT NULL,
    Telefone VARCHAR(100),
    CONSTRAINT FK_Medico_especialidade
    FOREIGN KEY(Id_especialidade)
    REFERENCES Especialidades(Id_especialidade)
);

CREATE TABLE Consultas(
	Id_consulta INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Id_paciente INT NOT NULL,
    Id_medico INT NOT NULL,
    Data_consulta date NOT NULL,
    Observacoes VARCHAR(100),
    CONSTRAINT FK_Consulta_Paciente
    FOREIGN KEY(Id_paciente)
    REFERENCES Pacientes(Id_paciente),
    CONSTRAINT FK_Consulta_Medico
    FOREIGN KEY(Id_medico)
    REFERENCES Medicos(Id_medico)
);