-- Crea la base de datos
CREATE DATABASE PrimeraBase;

-- Otra opcion para crear una base de datos
CREATE SCHEMA SegundaBase;

-- Selecciona la base de datos
USE PrimeraBase;

-- Muestra las bases de datos
SHOW DATABASES;

-- Muestra las tablas de la base de datos seleccionada
SHOW TABLES;

-- Creamos las columnas de la tabla
CREATE TABLE PrimeraTabla (
    unValorNumerico int,
    unValorString varchar(50)
);

-- Insercion de datos
-- Metodo 1
INSERT INTO PrimeraTabla (unValorNumerico,unValorString)
VALUE(
    1,"Casa"
);

-- Metodo 2
INSERT INTO PrimeraTabla ()
VALUE
(2,"Auto"),(3,"Perro"),(2,"Auto"),(4,"Casa"),(5,"Mesa"),(2,"Acampar");

-- Muestra una tabla

SHOW COLUMNS FROM PrimeraTabla;

-- 1# Mostando una tabla completa con SELECT 

SELECT * FROM PrimeraTabla;

-- 2# Mostra columna especifica

SELECT unValorString FROM PrimeraTabla;

-- 3# Consulta multiple 

SELECT unValorString FROM PrimeraTabla;
SELECT unValorNumerico FROM PrimeraTabla;

-- 4# Consulta multiple de una sola linea

SELECT unValorNumerico, unValorString FROM PrimeraTabla;

-- 5# Consultando primero la tabla y luego la columna

SELECT PrimeraTabla.unValorString FROM PrimeraTabla;

-- Mostrando solo alguno de los datos

SELECT unValorString,unValorNumerico FROM PrimeraTabla LIMIT 5;

-- Mostrando algunos datos comenzando desde uno de ellos en particular

SELECT unValorString,unValorNumerico FROM PrimeraTabla LIMIT 0,5;

-- Obteniendo los no duplicados

SELECT DISTINCT unValorString, unValorNumerico FROM PrimeraTabla;

-- Ordenando la tabla

SELECT * FROM PrimeraTabla
ORDER BY unValorNumerico;

-- Ordenado multiple

SELECT * FROM PrimeraTabla
ORDER BY unValorNumerico, unValorString;