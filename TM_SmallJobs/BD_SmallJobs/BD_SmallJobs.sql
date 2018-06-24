CREATE DATABASE TM_SMALLJOBS;
USE TM_SMALLJOBS; 

--Tabla para usuarios 
CREATE TABLE Usuarios (idUsuario int Primary Key Identity, Nombre varchar(50), Correo varchar (50), 
Contraseña varchar(50), Ubicacion varchar(50), tipoUsuario varchar(50));

        --Procedure Altas 
        ALTER PROCEDURE sp_AltaUsuarios (@Nombre varchar(50), @Correo varchar(50), @Contraseña varchar(50), @Ubicacion varchar (50), 
        @TipoUsuario varchar(50)) AS
		IF EXISTS (SELECT * FROM Usuarios where Correo = @Correo) BEGIN
			return 0
			END
		ELSE
		BEGIN
		INSERT INTO Usuarios VALUES (@Nombre, @Correo, @Contraseña, @Ubicacion, @TipoUsuario)
		END

	
        --Procedure Bajas
        CREATE PROCEDURE sp_BajaUsuarios @idUsuario int as Delete from Usuarios WHERE idUsuario = @idUsuario;
        --Procedure Consulta
        CREATE PROCEDURE sp_ConsultaUsuarios @Correo varchar (50) as SELECT * FROM Usuarios WHERE @Correo = Correo;
        --Procedure Actualizacion 
        CREATE PROCEDURE sp_ActualizaUsuario @Nombre varchar(50), @Correo varchar(50), @Contraseña varchar(50), @Ubicacion varchar (50) 
        as UPDATE Usuarios SET Nombre = Nombre, @Correo = Correo, @Contraseña = Contraseña, @Ubicacion = Ubicacion WHERE Correo = @Correo;


--Tabla de vacante
CREATE TABLE Vacante(idVacante int Primary Key IDENTITY, idUsuario int Foreign Key references Usuarios(idUsuario), NombreVacante varchar(50), Descripcion varchar(50), 
TipoPedido varchar(50), NumContacto varchar(50), Direccion varchar(50), FechaInicio varchar(50), FechaFin varchar(50));

        --Procedure Altas 
        CREATE Procedure sp_AltaVacante @idUsuario int, @NombreVacante varchar (50), @Descripcion varchar(50), @TipoPedido varchar(50), 
        @NumContacto varchar (50), @Direccion varchar (50), @FechaInicio varchar(50), @FechaFin varchar(50)  as 
        INSERT INTO Vacante VALUES (@idUsuario, @NombreVacante, @Descripcion, @TipoPedido, @NumContacto, @Direccion, @FechaInicio, @FechaFin);
        --Procedure Bajas
        CREATE PROCEDURE sp_BajaVacante @NombreVacante varchar(50) as Delete from Vacante WHERE NombreVacante = @NombreVacante;
        --Procedure Consulta
        CREATE PROCEDURE sp_ConsultaVacante @NombreVacante varchar (50) as SELECT * FROM Vacante WHERE @NombreVacante = NombreVacante;
        --Procedure Actualizacion 
        CREATE PROCEDURE sp_ActualizaVacante @NombreVacante varchar(50), @Descripcion varchar(50), @TipoPedido varchar(50), 
        @NumContacto varchar (50), @Direccion varchar(50), @FechaInicio varchar(50), @FechaFin varchar(50), @Correo varchar(50)
        as UPDATE Vacante  SET NombreVacante = @NombreVacante, Descripcion = @Descripcion, TipoPedido = @TipoPedido, NumContacto = @NumContacto,
        Direccion = @Direccion, FechaInicio = @FechaInicio, FechaFin = @FechaFin from Vacante as v join Usuarios as u on v.idUsuario = u.idUsuario
        WHERE u.Correo = @Correo;

--Tabla de solicitudes
CREATE TABLE Solicitud(idSolicitud int Primary key identity, idVacante int Foreign key references Vacante(idVacante), idUsuario int Foreign key references Usuarios(idUsuario));

--procedimiento de ingreso a la app

ALTER PROCEDURE sp_loggin @Correo varchar(50), @Contraseña varchar(50) as 
IF EXISTS ( SELECT * FROM Usuarios as u WHERE @Correo = u.Correo and @Contraseña = u.Contraseña) BEGIN 
	RETURN 1
	END
ELSE 
BEGIN 
	RETURN 0
END


