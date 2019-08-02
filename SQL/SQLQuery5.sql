USE M_SStop;

INSERT INTO	EstilosMusicais (Nome)
		VALUES				('Rock');

INSERT INTO	EstilosMusicais (Nome)
		VALUES				('Pop');

SELECT IdEstiloMusical, Nome
	FROM EstilosMusicais;

INSERT INTO	Artistas (Nome , IdEstiloMusical)
		VALUES		('AC/DC' , 1),('Imagina Dragões' , 1),('KPOP' , 2),('Madonna' , 2);
					
SELECT * 
		FROM Artistas;

SELECT * FROM EstilosMusicais 
	WHERE IdEstiloMusical = 1;

SELECT * FROM EstilosMusicais 
	WHERE Nome = 'Rock';

SELECT * FROM EstilosMusicais 
	WHERE Nome LIKE 'Roc%';
	
SELECT * FROM EstilosMusicais 
	WHERE Nome LIKE '%k';

SELECT * FROM EstilosMusicais 
	WHERE Nome LIKE '%o%';

SELECT Artistas.*, EstilosMusicais.*
	FROM Artistas
	JOIN EstilosMusicais
	ON Artistas. IdEstiloMusical = EstilosMusicais.IdEstiloMusical;

DELETE FROM Artistas 
	WHERE IdArtistas = 5;


INSERT INTO	Artistas (Nome , IdEstiloMusical)
		VALUES		('Michel Jackson' , 2);