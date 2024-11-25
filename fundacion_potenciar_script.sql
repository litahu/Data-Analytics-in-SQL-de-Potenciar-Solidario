/*
Autor: Lita Hume
Herramienta usada: MySql
*/

/*
------------
CREATE DATABASE
------------
*/
-- Create schema
 CREATE DATABASE potenciar_solidario;
 USE potenciar_solidario;
 
 /*
------------
CREAR TABLAS
------------
*/
-- Create tablas: "tipo_donante"
 CREATE TABLE tipo_donante(
	Id_tipo      INT not null,
    Tipo_donante TEXT not null,
    PRIMARY KEY (Id_tipo)
    );

INSERT INTO tipo_donante(Id_tipo, Tipo_donante) 
values
	("1","Empresa"),
    ("2","Estado"),
    ("3","Campaña"),
    ("4","ONG"),
    ("5","Agroindustria"),
    ("6","Tecnología");
 
 
 
-- Create table: "razon_social"
CREATE TABLE razon_social(
	Id_razon_social INT not null,
    Razon_social VARCHAR(12) not null,
    PRIMARY KEY (Id_razon_social)
    );

INSERT INTO razon_social(Id_razon_social, Razon_social)
VALUES
	("1","SAS"),
    ("2","SA"),
    ("3","GOB"),
    ("4","SRL"),
    ("5","ONG"),
    ("6","Cooperativa");



-- Create table: "contribuyente"
CREATE TABLE contribuyente(
	Id_contribuyente INT not null,
    Tipo_contribuyente VARCHAR(45) not null,
    PRIMARY KEY (Id_contribuyente)
    );

INSERT INTO contribuyente(Id_contribuyente, Tipo_contribuyente)
VALUES
	("1","Monotributista"),
    ("2","Exento"),
    ("3","Responsable Inscripto");



-- Create tablas: "estado_donante"
 CREATE TABLE estado_donante(
	Id_estado      INT not null, 
    Estado_donante VARCHAR(12) not null,
    PRIMARY KEY (Id_estado)
    );

INSERT INTO estado_donante(Id_estado, Estado_donante) 
values
	("1", "Activo"),
    ("2", "Inactivo");
    
    
    
-- Create table: "Frecuencia"
CREATE TABLE frecuencia(
	Id_frecuencia INT not null,
    Frecuencia VARCHAR(12) not null,
    PRIMARY KEY (Id_frecuencia)
    );
    
INSERT INTO frecuencia(Id_frecuencia, Frecuencia)
VALUES
	("1","Mensual"),
    ("2","Bimestral"),
    ("3","Trimestral"),
    ("4","Semestral"),
    ("5","Anual");



-- Create table: "pais"
CREATE TABLE pais(
	Id_pais INT not null,
    pais VARCHAR(12) not null,
    PRIMARY KEY (Id_pais)
	);

INSERT INTO pais(Id_pais, pais)
VALUES
	("1","Argentina"),
    ("2","Uruguay"),
    ("3","Brasil"),
    ("4","Paraguay"),
    ("5","Chile"),
    ("6","Colombia"),
    ("7","Bolivia"),
    ("8","México"),
    ("9","Venezuela"),
	("10","Perú");

 /*
 -- Despues de crear la base de datos y las tablas e importar el
 conjunto de datos:
 1. Seleccionar tabla, siguiente
 2. Haga clic en el icono "importar" registros desde un archivo
 externo, siguiente
 3. Seleccionar el fichero a importar, siguiente
 4. Marque usar tabla existente y truncar tabla antes de importar,
 asegúrase de que el nombre de la tabla es apropiado, siguiente
 5. Asegúrese de que el nombre de la columna es apropiado, siguiente
 6. Haga clic en siguiente en importar datos
 */

