INSERT INTO Clientes (Num_Cedula, Nombre, apellido, email)
VALUES
    ('1234567890', 'Juan', 'Pérez', 'juan.perez@example.com'),
    ('9876543210', 'María', 'González', 'maria.gonzalez@example.com'),
    ('1111111111', 'Pedro', 'Rodríguez', 'pedro.rodriguez@example.com'),
    ('2222222222', 'Ana', 'Hernández', 'ana.hernandez@example.com'),
    ('3333333333', 'Luis', 'Martínez', 'luis.martinez@example.com'),
    ('4444444444', 'Sofía', 'García', 'sofia.garcia@example.com'),
    ('5555555555', 'Carlos', 'Sánchez', 'carlos.sanchez@example.com'),
    ('6666666666', 'Laura', 'Díaz', 'laura.diaz@example.com'),
    ('7777777777', 'Miguel', 'Fernández', 'miguel.fernandez@example.com'),
    ('8888888888', 'Elena', 'Gómez', 'elena.gomez@example.com'),
    ('9999999999', 'Rafael', 'López', 'rafael.lopez@example.com'),
    ('1010101010', 'Isabel', 'Pérez', 'isabel.perez@example.com');

INSERT INTO Trabajador (Num_Cedula, Nombre, Tipo_Trabajador)
VALUES
('1234567890', 'Juan Perez', 'Recepcionista'),
('9876543210', 'Maria Rodriguez', 'Miselaneo'),
('1111111111', 'Pedro Sanchez', 'Botones'),
('2222222222', 'Ana Gomez', 'Recepcionista'),
('3333333333', 'Luis Hernandez', 'Miselaneo'),
('4444444444', 'Sofia Lopez', 'Botones'),
('5555555555', 'Carlos Martinez', 'Recepcionista'),
('6666666666', 'Isabel Sanchez', 'Miselaneo'),
('7777777777', 'Rafael Gomez', 'Botones'),
('8888888888', 'Elena Hernandez', 'Recepcionista'),
('9999999999', 'Miguel Lopez', 'Miselaneo'),
('1010101010', 'Laura Martinez', 'Botones'),
('1111111112', 'Francisco Sanchez', 'Recepcionista'),
('1212121212', 'Cristina Gomez', 'Miselaneo'),
('1313131313', 'Andres Hernandez', 'Botones'),
('1414141414', 'Sandra Lopez', 'Recepcionista'),
('1515151515', 'Manuel Martinez', 'Miselaneo'),
('1616161616', 'Rosa Sanchez', 'Botones'),
('1717171717', 'Julia Gomez', 'Recepcionista'),
('1818181818', 'Pablo Hernandez', 'Miselaneo'),
('1919191919', 'Lucia Lopez', 'Botones');

INSERT INTO Administradores (Num_Cedula, Nombre, Tipo_Administrador)
VALUES
('1234567890', 'Juan Perez', 'G_General'),
('9876543210', 'Maria Rodriguez', 'G_Recepcion'),
('1111111111', 'Pedro Sanchez', 'G_Ventas_y_Marketing'),
('2222222222', 'Ana Gomez', 'G_Recursos_Humanos')

INSERT INTO Habitaciones (Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES
    ('Disponible', 'Individual', 1, 50.00),
    ('Ocupado', 'Doble', 2, 80.00),
    ('En limpieza', 'Triple', 3, 120.00),
    ('Disponible', 'Cuádruple', 4, 150.00),
    ('En mantenimiento', 'Suite', 2, 200.00),
    ('Disponible', 'Individual', 1, 40.00),
    ('Ocupado', 'Doble', 2, 90.00),
    ('En limpieza', 'Triple', 3, 130.00),
    ('Disponible', 'Cuádruple', 4, 160.00),
    ('En mantenimiento', 'Suite', 2, 220.00),
    ('Disponible', 'Individual', 1, 45.00),
    ('Ocupado', 'Doble', 2, 85.00),
    ('En limpieza', 'Triple', 3, 125.00),
    ('Disponible', 'Cuádruple', 4, 155.00),
    ('En mantenimiento', 'Suite', 2, 210.00);

INSERT INTO Habitaciones (Disponibilidad, Tipo_Habitacion, Capacidad, Precio)
VALUES ('Disponible', 'Cuádruple', 4, 155.00);

INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
VALUES
    ('2022-01-01', '2022-01-05', '2022-01-10', 1, '1234567890'),
    ('2022-01-05', '2022-01-10', '2022-01-15', 2, '9876543210'),
    ('2022-01-10', '2022-01-15', '2022-01-20', 3, '1111111111'),
    ('2022-01-15', '2022-01-20', '2022-01-25', 4, '2222222222'),
    ('2022-01-20', '2022-01-25', '2022-01-30', 5, '3333333333'),
    ('2022-01-25', '2022-01-30', '2022-02-04', 6, '4444444444'),
    ('2022-01-30', '2022-02-04', '2022-02-09', 7, '5555555555'),
    ('2022-02-04', '2022-02-09', '2022-02-14', 8, '6666666666'),
    ('2022-02-09', '2022-02-14', '2022-02-19', 9, '7777777777'),
    ('2022-02-14', '2022-02-19', '2022-02-24', 10, '8888888888'),
    ('2022-02-19', '2022-02-24', '2022-03-01', 11, '9999999999'),
    ('2022-02-24', '2022-03-01', '2022-03-06', 12, '1010101010'),
    ('2022-03-01', '2022-03-06', '2022-03-11', 13, '1234567890'),
    ('2022-03-06', '2022-03-11', '2022-03-16', 14, '9876543210'),
    ('2022-03-11', '2022-03-16', '2022-03-21', 15, '1111111111');

    
INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
VALUES
    ('2022-03-11', '2022-03-16', '2022-03-21', 15, '9999999999');