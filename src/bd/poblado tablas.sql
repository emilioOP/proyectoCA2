use proyectoCA;

/*Poblar tablas*/

/*por hacer por orden*/
--tbl_usuario
insert into tbl_usuario values('Administrador1','admin1','Administrador');
insert into tbl_usuario values('Administrador2','admin2','Administrador');
insert into tbl_usuario values('Usuario','usuario1','Estandar');

INSERT INTO tbl_Usuario VALUES('emilioSensual','123garrote','Estándar');
INSERT INTO tbl_Usuario VALUES('josexo','321cortes','Estándar');
INSERT INTO tbl_Usuario VALUES('Baironpelado','69pocoyo','Estándar');
INSERT INTO tbl_Usuario VALUES('PatoBlackOps','ilovecallofduty','Estándar');
INSERT INTO tbl_Usuario VALUES('Naiko','jaidefinichon','Estándar');
INSERT INTO tbl_Usuario VALUES('PalaciosMalote','soymalulo','Estándar');
INSERT INTO tbl_Usuario VALUES('JermanConJ','darklook','Estándar');
INSERT INTO tbl_Usuario VALUES('MartinPi','3,1416','Estándar');
INSERT INTO tbl_Usuario VALUES('RubenPro','ilovedatabase','Administrador');
INSERT INTO tbl_Usuario VALUES('Pia','unicorniosforever','Administrador');

select count(*) from tbl_usuario where tbl_usuario.descripcion='emilioSensual' and tbl_usuario.clave='123garrote' and tbl_usuario.permiso='Administrador' ;

--tbl_club_deportivo
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
select*from tbl_ClubDeportivo;

alter table tbl_DirectorTecnico
drop constraint fk_clubDeportivoDT;
alter table tbl_DirectorTecnico
add constraint fk_SeleccionDT foreign key (clubDeportivo) references tbl_Seleccion(id);

select 
tbl_DirectorTecnico.id, 
tbl_DirectorTecnico.nombre, 
tbl_DirectorTecnico.apellido,
clubDeportivo , 
tbl_Seleccion.pais
from tbl_DirectorTecnico inner Join tbl_Seleccion 
on tbl_Seleccion.id=tbl_DirectorTecnico.clubDeportivo;

--insert into tbl_ClubDeportivo values('Prueba');
--select*from tbl_ClubDeportivo;
--update tbl_ClubDeportivo set nombre='prueba2' where id=15;

--tbl_jugador
select*from tbl_Jugador
select*from tbl_Pais
insert into tbl_Jugador values('Alexis','Sanchez', 12, 14, 7, 1, 1, 4, 7, 12, 135, 0, 3271600000,0, 0, 1);
insert into tbl_Jugador values('Alexis','Sanchez', DATEDIFF(YEAR, '1988/12/19', GETDATE()), 14, 7, 1, 1, 4, 7, DATEDIFF(YEAR, '2005/02/12', GETDATE()), 135, 0, 3271600000,0, 0, 1);
insert into tbl_Jugador values('Lionel','Messi', DATEDIFF(YEAR, '1987/06/24', GETDATE()), 13, 11, 1, 1, 4, 10, DATEDIFF(YEAR, '2004/10/16', GETDATE()), 453, 0, 26256209540, 0, 0, 1);
insert into tbl_Jugador values('Luis','Suarez', DATEDIFF(YEAR, '1987/01/24', GETDATE()), 10, 11, 2, 1, 4, 9, DATEDIFF(YEAR, '2007/02/07', GETDATE()), 298, 0, 10304323744, 0, 0, 1);
insert into tbl_Jugador values('Edinson','Cavani', DATEDIFF(YEAR, '1987/02/14', GETDATE()), 10, 12, 1, 1, 4, 21, DATEDIFF(YEAR, '2008/02/06', GETDATE()), 228, 0, 10911890500, 0, 0, 1);
insert into tbl_Jugador values('Arturo','Vidal', DATEDIFF(YEAR, '1987/05/22', GETDATE()), 14, 12, 1, 1, 4, 23, DATEDIFF(YEAR, '2008/02/06', GETDATE()), 80, 0, 6079481850, 0, 0, 1);

