CREATE DATABASE Hotel

use hotel

CREATE TABLE Clientes (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
CREATE TABLE Trabajador (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_Trabajador ENUM('Recepcionista', 'Miselaneo', 'Botones')
);
CREATE TABLE Administradores (
    Num_Cedula VARCHAR(100) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_Administrador ENUM('G_General', 'G_Recepcion', 'G_Ventas_y_Marketing',
                            'G_Recursos_Humanos', 'G_Finanzas', 'G_Eventos',
                            'G_Mantenimiento', 'G_Seguridad')
);
CREATE TABLE Habitaciones (
    id_habitacion INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Disponibilidad ENUM('Disponible', 'Ocupado', 'En limpieza', 'En mantenimiento', 'Otros', 'Reservado'),
    Tipo_Habitacion VARCHAR(100) NOT NULL,
    Capacidad INT NOT NULL,
    Precio DECIMAL(10,2) NOT NULL
);

-- drop Table habitaciones

ALTER TABLE Habitaciones
MODIFY COLUMN Tipo_Habitacion ENUM('Individual', 'Doble', 'Triple', 'Cuádruple', 'Suite') NOT NULL;

CREATE TABLE Reservas (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    fecha_reserva DATE NOT NULL,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    id_habitacion INT NOT NULL,
    Num_Cedula_Cliente VARCHAR(100) NOT NULL,
    Foreign Key (id_habitacion) REFERENCES Habitaciones(id_habitacion),
    Foreign Key (Num_Cedula_Cliente) REFERENCES Clientes(Num_Cedula)
);

drop DATABASE hotel
