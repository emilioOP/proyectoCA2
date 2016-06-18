create database proyectoCA;
use proyectoCA;
GO

CREATE TABLE tbl_usuario(
	id INT NOT NULL IDENTITY(1,1),
	descripcion varchar(20),
	clave varchar(20),
	permiso varchar(20),
	CONSTRAINT pk_id_usuario PRIMARY KEY(id)
);

CREATE TABLE tbl_Pais(
	id INT NOT NULL IDENTITY(1,1),
	pais varchar(15),
	CONSTRAINT pkPais PRIMARY KEY(id)
);

INSERT INTO tbl_Pais VALUES ('Estados Unidos')
INSERT INTO tbl_Pais VALUES ('Colombia')
INSERT INTO tbl_Pais VALUES ('Costa Rica')
INSERT INTO tbl_Pais VALUES ('Paraguay')
INSERT INTO tbl_Pais VALUES ('Brasil')
INSERT INTO tbl_Pais VALUES ('Ecuador')
INSERT INTO tbl_Pais VALUES ('Haití')
INSERT INTO tbl_Pais VALUES ('Perú')
INSERT INTO tbl_Pais VALUES ('México')
INSERT INTO tbl_Pais VALUES ('Uruguay')
INSERT INTO tbl_Pais VALUES ('Jamaica')
INSERT INTO tbl_Pais VALUES ('Venezuela')
INSERT INTO tbl_Pais VALUES ('Argentina')
INSERT INTO tbl_Pais VALUES ('Chile')
INSERT INTO tbl_Pais VALUES ('Panamá')
INSERT INTO tbl_Pais VALUES ('Bolivia')
INSERT INTO tbl_Pais VALUES ('Argentina')


CREATE TABLE tbl_ClubDeportivo(
 id INT NOT NULL IDENTITY(1,1),
 nombre varchar(50),
 CONSTRAINT pkClubDeportivo PRIMARY KEY(id),
);

CREATE TABLE tbl_estadoFisico(
 id INT NOT NULL IDENTITY(1,1),
 estado varchar(30),
 CONSTRAINT pkEstadoFisico PRIMARY KEY(id)
);

INSERT INTO tbl_estadoFisico VALUES('Excelente');
INSERT INTO tbl_estadoFisico VALUES('Regular');
INSERT INTO tbl_estadoFisico VALUES('Lesionado');
INSERT INTO tbl_estadoFisico VALUES('Fuera del Equipo');

CREATE TABLe tbl_posicion(
 id INT NOT NULL IDENTITY(1,1),
 posicion varchar(30),
 CONSTRAINT pkPosicion PRIMARY KEY(id)
 );

INSERT INTO tbl_posicion VALUES('Portero')
INSERT INTO tbl_posicion VALUES('Defensa')
INSERT INTO tbl_posicion VALUES('Mediocampista')
INSERT INTO tbl_posicion VALUES('Delantero')

CREATE TABLE tbl_Jugador(
	id INT NOT NULL IDENTITY(1,1),
	nombre varchar(15),
	apellido varchar(15),
	edad int,
	nacionalidad int,
	clubDeportivo int,
	estadoFisico int,
	esTitular bit,
	posicion int,
	nroCamiseta int,
	aniosComoJugador int,
	goles int,
	atajadas int,
	sueldoFIFA money,
	tarjetasRojas int,
	tarjetasAmarillas int,
	estaHabilitado bit,
		
	CONSTRAINT pk_IDJugador PRIMARY KEY(id),
	CONSTRAINT fkNacionalidadJugador FOREIGN KEY(nacionalidad) references tbl_Pais(id),
	CONSTRAINT fk_estadoFisico FOREIGN KEY(estadoFisico) references tbl_estadoFisico(id),
	CONSTRAINT fk_posicion FOREIGN KEY(posicion) references tbl_posicion(id),
	CONSTRAINT fk_clubDeportivoJugador FOREIGN KEY(clubDeportivo) references tbl_clubDeportivo(id),
);

CREATE TABLE tbl_DirectorTecnico(
	id INT NOT NULL IDENTITY(1,1),
	nombre varchar(15),
	apellido varchar(15),
	edad int,
	nacionalidad int,
	clubDeportivo int,
	aniosComoDT int,
	sueldoFIFA money,
	
	CONSTRAINT pkDT PRIMARY KEY(id),
	CONSTRAINT fkNacionalidadDT FOREIGN KEY(nacionalidad) references tbl_Pais(id),
	CONSTRAINT fk_clubDeportivoDT FOREIGN KEY(clubDeportivo) references tbl_clubDeportivo(id),
);