select*from tbl_Jugador where nombre like '%em%' or apellido like '%em%';
INSERT INTO tbl_Jugador VALUES ('Emilio','Garrote', DATEDIFF(YEAR, '1992/10/21', GETDATE()), 12, 1, 1, 0, 1, 69, DATEDIFF(YEAR, '2015/01/24', GETDATE()), 0, 0, 250000, 0, 0, 1);
INSERT INTO tbl_Jugador VALUES ('José', 'Cortés', DATEDIFF(YEAR, '1994/11/30', GETDATE()), 12, 8, 1, 0, 2, 13, DATEDIFF(YEAR, '2014/01/24', GETDATE()), 0, 0, 260000, 0, 0, 1);
INSERT INTO tbl_Jugador VALUES ('Bryan','Bravo', DATEDIFF(YEAR, '1972/08/30', GETDATE()), 8, 1, 3, 1, 2, 24, DATEDIFF(YEAR, '2000/01/24', GETDATE()), 0, 0, 280000, 0, 0, 1);
INSERT INTO tbl_Jugador VALUES ('Patricio','González', DATEDIFF(YEAR, '1996/11/15', GETDATE()), 12, 5, 2, 3, 1, 12, DATEDIFF(YEAR, '2008/01/24', GETDATE()), 0, 0, 290000, 0, 0, 1);
INSERT INTO tbl_Jugador VALUES ('Nicolás','Ahumada', DATEDIFF(YEAR, '1998/01/01', GETDATE()), 11, 6, 1, 1, 3, 5, DATEDIFF(YEAR, '2007/01/24', GETDATE()), 0, 0, 300000, 0, 0, 1);

--tbl_directorioTecnico
select*from tbl_DirectorTecnico;
insert into tbl_DirectorTecnico values('Nombre1','Apellido1',40,1,3,20,100000);
insert into tbl_DirectorTecnico values('Nombre2','Apellido2',30,2,3,30,100000);
insert into tbl_DirectorTecnico values('Nombre3','Apellido3',40,3,3,40,100000);
insert into tbl_DirectorTecnico values('Nombre4','Apellido4',50,4,3,40,100000);
insert into tbl_DirectorTecnico values('Nombre5','Apellido5',20,5,3,50,100000);
insert into tbl_DirectorTecnico values('Nombre6','Apellido6',30,4,3,20,100000);
insert into tbl_DirectorTecnico values('Nombre7','Apellido7',40,3,3,40,100000);
insert into tbl_DirectorTecnico values('Nombre8','Apellido8',50,2,3,20,100000);
insert into tbl_DirectorTecnico values('Nombre9','Apellido9',60,1,3,10,100000);
insert into tbl_DirectorTecnico values('Nombre10','Apellid10',70,2,3,30,100000);

--tbl_cuerpoTecnico
select*from tbl_CuerpoTecnico;

insert into tbl_CuerpoTecnico values('Nombre11','Apellid11',40,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre12','Apellid12',50,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre13','Apellid13',60,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre14','Apellid14',40,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre15','Apellid15',30,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre16','Apellid16',40,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre17','Apellid17',30,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre18','Apellid18',40,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre19','Apellid19',30,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre20','Apellid20',40,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre21','Apellid21',30,2,3,30,100000);
insert into tbl_CuerpoTecnico values('Nombre22','Apellid22',40,2,3,30,100000);

--tbl_grupo
INSERT INTO tbl_Grupo VALUES('Grupo A');
INSERT INTO tbl_Grupo VALUES('Grupo B');
INSERT INTO tbl_Grupo VALUES('Grupo C');
INSERT INTO tbl_Grupo VALUES('Grupo D');

--tbl_seleccion

select*from tbl_Seleccion;
INSERT INTO tbl_Seleccion VALUES(22,1,1,1,29,1,1);
INSERT INTO tbl_Seleccion VALUES(22,2,1,2,4,1,1);
INSERT INTO tbl_Seleccion VALUES(22,3,1,3,25,1,1);
INSERT INTO tbl_Seleccion VALUES(22,4,1,4,39,1,1);

INSERT INTO tbl_Seleccion VALUES(22,5,1,5,7,1,2);
INSERT INTO tbl_Seleccion VALUES(22,6,1,6,12,1,2);
INSERT INTO tbl_Seleccion VALUES(22,7,1,7,71,1,2);
INSERT INTO tbl_Seleccion VALUES(22,8,1,8,46,1,2);

INSERT INTO tbl_Seleccion VALUES(22,9,1,9,16,1,3);
INSERT INTO tbl_Seleccion VALUES(22,10,1,10,9,1,3);
INSERT INTO tbl_Seleccion VALUES(22,11,1,11,55,1,3);
INSERT INTO tbl_Seleccion VALUES(22,12,1,12,74,1,3);

INSERT INTO tbl_Seleccion VALUES(22,13,1,1,1,1,4);
INSERT INTO tbl_Seleccion VALUES(22,14,1,1,3,1,4);
INSERT INTO tbl_Seleccion VALUES(22,15,1,1,52,1,4);
INSERT INTO tbl_Seleccion VALUES(22,16,1,1,79,1,4);

