# Projeto final da disciplina Banco de Dados - Grau Tecnico

## Tema: Hospital / Clínica
Desenvolvimento de um banco de dados que tem o objetivo de simular o funcionamento de um hospital, guardando dados importantes que acreditamos ser necessário.

## Integrante e Funções
- Kaick Gomes: Responsável pelo DDL e pelo DML
- J. Anderson: Líder de Segurança (DCL) e Responsável pela documentação

## Descrição das Tabelas
### Especialidades
Colunas          | Tipos        | Observação
-----------------|--------------|------------------------------------
Id_especialidade | INT          | Chave Primária e Auto Incrementável
Nome             | Varchar(100) | Obrigatório

### Pacientes
Colunas         | Tipos        | Observação
----------------|--------------|------------------------------------
Id_paciente     | INT          | Chave Primária e Auto Incrementável
Nome            | Varchar(100) | Obrigatório
Endereco        | Varchar(100) | 
Telefone        | Varchar(100) | Obrigatório
Data_nascimento | DATE         | Obrigatório

### Medicos
Colunas          | Tipos        | Observação
-----------------|--------------|-------------------------------------------------
Id_medico        | INT          | Chave Primária e Auto Incrementável
Nome             | Varchar(100) | Obrigatório
Id_especialidade | INT          | Chave Estrangeira (Especialidades) e Obrigatório
Telefone         | Varchar(100) | 

### Consultas
Colunas       | Tipos        | Observação
--------------|--------------|--------------------------------------------
Id_consulta   | INT          | Chave Primária e Auto Incrementável
Id_paciente   | INT          | Chave Estrangeira (Pacientes) e Obrigatório
Id_medico     | INT          | Chave Estrangeira (Medicos) e Obrigatório
Data_consulta | DATE         | Obrigatório
Observacoes   | Varchar(100) | 

## Ordem de Execução dos Scripts
1. 01_ddl.sql
2. 02_dcl.sql
3. 03_dml.sql