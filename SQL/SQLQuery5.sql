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

DELETE FROM Artistas WHERE IdArtistas = 4;