--tbl_arbrito
select*from tbl_arbitro
insert into tbl_arbitro values('Nombre30','Apellido30',40,'Lateral0',1);
insert into tbl_arbitro values('Nombre31','Apellido31',40,'Lateral1',2);
insert into tbl_arbitro values('Nombre32','Apellido32',40,'Lateral2',3);
insert into tbl_arbitro values('Nombre33','Apellido33',40,'Lateral3',4);
insert into tbl_arbitro values('Nombre34','Apellido34',40,'Lateral4',5);
insert into tbl_arbitro values('Nombre35','Apellido35',40,'Lateral5',6);
insert into tbl_arbitro values('Nombre36','Apellido36',40,'Lateral6',7);
insert into tbl_arbitro values('Nombre37','Apellido37',40,'Lateral7',8);
insert into tbl_arbitro values('Nombre38','Apellido38',40,'Lateral8',9);
insert into tbl_arbitro values('Nombre39','Apellido39',40,'Lateral9',10);

--tbl_estadio

insert into tbl_estadio values('Soldier Field','Chicago', 61500);
insert into tbl_estadio values('Levis Stadium','San Francisco', 71139);
insert into tbl_estadio values('Lincoln Financial Field','Filadelfia', 68532);
insert into tbl_estadio values('Estadio Universidad Phoenix','Phoenix', 63400);
insert into tbl_estadio values('Estadio Citrus Bowl','Orlando', 70188);
insert into tbl_estadio values('Estadio NRG','Houston', 69500);
insert into tbl_estadio values('MetLife Stadium','East Rutherford', 82566);
insert into tbl_estadio values('Gillette','Foxborough', 68756);
insert into tbl_estadio values('Estadio Rose Bowl','Los Angeles', 91136);
insert into tbl_estadio values('CenturyLink Field','Seattle', 67000);

/*
select*from tbl_estadio;
delete tbl_estadio where id<12;
insert into tbl_estadio values('NombrePrueba','LugarPrueba', 100);
update tbl_estadio set nombre='NombrePrueba3', lugar='LugarPrueba3', capacidad=200 where id=10;
*/

--tbl_partidos
select*from tbl_partidos; 
select tbl_Seleccion.id, tbl_Pais.pais from tbl_Seleccion inner join tbl_Pais on tbl_Pais.id=tbl_Seleccion.pais;
insert into tbl_partidos values(1,2,1,2,3,1,1,45000,'2016/06/03','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(7,8,1,2,3,4,2,45000,'2016/06/04','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(11,12,1,2,3,4,3,45000,'2016/06/05','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(3,4,1,2,3,4,4,45000,'2016/06/06','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(5,6,1,2,3,4,5,45000,'2016/06/04','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(9,10,1,2,3,4,6,45000,'2016/06/04','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(13,14,1,2,3,4,7,45000,'2016/06/05','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(5,7,1,2,3,4,8,45000,'2016/06/06','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(9,11,1,2,3,4,9,45000,'2016/06/07','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(13,15,1,2,3,4,1,45000,'2016/06/08','20:00:00', '22:00:00', 1);
insert into tbl_partidos values(2,1,1,2,3,4,1,45000,'2016/06/08','20:0:0', '22:0:0', 1);

select*from tbl_partidos; 
select id, idSeleccion1, idSeleccion2, arbitro, arbitroL1, arbitroL2, cuartoArbitro, estadio, publicoAsistente, DAY(fecha) as 'Dia',MONTH(fecha) as 'Mes',DATEPART(hour, CONVERT(VARCHAR(10), horaInicio, 108)) as 'horaInicio', DATEPART(minute, CONVERT(VARCHAR(10), horaInicio, 108)) as 'MinInicio',DATEPART(hour, CONVERT(VARCHAR(10), horaTermino, 108)) as 'horaInicio', DATEPART(minute, CONVERT(VARCHAR(10), horaTermino, 108)) as 'MinInicio',fase from tbl_partidos;

go

select*from getPartido

select*from getPartido where idSeleccion1 in (select id from tbl_Pais where tbl_Pais.pais like '%estados%') or idSeleccion2 in (select id from tbl_Pais where tbl_Pais.pais like '%estados%') or arbitro in (select id from tbl_arbitro where tbl_arbitro.nombre like '%nombre%' or tbl_arbitro.apellido like '%nombre%') or arbitroL1 in (select id from tbl_arbitro where tbl_arbitro.nombre like '%nombre%' or tbl_arbitro.apellido like '%nombre%') or arbitroL2 in (select id from tbl_arbitro where tbl_arbitro.nombre like '%nombre%' or tbl_arbitro.apellido like '%nombre%') or cuartoArbitro in (select id from tbl_arbitro where tbl_arbitro.nombre like '%nombre%' or tbl_arbitro.apellido like '%nombre%') or estadio in (select id from tbl_estadio where nombre like '%prueba%') or Dia like '%%' or Mes like '%%' or horaInicio like '%%' or minInicio like '%%' or horaTermino like '%%' or MinTermino like '%%' or fase like '%%'
go




/*ya pobladas*/
--tbl_pais: 16 registros
--tbl_estadoFisico: 4 registros
--tbl_posicion: 4 registros
--tbl_fase: 6 registros
--tbl_selecion 3 registros