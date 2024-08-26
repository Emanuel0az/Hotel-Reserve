CREATE VIEW mostar_disponibles AS 
SELECT `Disponibilidad`, `Tipo_Habitacion`, `Capacidad`
FROM habitaciones
WHERE `Disponibilidad` = 'Disponible'

SELECT * FROM mostar_disponibles

-- CREATE TRIGGER actualizar_vista_mantenimiento
-- AFTER INSERT OR UPDATE OR DELETE ON habitaciones
-- FOR EACH ROW
-- BEGIN
--     DROP VIEW mostrar_mantenimiento;
--     CREATE View mostrar_mantenimiento AS 
--     SELECT `Disponibilidad`,`Tipo_Habitacion`
--     FROM habitaciones
--     INNER JOIN reservas ON habitaciones.id_habitacion = reservas.id_habitacion
--     WHERE `Disponibilidad` = 'En mantenimiento';
-- END;

CREATE View mostrar_mantenimiento AS 
SELECT `Disponibilidad`,`Tipo_Habitacion`
FROM habitaciones
INNER JOIN reservas ON habitaciones.id_habitacion = reservas.id_habitacion
WHERE `Disponibilidad` = 'En mantenimiento'

SELECT * FROM mostrar_mantenimiento

drop view mostrar_mantenimiento

CREATE View mostrar_ocupadas AS 
SELECT h.`Disponibilidad`,
     CONCAT('La habitación ', h.`id_habitacion`, ' está ocupada por ', c.`nombre`) as ocupante,
     CONCAT('Entró el ', r.`fecha_entrada`, ' y saldrá el ', r.`fecha_salida`) as fecha_estadia
FROM habitaciones h
INNER JOIN reservas r ON h.`id_habitacion` = r.`id_habitacion`
INNER JOIN clientes c ON r.`Num_Cedula_Cliente` = c.`Num_Cedula`
WHERE h.`Disponibilidad` = 'ocupado';

SELECT * FROM mostrar_ocupadas