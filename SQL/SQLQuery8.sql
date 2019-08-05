Create Database M_DPS;

Use M_DPS;

Create Table Habilidades
(
	IdHabilidade Int Primary Key Identity
	,Habilidades Varchar(50)Unique Not Null
);

Create Table Departamentos
(
	IdDepartamento Int Primary Key Identity
	,Departamentos Varchar(50)Unique Not Null
);

Create Table Funcionarios
(
	IdFuncionario Int Primary Key Identity
	,Funcionarios Varchar(50)Unique Not Null
);

Create Table FuncionariosHabilidades
(
	IdFuncionario Int Foreign Key References Funcionarios (IdFuncionario)
	,IdHabilidaes Int Foreign Key References Habilidades (IdHabilidade)
);

Create Table FuncionariosDepartamentos
(
	IdFuncionario Int Foreign Key References Funcionarios (IdFuncionario)
	,IdDepartamento Int Foreign Key References Departamentos (IdDepartamento)
);

Create Table Salarios
(
	IdSalario Int Primary Key Identity
	,Salario Float Not Null
	,IdFuncionario Int Foreign Key References Funcionarios (IdFuncionario)
);

Drop Table Salarios;

Insert Into Habilidades	(Habilidades)
	Values			('Negociação')
					,('Mão Leve')
					,('Atirador');

Select *
	From Habilidades;

Insert Into Departamentos (Departamentos)
	Values			('Médico')
					,('Policial')
					,('Empresarial');

Select *
	From Departamentos;

Insert Into Funcionarios (Funcionarios)
	Values			('Leo')
					,('Pieri')
					,('Murilão');

Select *
	From Funcionarios;

Insert Into FuncionariosHabilidades (IdFuncionario , IdHabilidaes)
	Values			(1 , 3)
					,(2 , 3)
					,(3 , 2)
					,(1 , 1)
					,(2 , 2)
					,(2 , 1);

Select *
	From FuncionariosHabilidades;

Insert Into FuncionariosDepartamentos (IdDepartamento , IdFuncionario)
	Values			(1 , 3)
					,(2 , 2)
					,(3 , 1);

Select *
	From FuncionariosDepartamentos;

SELECT F.*, D.*
	FROM Funcionarios F
	JOIN FuncionariosDepartamentos D
	ON D.IdFuncionario = F.IdFuncionario;

Insert Into Salarios (Salario , IdFuncionario)
	Values			(1000 , 1)
					,(5000 ,2)
					,(500 , 3);

Select * From Salarios;

Update Salarios
Set Salario = 2000
Where IdFuncionario = 1;


Delete From Salarios Where IdSalario = 3;