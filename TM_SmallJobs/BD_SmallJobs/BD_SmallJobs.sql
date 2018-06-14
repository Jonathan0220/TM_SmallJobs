CREATE DATABASE TM_SMALLJOBS;
USE TM_SMALLJOBS; 

--Tabla para usuarios 
CREATE TABLE Usuarios (idUsuario int Primary Key Identity, Nombre varchar(50), Correo varchar (50), 
Contraseña varchar(50), Ubicacion varchar(50), tipoUsuario varchar(50));

        --Procedure Altas 
        CREATE Procedure sp_AltaUsuarios @Nombre varchar(50), @Correo varchar(50), @Contraseña varchar(50), @Ubicacion varchar (50), 
        @TipoUsuario varchar(50) as INSERT INTO Usuarios VALUES (@Nombre, @Correo, @Contraseña, @Ubicacion, @TipoUsuario);
        --Procedure Bajas
        CREATE PROCEDURE sp_BajaUsuarios @idUsuario int as Delete * from Usuarios WHERE idUsuario = @idUsuario;
        --Procedure Consulta
        CREATE PROCEDURE sp_ConsultaUsuarios @Correo varchar (50) as SELECT * FROM Usuarios WHERE @Correo = Correo;
        --Procedure Actualizacion 
        CREATE PROCEDURE sp_ActualizaUsuario @Nombre varchar(50), @Correo varchar(50), @Contraseña varchar(50), @Ubicacion varchar (50), 
        as UPDATE usuarios SET(Nombre = Nombre, @Correo = Correo, @Contraseña = Contraseña, @Ubicacion = Ubicacion) WHERE Correo = @Correo;


--Tabla de vacante
CREATE TABLE Vacante(idVacante int Primary Key Identitiy, idUsuario int Foreign Key, NombreVacante varchar (50), Descripcion varchar(50), 
TipoPedido varchar(50), NumContacto varchar(50), Direccion varchar(50), FechaInicio varchar(50), FechaFin varchar(50));

        --Procedure Altas 
        CREATE Procedure sp_AltaVacante @idUsuario int, @NombreVacante varchar (50) @Descripcion varchar(50), @TipoPedido varchar(50), 
        @NumContacto varchar (50), @Direccion varchar (50), @FechaInicio varchar(50), @FechaFin varchar(50)  as 
        INSERT INTO Vacante VALUES (@idUsuario, @Descripcion, @TipoPedido, @NumContacto, @Direccion, @FechaInicio, @FechaFin);
        --Procedure Bajas
        CREATE PROCEDURE sp_BajaVacante @idVacante int as Delete * from Vacante WHERE NombreVacante = @NombreVacante;
        --Procedure Consulta
        CREATE PROCEDURE sp_ConsultaVacante @NombreVacante varchar (50) as SELECT * FROM Vacante WHERE @NombreVacante = NombreVacante;
        --Procedure Actualizacion 
        CREATE PROCEDURE sp_ActualizaVacante @NombreVacante varchar(50), @Descripcion varchar(50), @TipoPedido varchar(50), 
        @NumContacto varchar (50), @Direccion varchar(50), @FechaInicio varchar(50), @FechaFin varchar(50) 
        as UPDATE usuarios SET(NombreVacante = @NombreVacante, Descripcion = @Descripcion, TipoPedido = @TipoPedido, NumContacto = @NumContacto,
        Direccion = @Direccion, FechaInicio = @FechaInicio, FechaFin = @FechaFin)
        WHERE Correo = @Correo;

--Tabla de solicitudes
CREATE TABLE Solicitud(idSolicitud int Primary key Identitiy, idVacante int Foreign key, idUsuario int Foreign key);



