/*
Autora: Lita Hume
Día: 11/11/2024
Herramienta usada: MySQL Workbench
*/

/*
-----------------------
CREAR BASE DE DATOS
-----------------------
*/
-- drop database potenciar_ong;
-- Crea un esquema de base de datos
CREATE SCHEMA potenciar_ong;
USE potenciar_ong;

-- Crear tablas

-- Tabla "d_donante"
CREATE TABLE `potenciar_ong`.`d_donante` (
  `Donante_id` VARCHAR(12) NOT NULL,
  `Nombre_del_donador` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(100) NOT NULL,
  `Pais` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Donante_id`));

-- Tabla "d_impuesto"
CREATE TABLE `potenciar_ong`.`d_impuesto` (
  `Cuit_id` VARCHAR(45) NOT NULL,
  `Razon_social` VARCHAR(12) NOT NULL,
  `Tipo_de_contribuyente` VARCHAR(45) NOT NULL,
  `Alta` DATE NOT NULL,
  `Baja` DATE NOT NULL,
  `Activo` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`Cuit_id`));

-- Tabla "d_importe"
CREATE TABLE `potenciar_ong`.`d_importe` (
  `Importe_id` VARCHAR(12) NOT NULL,
  `Fecha_de_aporte` DATE NOT NULL,
  `Registro_mensual` VARCHAR(12) NOT NULL,
  `Importe` DECIMAL(8,1) NOT NULL,
  PRIMARY KEY (`Importe_id`));

-- Tabla "f_gestion"
CREATE TABLE `potenciar_ong`.`f_gestion` (
  `Gestion_id` INT NOT NULL,
  `Donante_id` VARCHAR(12) NULL,
  `Cuenta_id` INT NULL,
  `Importe_id` VARCHAR(12) NULL,
  `Cuit_id` VARCHAR(45) NULL,
  `Frecuencia` VARCHAR(12) NULL,
  `Estado de aporte` VARCHAR(12) NULL,
  PRIMARY KEY (`Gestion_id`));

-- Tabla "d_cuenta"
CREATE TABLE `potenciar_ong`.`d_cuenta` (
  `Cuenta_id` INT NOT NULL,
  `Nombre_de_cuenta` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`Cuenta_id`));

/*
-- después de crear la base de datos y la tabla,se encarga de importar el conjunto de datos
	1. Seleccionar la tabla, siguiente
    2. Haga clic en el icono de importar registro desde un archivo registro desde un archivo externo, junto
    3. Seleccione el archivo para importar, siguiente
    4. Verifique usar la tabla existente y truncar la tabla antes deimportar, asegúrese de que el nombre de la tabla
		coincida, a continuación
	5. Asegúrese de que los nombres de las columnas coincidan, a continuación
    6. Haga clic en Siguiente en importar datos
*/

