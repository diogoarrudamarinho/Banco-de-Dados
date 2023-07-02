-- Inserindo registros de Professores
INSERT INTO Professor (CodigoProf, nome) VALUES
    (1, 'Reinaldo'),
    (2, 'Fabras'),
    (3, 'Jobson'),
    (4, 'Morganna'),
    (5, 'Bruna'),
    (6, 'Vinicius');

-- Inserindo registros de Alunos
INSERT INTO aluno (Matricula, nome, DataNasc, email) VALUES
    (1, 'André', '2000-01-01', 'andre@edu.unirio.br'),
    (2, 'Caio', '2001-02-02', 'caio@edu.unirio.br'),
    (3, 'Diogo', '2002-07-22', 'diogo@edu.unirio.br'),
    (4, 'Gerfesson', '2003-04-04', 'gerfesson@edu.unirio.br'),
    (5, 'José', '2004-05-05', 'jose@edu.unirio.br'),
    (6, 'Júlia', '2005-06-06', 'julia@edu.unirio.br'),
    (7, 'Luís', '2006-07-07', 'luis@edu.unirio.br'),
    (8, 'Roberto', '2007-08-08', 'roberto@edu.unirio.br'),
    (9, 'Ronaldo', '2006-04-24', 'ronaldo@edu.unirio.br');
   
-- Inserindo Telefones
use Lista2;
INSERT INTO telefone_aluno (MatriculaAluno, telefone) VALUES
  (1, '1111111111'),
  (1, '2222222222'),
  (2, '3333333333'),
  (3, '4444444444'),
  (4, '5555555555');

-- Inserindo registros de Projetos
INSERT INTO Projeto (CodigoProj, Descricao) VALUES
    (1, 'Projeto 1'),
    (2, 'Projeto 2'),
    (3, 'Projeto 3'),
    (4, 'Projeto 4'),
    (5, 'Projeto 5'),
    (6, 'Projeto 6');

-- Inserindo registros de Orientação
INSERT INTO Orientacao (DataInicio, DataFim, Matricula, CodigoProf, CodigoProj) VALUES
    ('2021-01-01', '2021-06-30', 1, 1, 1),
    ('2021-02-01', '2021-07-31', 2, 1, 2),
    ('2021-03-01', null, 3, 2, 3),
    ('2021-04-01', '2021-09-30', 4, 2, 4),
    ('2021-05-01', '2021-10-31', 5, 3, 5),
    ('2021-06-01', '2021-11-30', 6, 3, 6),
    ('2021-07-01', null, 7, 4, 1),
    ('2021-08-01', null, 8, 4, 2),
    ('2021-09-01', '2022-02-28', 1, 5, 3),
    ('2021-10-01', '2022-03-31', 2, 5, 4);