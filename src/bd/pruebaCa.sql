create database pruebaCA;
use pruebaCA;

CREATE TABLE tbl_ClubDeportivo(
 id INT NOT NULL IDENTITY(1,1),
 nombre varchar(50),
 CONSTRAINT pkClubDeportivo PRIMARY KEY(id),
);

insert into tbl_ClubDeportivo values('Colo colo');
insert into tbl_ClubDeportivo values('Universidad de Chile');
insert into tbl_ClubDeportivo values('Union española');
insert into tbl_ClubDeportivo values('Universidad Catolica');
insert into tbl_ClubDeportivo values('Cobresal');
insert into tbl_ClubDeportivo values('Boca Juniors');
insert into tbl_ClubDeportivo values('Arsenal');
insert into tbl_ClubDeportivo values('River Plate');
insert into tbl_ClubDeportivo values('Corinthians');
insert into tbl_ClubDeportivo values('Palmeiras');
insert into tbl_ClubDeportivo values('Barcelona FC');
insert into tbl_ClubDeportivo values('Saint German');
insert into tbl_ClubDeportivo values('Bayern Munich');

CREATE TABLE tbl_Seleccion(
	id INT NOT NULL IDENTITY(1,1),
	descripcion varchar(20),	
	CONSTRAINT pkSeleccion PRIMARY KEY(id),
);

select*from tbl_Seleccion;

INSERT INTO tbl_Seleccion VALUES ('Estados Unidos')
INSERT INTO tbl_Seleccion VALUES ('Colombia')
INSERT INTO tbl_Seleccion VALUES ('Costa Rica')
INSERT INTO tbl_Seleccion VALUES ('Paraguay')
INSERT INTO tbl_Seleccion VALUES ('Brasil')
INSERT INTO tbl_Seleccion VALUES ('Ecuador')
INSERT INTO tbl_Seleccion VALUES ('Haití')
INSERT INTO tbl_Seleccion VALUES ('Perú')
INSERT INTO tbl_Seleccion VALUES ('México')
INSERT INTO tbl_Seleccion VALUES ('Uruguay')
INSERT INTO tbl_Seleccion VALUES ('Jamaica')
INSERT INTO tbl_Seleccion VALUES ('Venezuela')
INSERT INTO tbl_Seleccion VALUES ('Argentina')
INSERT INTO tbl_Seleccion VALUES ('Chile')
INSERT INTO tbl_Seleccion VALUES ('Panamá')
INSERT INTO tbl_Seleccion VALUES ('Bolivia')
INSERT INTO tbl_Seleccion VALUES ('Argentina')

CREATE TABLE tbl_DirectorTecnico(
	id INT NOT NULL IDENTITY(1,1),
	nombre varchar(15),
	clubDeportivo int,	
	CONSTRAINT pkDT PRIMARY KEY(id),
	CONSTRAINT fk_clubDeportivoDT FOREIGN KEY(clubDeportivo) references tbl_clubDeportivo(id),
);


insert into tbl_DirectorTecnico values('Emilio',1);
insert into tbl_DirectorTecnico values('Juan',5);
insert into tbl_DirectorTecnico values('Pedro',6);
insert into tbl_DirectorTecnico values('Almagro',7);
insert into tbl_DirectorTecnico values('Peres',8);
insert into tbl_DirectorTecnico values('Basofia',9);
insert into tbl_DirectorTecnico values('Meneses',10);
insert into tbl_DirectorTecnico values('Blanco',11);
insert into tbl_DirectorTecnico values('Epiteto',12);
insert into tbl_DirectorTecnico values('CaraRaja',13);

select 
tbl_DirectorTecnico.id, 
tbl_DirectorTecnico.nombre, 
clubDeportivo , 
tbl_ClubDeportivo.nombre 
from tbl_DirectorTecnico inner Join tbl_ClubDeportivo 
on tbl_ClubDeportivo.id=tbl_DirectorTecnico.clubDeportivo;

alter table tbl_DirectorTecnico
drop constraint fk_clubDeportivoDT;
alter table tbl_DirectorTecnico
add constraint fk_clubDeportivoDT foreign key (clubDeportivo) references tbl_Seleccion(id);

select 
tbl_DirectorTecnico.id, 
tbl_DirectorTecnico.nombre, 
clubDeportivo , 
tbl_Seleccion.descripcion
from tbl_DirectorTecnico inner Join tbl_Seleccion 
on tbl_Seleccion.id=tbl_DirectorTecnico.clubDeportivo;

