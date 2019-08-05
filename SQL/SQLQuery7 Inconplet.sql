CREATE DATABASE M_Moda

USE M_Moda

Create Table Marca
(
	IdMarca Int Primary Key Identity
	,Marca Varchar(20) Not Null
);

Create Table Cor
(
	IdCor Int Primary Key Identity
	,Cor Varchar(20) Not Null
);

Create Table Tamanho
(
	IdTamanho Int Primary Key Identity
	,Tamanho Varchar(20) Not Null
);

Create Table CamisaTamanhoCor
(
	IdCamisaTamanhoCor Int Primary Key Identity
	,IdCamisa Int Foreign Key References Camisa (IdCamisa)
	,IdCor Int Foreign Key References Cor (IdCor)
	,IdTamanho Int Foreign Key References Tamanho (IdTamanho)
);


Create Table Camisa
(
	IdCamisa Int Primary Key Identity
	,IdMarca Int Foreign Key References Marca (IdMarca)
);

Insert Into Marca	(Marca)
	Values			('Nike')
					,('Adidas')
					,('Oakley')
					,('Supreme');

Select *
	From Marca;

Insert Into Cor	(Cor)
	Values			('Preto')
					,('Branco')
					,('Cinza')
					,('Azul');

Select *
	From Cor;

Insert Into Tamanho	(Tamanho)
	Values			('P')
					,('M')
					,('G')
					,('GG');

Select *
	From Tamanho;

Insert Into 	()
	Values			('P')
					,('M')
					,('G')
					,('GG');