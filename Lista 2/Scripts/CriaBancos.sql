-- Tabela aluno
CREATE TABLE aluno (
    Matricula INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    DataNasc DATE,
    email VARCHAR(100)
);

-- Telefone do Aluno
CREATE TABLE telefone_aluno (
  Matricula INT,
  telefone VARCHAR(20),
  PRIMARY KEY (Matricula, telefone),
  FOREIGN KEY (Matricula) REFERENCES aluno (Matricula)
);

-- Tabela Professor
CREATE TABLE Professor (
    CodigoProf INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela Projeto
CREATE TABLE Projeto (
    CodigoProj INT PRIMARY KEY,
    Descricao VARCHAR(100)
);

-- Relacionamento Orientação
CREATE TABLE Orientacao (
    DataInicio DATE,
    DataFim DATE,
    Matricula INT,
    CodigoProf INT,
    CodigoProj INT,
    PRIMARY KEY (Matricula, CodigoProf, CodigoProj),
    FOREIGN KEY (Matricula) REFERENCES aluno(Matricula),
    FOREIGN KEY (CodigoProf) REFERENCES Professor(CodigoProf),
    FOREIGN KEY (CodigoProj) REFERENCES Projeto(CodigoProj)
);