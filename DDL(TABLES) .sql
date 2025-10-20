--#DDL(TABLES)

--Tabla ciudad
CREATE TABLE ciudad(
	idCiudad INTEGER PRIMARY KEY,
	nombreCiudad VARCHAR(100),
	codigoPostal VARCHAR(30)
);

-- Tabla usuario base
CREATE TABLE usuario(
	idUsuario INTEGER PRIMARY KEY,
	nombre VARCHAR(100),
	apellido VARCHAR(100),
	correo VARCHAR(100),
	telefono INT,
	idCiudad INTEGER,
	FOREIGN KEY (idCiudad) REFERENCES ciudad(idCiudad)
);

--Tabla Cliente / relacion 1:1 con usuario
CREATE TABLE cliente(
	idCliente INTEGER PRIMARY KEY,
	condicionEspecial VARCHAR(100),
	FOREIGN KEY (idCliente) REFERENCES usuario(idUsuario)
);

--Tabla Empleado / relacion 1:1 con usuario
CREATE TABLE empleado( 
	idEmpleado INTEGER PRIMARY KEY,
    cargo VARCHAR(150),
    departamento VARCHAR(150),
    FOREIGN KEY (idEmpleado) REFERENCES usuario(idUsuario)
);

-- Tabla servicio
CREATE TABLE servicio(
    idServicio INTEGER PRIMARY KEY,
    nombreServicio VARCHAR(150),
    descripcion TEXT,
    estado VARCHAR(30)
);

-- Tabla turno (relaciona cliente, empleado y servicio)
CREATE TABLE turno(
    idTurno INTEGER PRIMARY KEY,
    idCliente INTEGER,
    idEmpleado INTEGER,
    idServicio INTEGER,
    fecha DATE NOT NULL,
    horaInicio TIME,
    horaFin TIME,
    estado VARCHAR(30),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente),
    FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado),
    FOREIGN KEY (idServicio) REFERENCES servicio(idServicio)
);

-- Tabla notificacion (enviada al cliente)
CREATE TABLE notificacion(
    idNotificacion SERIAL PRIMARY KEY,
    idCliente INTEGER,
    medio VARCHAR(50),
    mensaje TEXT,
    fechaEnvio TIMESTAMP,
    estado VARCHAR(30),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);
