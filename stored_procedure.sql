DELIMITER //
CREATE Procedure promedio_reservas(
    in p_fecha_entrada DATE,
    in p_fecha_entrada2 DATE
)
BEGIN
    SELECT ROUND(AVG(Reservas_diarias), 1) AS avg_Reservas_diarias
    from(
            SELECT DATE(reservas.fecha_entrada) as fecha, count(*) as Reservas_diarias  
            FROM reservas
            WHERE DATE(reservas.fecha_entrada) BETWEEN p_fecha_entrada AND p_fecha_entrada2
            GROUP BY DATE (reservas.fecha_entrada)
    ) AS Reservaciones_diarias;
END //
DELIMITER ;
CALL promedio_reservas('2022-03-11', '2022-03-31');

---------------------------------------------------------------------

drop Procedure promedio_reservas

---------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE agregar_reserva(
  IN p_fecha_reserva DATE,
  IN p_fecha_entrada DATE,
  IN p_fecha_salida DATE,
  IN p_id_habitacion INT,
  IN p_Num_Cedula_Cliente VARCHAR(100)
)
BEGIN
  INSERT INTO Reservas (fecha_reserva, fecha_entrada, fecha_salida, id_habitacion, Num_Cedula_Cliente)
  VALUES (p_fecha_reserva, p_fecha_entrada, p_fecha_salida, p_id_habitacion, p_Num_Cedula_Cliente);
END //
DELIMITER ;
CALL agregar_reserva('2022-01-01', '2022-01-05', '2022-01-10', 2, '9876543210');

---------------------------------------------------------------------

drop PROCEDURE agregar_reserva

---------------------------------------------------------------------

CREATE PROCEDURE Cancelar_Reserva(
    IN p_id_reserva INT
)
BEGIN
    -- Eliminar la reserva de la tabla Reservas
    DELETE FROM Reservas
    WHERE id_reserva = p_id_reserva;
END

CALL `Cancelar_Reserva`(8)