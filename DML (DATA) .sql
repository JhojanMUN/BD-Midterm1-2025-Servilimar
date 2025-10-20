DML (DATA) - - - - - - - - - - -- - - - - - - - - -- - - - - 
INSERT INTO ciudad (idCiudad, nombreCiudad, CodigoPostal) Values
(1, 'cali','760001'),
(2, 'Bogotá','110111'),
(3, 'Medellín','050001'),
(4, 'Cartagena','130001'),
(5, 'Pereira','660001'),
(6, 'Manizales','170001'),
(7, 'Cúcuta','540001'),
(8, 'Bucaramanga','680001'),
(9, 'Ibagué','730001'),
(10, 'Barranquilla','080001');

INSERT INTO usuario (idUsuario, nombre, apellido, correo, telefono, idCiudad) VALUES
('01','Juan', 'Perez', 'juan.perez@cherry.com', '301013224', 1),
('02', 'María', 'Lopez', 'maria.lopez@cherry.com', '302556472', 2),
('03', 'Carlos', 'Gomez', 'carlos.gomez@cherry.com', '303426578', 3),
('04', 'Jarys', 'Acuna', 'jarys.acuna@cherry.com', '322334455', 4),
('05',  'Pedro', 'Fuentes', 'pedro.fuentes@cherry.com', '305829342', 5),
('06', 'Konoka', 'Moreno', 'konoka.moreno@cherry.com', '301834423', 6),
('07', 'Andrés', 'Gómez', 'andres.gomez@cherry.com', '307223144', 7),
('08', 'Sofía', 'Hernández', 'sofia.hernandez@cherry.com', '308454002', 8),
('09', 'Diego', 'Restrepo', 'diego.restrepo@cherry.com', '303934467', 9),
('10', 'Valentina', 'Nitola', 'valentina.nitola@cherry.com', '310522332', 10);

INSERT INTO cliente (idCliente, condicionEspecial) VALUES
(1, NULL),
(2, 'embarazo'),
(3, NULL),
(4, 'adulto mayor'),
(5, 'silla de ruedas');

INSERT INTO empleado (idEmpleado, cargo, departamento) VALUES
(6, 'Auxiliar', 'Atención al Cliente'),
(7, 'Coordinador', 'Operaciones'),
(8, 'Supervisor', 'Logística'),
(9, 'Técnico', 'Soporte'),
(10, 'Analista', 'Pagos');

INSERT INTO servicio (idServicio, nombreServicio, descripcion, estado) VALUES
(932, 'Despacho', 'Despacho de paquetes', 'activo'),
(933, 'Entrega', 'Entrega de documentos', 'activo'),
(934, 'Atención al cliente', 'Soporte general', 'activo'),
(935, 'Consultoría', 'Asesoría especializada', 'activo'),
(936, 'Pagos', 'Procesamiento de pagos', 'activo');

INSERT INTO turno (idTurno, idCliente, idEmpleado, idServicio, fecha, horaInicio, horaFin, estado) VALUES
(42, 1, 6, 932, '2025-10-18', '09:00', '09:30', 'programado'),
(43, 2, 7, 933, '2025-10-18', '09:30', '10:00', 'programado'),
(44, 3, 8, 934, '2025-10-18', '10:00', '10:30', 'programado'),
(45, 4, 9, 935, '2025-10-18', '10:30', '11:00', 'programado'),
(46, 5, 10, 936, '2025-10-18', '11:00', '11:30', 'programado');

INSERT INTO notificacion (idCliente, medio, mensaje, fechaEnvio, estado) VALUES
(1, 'correo', 'Tu turno ha sido programado para las 09:00', NOW(), 'enviado'),
(2, 'sms', 'Recordatorio: turno a las 09:30', NOW(), 'enviado'),
(3, 'correo', 'Cambio de hora en tu turno', NOW(), 'pendiente'),
(4, 'correo', 'Tu turno ha sido confirmado', NOW(), 'enviado'),
(5, 'sms', 'Recordatorio: turno hoy a las 11:00', NOW(), 'enviado');