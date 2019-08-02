USE M_PSales;

INSERT INTO Cursos	(Nome)
		VALUES		('Técnico em Dev. Sistemas');

INSERT INTO Cursos	
		VALUES		('Técnico em Redes');

INSERT INTO Cursos	(Nome)
		VALUES		('Curso A')
					,('Curso B')
					,('Curso C');

SELECT IdCurso, Nome
	FROM Cursos;

INSERT INTO Disciplinas (Nome, IdCurso)
		VALUES		('HTML', 1) , ('CE' , 2);

SELECT * FROM Disciplinas;

SELECT Nome
	FROM Cursos;

SELECT *
	FROM Cursos;

SELECT Nome ,IdCurso
	FROM Cursos;

SELECT *
	FROM Disciplinas;

SELECT * FROM Cursos WHERE IdCurso >= 1;

SELECT Nome ,IdCurso
	FROM Cursos
	WHERE IdCurso = 1;

UPDATE Cursos
	SET Nome = 'Tecnico em Desenvolvimento de Sistemas'
	WHERE IdCurso = 1;

SELECT IdCurso, Nome
	FROM Cursos
	WHERE IdCurso = 6;

DELETE FROM Cursos
	WHERE IdCurso = 6;

SELECT C.*, D.*
	FROM Disciplinas D
	JOIN Cursos C
	ON D. IdCurso = C.IdCurso;