CREATE TABLE tbl_CuerpoTecnico(
	id INT NOT NULL IDENTITY(1,1),
	nombre varchar(15),
	apellido varchar(15),
	edad int,
	nacionalidad int,
	clubDeportivo int,
	aniosComoDT int,
	sueldoFIFA money,
	CONSTRAINT pkCT PRIMARY KEY(id),
	CONSTRAINT fkNacionalidadCT FOREIGN KEY(nacionalidad) references tbl_Pais(id),

	CONSTRAINT fk_clubDeportivoCT FOREIGN KEY(clubDeportivo) references tbl_clubDeportivo(id),
);

CREATE TABLE tbl_Fase(
 id INT NOT NULL IDENTITY(1,1),
 fase varchar(30),
 CONSTRAINT pkFase PRIMARY KEY(id)
);

INSERT INTO tbl_fase VALUES('Primera Fase');
INSERT INTO tbl_fase VALUES('Segunda Fase');
INSERT INTO tbl_fase VALUES('Tercera Fase');
INSERT INTO tbl_fase VALUES('Cuatos de Final');
INSERT INTO tbl_fase VALUES('Semifinal');
INSERT INTO tbl_fase VALUES('Final');

CREATE TABLE tbl_Grupo(
	id INT NOT NULL IDENTITY(1,1),
	grupo varchar(15),
	CONSTRAINT pkGrupo PRIMARY KEY(id)
);

CREATE TABLE tbl_estadoSeleccion(
 id INT NOT NULL IDENTITY(1,1),
 estado varchar(30),
 CONSTRAINT pkEstadoSeleccion PRIMARY KEY(id)
);

INSERT INTO tbl_estadoSeleccion VALUES ('Activa');
INSERT INTO tbl_estadoSeleccion VALUES ('Eliminada');
INSERT INTO tbl_estadoSeleccion VALUES ('Campeón');

CREATE TABLE tbl_Seleccion(
	id INT NOT NULL IDENTITY(1,1),
	cantidadJugadores int,
	cuerpoTecnico int,
	estado int,
	pais int,
	rankingFIFA int,
	fase int,
	id_grupo int,
	CONSTRAINT fkCuerpoT FOREIGN KEY(cuerpoTecnico) references tbl_CuerpoTecnico(id),
	CONSTRAINT pkSeleccion PRIMARY KEY(id),
	CONSTRAINT fkFaseSelecion FOREIGN KEY(fase) REFERENCES tbl_fase(id),
	CONSTRAINT fk_paisSeleccion FOREIGN KEY(pais) REFERENCES tbl_pais(id),
	CONSTRAINT fkEstadoSeleccion FOREIGN KEY(estado) REFERENCES tbl_estadoSeleccion(id),
	CONSTRAINT fkGrupoSeleccion FOREIGN KEY(id_grupo) REFERENCES tbl_Grupo(id),
);



CREATE TABLE tbl_arbitro(
	id INT NOT NULL IDENTITY(1,1),
	nombre varchar(15),
	apellido varchar(15),
	edad int,
	posicion varchar(15),
	pais int,
	CONSTRAINT pkArbitro PRIMARY KEY(id),
	CONSTRAINT fkpaisArbitro FOREIGN KEY(pais) REFERENCES tbl_pais(id),
);

CREATE TABLE tbl_estadio(
	id INT NOT NULL IDENTITY(1,1),
	nombre varchar(max),
	lugar varchar(max),
	capacidad int,
	CONSTRAINT pkEstadio PRIMARY KEY(id)
);

CREATE TABLE tbl_partidos(
	id INT NOT NULL IDENTITY(1,1),
	idSeleccion1 int,
	idSeleccion2 int,
	arbitro int,
	arbitroL1 int,
	arbitroL2 int,
	cuartoArbitro int,
	estadio int,
	publicoAsistente int,
	fecha date,
	horaInicio datetime,
	horaTermino datetime,
	fase int,
	CONSTRAINT fkSeleccion1 FOREIGN KEY(idSeleccion1) REFERENCES tbl_Seleccion(id),
	CONSTRAINT fkSeleccion2 FOREIGN KEY(idSeleccion2) REFERENCES tbl_Seleccion(id),

	CONSTRAINT fkArbitro1 FOREIGN KEY(arbitro) REFERENCES tbl_Arbitro(id),
	CONSTRAINT fkArbitro2 FOREIGN KEY(arbitroL1) REFERENCES tbl_Arbitro(id),
	CONSTRAINT fkArbitro3 FOREIGN KEY(arbitroL2) REFERENCES tbl_Arbitro(id),
	CONSTRAINT fkArbitro4 FOREIGN KEY(cuartoarbitro) REFERENCES tbl_Arbitro(id),

	CONSTRAINT fkEstadio FOREIGN KEY(estadio) REFERENCES tbl_Estadio(id),
	CONSTRAINT pkPartidos PRIMARY KEY(id),
	CONSTRAINT fkFasePartido FOREIGN KEY(fase) REFERENCES tbl_fase(id),
	
);
