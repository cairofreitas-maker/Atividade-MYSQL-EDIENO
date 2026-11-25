alter table Aluno
Modify Estado varchar(2);

alter table Professor
drop column Complemento;

alter table Aluno
add column Datanascimento date;

insert into aluno (nome,email,CPF,endereco,Numero,Cidade, Estado, Datanascimento) 
values ('João Silva ','joao@email.com', 111111, 'Rua A', 123, 'Salvador', 'BA', '2005-05-17');

insert into aluno (nome,email,CPF,endereco,Numero,Cidade, Estado, Datanascimento) 
values ('Maria Silva ','Maria@email.com', 2222222, 'Rua B', 456, 'Salvador', 'BA', '2007-02-17');

insert into aluno (nome,email,CPF,endereco,Numero,Cidade, Estado, Datanascimento) 
values ('Pedro Silva ','Pedro@email.com', 3333333, 'Rua C', 789, 'Salvador', 'BA', '20010-09-18');

insert into Professor (nome,email,CPF,endereco,Numero,Cidade,Estado)
values ('Allan Pereira', 'allan@email.com', 113223423, 'Rua D', 10, 'Salvador', 'BA');

insert into Professor (nome,email,CPF,endereco,Numero,Cidade,Estado)
values ('Jenifer Silva', 'jenifer@email.com', 34353453453, 'Rua E', 78, 'Salvador', 'BA');

insert into Curso (nome,Professor_idProfessor) 
value ('Matemática',1);

insert into Curso (nome,Professor_idProfessor)
values ('Botânica',2);

insert into CursoAluno (Curso_idCurso, Aluno_idAluno) 
values (1,1);

insert into CursoAluno (Curso_idCurso, Aluno_idAluno)
values(2,2);

delete from Aluno
where idAluno = 2;

update Curso
set Nome = 'Botânica'
where idCurso = 2;

update Aluno
set nome = "Zé da Vida", CPF = 119999
where idAluno = 1;