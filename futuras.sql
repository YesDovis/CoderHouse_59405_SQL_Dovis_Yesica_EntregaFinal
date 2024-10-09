DELIMITER //
CREATE TRIGGER verificar_fecha_nacimiento
BEFORE INSERT ON Usuarios
FOR EACH ROW
BEGIN
    DECLARE dia INT;
    
    -- Extraer el día de la fecha de nacimiento
    SET dia = DAY(NEW.fecha_nacimiento);
    
    -- Verificar si el día está fuera del rango válido (1 a 31)
    IF dia < 1 OR dia > 31 THEN
        -- Genera un error si el día es inválido
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El día de la fecha de nacimiento debe
        estar entre 1 y 31.';
    END IF;
END;
//
DELIMITER ;

