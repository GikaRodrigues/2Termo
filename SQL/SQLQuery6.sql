CREATE DATABASE M_Livros;

USE M_Livros;

CREATE TABLE Generos
(
	IdGenero INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Ativo
(
	IdAtivo INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);

CREATE TABLE Autores
(
	IdAutor INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
	,Email VARCHAR(200)UNIQUE NOT NULL
	,Ativo INT FOREIGN KEY REFERENCES Ativo (IdAtivo)
	,DataNascimento DATE NOT NULL
);

CREATE TABLE Livros
(
	IdLivro INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
	,IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor)
	,IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

INSERT INTO Generos (Descricao)
	VALUES			('Acao')
					,('Aventura')
					,('Romance');

SELECT *
	FROM Generos;

INSERT INTO Ativo (Nome)
	VALUES			('True')
					,('False');

SELECT *
	FROM Ativo;

INSERT INTO Autores (Nome, Email, Ativo, DataNascimento)
	VALUES			('Pablo Picasso' , 'A@gmail.com' , 1 , '25/10/1881')
					,('Leo' , 'B@gmail.com' , 1 , '25/03/2002')
					,('Pieri' , 'C@gmail.com' , 2 , '12/02/2003');

SELECT *
	FROM Autores;


INSERT INTO Livros (Nome,IdAutor,IdGenero)
	VALUES			('Monalisa' , 3 , 1)
					,('Vc Sabia' , 4 , 2)
					,('Dora Aventurera' , 5 , 3);

SELECT *
	FROM Livros;

	-- LIVROS E AUTORES

SELECT L.*, A.*
	FROM Autores A
	JOIN Livros L
	ON L.IdAutor = A.IdAutor;

	-- LIVROS E GENEROS

SELECT L.*, G.*
	FROM Generos G
	JOIN Livros L
	ON L.IdGenero = G.IdGenero;

	-- LIVROS, AUTORES E GENEROS


SELECT L.*, G.*, A.*
	FROM Livros L
	JOIN Autores A
	ON L.IdAutor = A.IdAutor
	JOIN Generos G
	ON L.IdGenero = G.IdGenero;


	