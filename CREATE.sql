USE `oficinas_virtuales`;
CREATE TABLE IF NOT EXISTS `Aliados`(
	`Id_aliado` SMALLINT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    `Nombre_aliado` VARCHAR(70) NOT NULL,
    `NombreMunicipio_aliado` VARCHAR(25) NOT NULL,
    `Cedula_aliado` BIGINT NOT NULL UNIQUE,
    `Direccion_aliado` VARCHAR(60) NOT NULL,
    `Telefono_aliado` BIGINT NOT NULL,
    `FechaVencimientoContrato_aliado` DATE NOT NULL,
    `Estado_aliado` VARCHAR(10) NOT NULL,
	`Usuario` VARCHAR(20) NOT NULL UNIQUE,
    `Contrasena` VARCHAR(20) NOT NULL
)ENGINE INNODB;

CREATE TABLE IF NOT EXISTS `ReporteFallas`(
	`Id_reporte` BIGINT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    `Id_aliado` SMALLINT NOT NULL,
    `Descripcion_reporte` TEXT NOT NULL,
    `FechaCreacion_reporte` DATE NOT NULL,
    `FechaSolucion_reporte` DATE NOT NULL,
    FOREIGN KEY (`Id_aliado`) REFERENCES `Aliados`(`Id_aliado`)
)ENGINE INNODB;

CREATE TABLE IF NOT EXISTS `Novedades`(
	`Id_novedad` BIGINT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    `Id_aliado` SMALLINT NOT NULL,
    `Tipo_novedad` VARCHAR(24) NOT NULL,
    `Mes_novedad` VARCHAR(15) NOT NULL,
    `Descripcion_novedad` VARCHAR(100) NOT NULL,
    `FechaCreacion_Novedad` DATE NOT NULL,
    `FechaSolucion_Novedad` DATE NOT NULL,
    FOREIGN KEY (`Id_aliado`) REFERENCES `Aliados`(`Id_aliado`)
)ENGINE INNODB;

CREATE TABLE IF NOT EXISTS `Encuestas`(
	`Id_encuesta` BIGINT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    `Id_aliado` SMALLINT NOT NULL,
	`Pregunta1_encuesta` TEXT NOT NULL,
    `Pregunta2_encuesta` TEXT NOT NULL,
    `Pregunta3_encuesta` TEXT NOT NULL,
    `Pregunta4_encuesta` TEXT NOT NULL,
    `Pregunta5_encuesta` TEXT NOT NULL,
    `FechaCreacion_encuesta` DATE NOT NULL,
    `MesAnio_encuesta` VARCHAR(20) NOT NULL,
    FOREIGN KEY (`Id_aliado`) REFERENCES `Aliados`(`Id_aliado`)
)ENGINE INNODB;

CREATE TABLE IF NOT EXISTS `PreguntasFrecuentes`( 
	Id_pregunta SMALLINT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	Nombre_pregunta TEXT NOT NULL,
	Descripcion_pregunta TEXT NOT NULL
)ENGINE INNODB;

#Hola mafe