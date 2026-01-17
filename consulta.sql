 /* Listar todos os alunos */
select * from Alunos;

 /* Listar todos os cursos */
select *from Cursos;

/* Mostrar cada aluno com o nome do curso e matrícula	*/
select A.nome, C.nome, A.matricula from Alunos A 
join Cursos C on C.id_curso = A.id_Curso;

/* Quantos Alunos tem em cada Curso*/
select  C.nome, count(A.id_curso) As Total_Alunos from Alunos A 
join Cursos C on C.id_curso = A.id_Curso
group by A.id_curso;

/* Mostras os aluno com 20 ou menos e quantas pessoa tem com a mesma idade */
select idade, count(idade) As Pessoas_Com_mesma_idade from Alunos
where idade <= 20
group by idade;

/* Altera um aluno de curso   */
update Alunos set id_curso = 2 
where id_aluno = 1;

/* Insere um novo Aluno na tabela  */
INSERT INTO Alunos (nome, id_curso, idade, matricula)
VALUES ('Marcos Silva', 1, 22, 202621);
	
/* Deleta um Aluno na tabela  */ 
delete from Alunos 
where id_Aluno = 21;