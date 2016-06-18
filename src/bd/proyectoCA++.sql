CREATE PROCEDURE pr_IngresarJugador
@id INT,
@nombre VARCHAR(50),
@apellido VARCHAR(50),
@nacionalidad INT,
@nacimiento DATE,
@edad INT,
@posicion INT,
@altura INT,
@peso INT,
@seleccion INT,
@estado_fisico INT,
@titular VARCHAR(2),
@numero_camiseta INT,
@anios_jugando INT,
@cantidad_goles INT,
@sueldo_fifa INT,
@atajadas INT,
@tarjeta_amarilla INT,
@tarjeta_roja INT
AS
IF EXISTS (SELECT * FROM Jugadores WHERE id=@id)
	PRINT 'El jugador ya existe';
ELSE
	IF @nacionalidad = @seleccion 
		INSERT INTO [Jugadores] VALUES ( 
			@nombre, 
			@apellido, 
			@nacionalidad, 
			@nacimiento, 
			@edad, 
			@posicion, 
			@altura, 
			@peso, 
			@seleccion, 
			@estado_fisico, 
			@titular, 
			@numero_camiseta, 
			@anios_jugando, 
			@cantidad_goles, 
			@sueldo_fifa, 
			@atajadas, 
			@tarjeta_amarilla, 	
			@tarjeta_roja
		);
	ELSE
		PRINT 'Error en nacionalidad.';

EXEC pr_IngresarJugador 18, 'Arturo', 'Vidal', 1, '1992-6-6', 22, 6, 185, 80, 1, 1, 'Si', 8, 10, 0, 3000000, 0, 1, 3;

EXEC pr_IngresarJugador 19, 'Claudio', 'Bravo', 3, '1995-9-4', 22, 6, 185, 80, 2, 1, 'Si', 8, 10, 0, 1500000, 30, 0, 0;

/*4.2. Elaborar un Trigger llamado Tr_AnularEliminaciones, que me permita anular la
eliminación de cualquier jugador que tenga la categoría de Titular. Si el jugador es
defensa entonces cambiar su habilitación a “Deshabilitado”.*/

CREATE TRIGGER Tr_AnularEliminaciones
ON Jugadores 
AFTER DELETE
AS
IF (SELECT COUNT(*) FROM deleted WHERE titular = 'Si') = 1
	BEGIN
	RAISERROR ('No está permitido eliminar titulares!', 16, 1)
	ROLLBACK TRANSACTION
	END;

DELETE FROM Jugadores WHERE id = '18';

/*4.3. Elaborar un Procedimiento llamado Tr_ActualizarGoles, que me permita
almacenar por cada gol realizado por un jugador, la fecha en que se realizó, el
jugador que lo hizo y al equipo. Se debe considerar en esto que ningún jugador
puede realizar dos veces el mismo gol, si su equipo se encuentra eliminado de la
copa, o si ya no existen compromisos.*/

CREATE TABLE TablaGoles(
	id INT IDENTITY,
	id_jugador INT,
	fecha_gol DATE,
	seleccion INT,
	PRIMARY KEY(id),
	FOREIGN KEY(id_jugador) REFERENCES Jugadores(id),
	FOREIGN KEY(seleccion) REFERENCES Selecciones(id)
);

CREATE PROCEDURE Tr_ActualizarGoles
@id_jugador INT,
@fecha_gol DATE,
@seleccion INT
AS
IF EXISTS(SELECT * FROM Selecciones WHERE id = @seleccion AND estado = 'Deshabilitada')
	PRINT 'La selección está eliminada.'
ELSE
	INSERT INTO TablaGoles VALUES(@id_jugador, @fecha_gol, @seleccion);

EXEC Tr_ActualizarGoles '6', '2015-06-06', '10';

/*4.4. Elaborar una función llamada fn_PagarBonoGoles que me permita por cada Gol
realizado por un jugador incrementar el monto de un jugador considerando:

4.4.1. Si es el primer gol del jugador en la copa entonces el valor es 10.000
dólares.

4.4.2. Si el gol es el segundo en la copa entonces el valor es 15.000 dólares

4.4.3. Si el gol supera la cantidad de 4, entonces se multiplicará el valor del gol por
0,5 adicional.*/

CREATE FUNCTION fn_PagarBonoGoles(@id_jugador INT, @cantidadGoles INT)
RETURNS INT
AS
BEGIN
DECLARE @total INT
IF @cantidadGoles = 1
	SET @total = 10000
ELSE
	IF @cantidadGoles = 2
		SET @total = 15000
	ELSE
		IF @cantidadGoles >= 4
			SET @total = (@cantidadGoles * 10000) + ((@cantidadGoles * 10000) * 0.5)
RETURN(@total)
END

SELECT nombre, cantidad_goles, dbo.fn_PagarBonoGoles(id, cantidad_goles) valor FROM Jugadores WHERE id = 6;


/*4.6. Elaborar una función llamada fn_ResultadosPartido que permita ingresar el
nombre de dos equipos, la fecha y hora del partido, la sede donde se jugará, y que
permita almacenar los resultados del encuentro en una tabla llamada
PartidosJugados, donde además se pueda determinar:

4.6.1. La suma de puntos por partido ganado

4.6.2. Si el equipo pasa la primera ronda, octavos de final, semifinal o final

4.6.3. El equipo que no cumpla con las condiciones de la primera ronda (Puntaje
3, 1 o 0) o la eliminación directa de las etapas posteriores, debe quedar
eliminado.*/

CREATE FUNCTION fn_ResultadosPartido
(@ganador VARCHAR(50), @partido INT)
RETURNS @PartidosJugados TABLE
(id INT, seleccion_uno INT, seleccion_dos INT, fecha DATE, hora_inicio TIME, sede INT, fase INT, ganador INT)
AS
BEGIN
INSERT @PartidosJugados SELECT id, seleccion_uno, seleccion_dos, fecha, hora_inicio, sede, fase FROM Partidos where id = @partido
RETURN
END;
