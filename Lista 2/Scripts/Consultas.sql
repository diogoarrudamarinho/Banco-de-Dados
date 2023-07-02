-- Consultas SQL

-- 1)

select p.CodigoProf, p.nome
from Professor p
left join Orientacao o on p.CodigoProf = o.CodigoProf
where o.CodigoProf is null;

-- 2)

select pj.CodigoProj, pj.descricao, p.CodigoProf, p.nome, a.matricula, a.nome, a.email
from orientacao o
join aluno a on o.matricula = a.matricula
join professor p on o.CodigoProf = p.CodigoProf
join projeto pj on o.CodigoProj = pj.CodigoProj

-- 3)

SELECT a.Matricula, a.nome, t.telefone
FROM aluno a
LEFT JOIN telefone_aluno t ON a.Matricula = t.MatriculaAluno;

-- 4) 

SELECT a.nome, a.datanasc
FROM aluno a
WHERE a.Matricula NOT IN (
  SELECT t.MatriculaAluno
  FROM telefone_aluno t
);