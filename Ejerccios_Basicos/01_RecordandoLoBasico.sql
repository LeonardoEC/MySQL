# Para crear una base de datos usamos los comandos CREATE - DATABASE - el nombre de la base de datos

CREATE DATABASE PrimeraBase;

# Otra forma de crear una base de datos es con el comando SCHEMA

CREATE SCHEMA SegundaBase;

# Antes de comenzar a cargar datos debemos indicar que usaremos esta base de datos con el comando USE

USE PrimeraBase;

# Podemos usar el comando SHOW para ver las bases de datos creadas(Siempre recordar el plural)

SHOW DATABASES;

# Podemos usar el comando SHOW para ver las tablas de la base de dato seleccionada(Siempre recordar el plural)

SHOW TABLES;

# Para crear una tabla usamos el usamos los comandos CREATE - TABLE - el nombre de la tabla y entre parentesis "()" las columnas que le daran forma

# Vale aclarar que acompañado del nombre de la columna debe de estar el tipo de valor que almacenara y separado con "," en el caso de agragar mas de un columna

# 1° Opcional: Ademas se puede colocar entre parentesis () la cantidad de caracteres para limitarlo

# 1° Advertencia: Las columnas no pueden tener valor null

CREATE TABLE PrimeraTabla (
    unValorNumerico int(),
    unValorString varchar(50)
);

# Para ingresar datos a una tabla ya creado usamos el comando INSERT INTO acompañado del nombre de la tabla:

# 1° Opcional: Podemos acompañaer el comando anterior con un par de paretensis () y el orden de insercion de los datos separados por ","

# 2° Opcional: Podemos ingresar los valores sin los parentesis pero deberemos respetar el orden de la tabla

# Luego con el comando VALUE acompañado de parentesis "()" iremos introduciendo los datos

# Observacion notece que al introducir valores vemos respetar la misma estructura de un lenguaje de programacion

INSERT INTO PrimeraTabla (unValorNumerico,unValorString)
VALUE(
    1,"CASA"
);

INSERT INTO PrimeraTabla ()
VALUE(
    2,"Auto"
);

# Podemos usar el comando SHOW COLUMS y luego con el comando FROM indicamos el nombre de la tabla(Siempre recordar el plural)

# Observacion: Este comando muestra como estan compuestas las tablas, segun los datos que le pasamos a la hora de crearla

SHOW COLUMNS FROM PrimeraTabla;

# Otro comando que podemos usar para visualizar las columna de una forma mas especifica es a traves del comando SELECT acompañado del comando FROM el cual ya sabemos para que funciona

# 1° Opcion: Con el * seleccionamos todas las columnas de la tabla

SELECT * FROM PrimeraTabla;

# 2° Opcion: Podemos especificar a que columna queremos accder pasando su nombre despues del SELCET

SELECT unValorString FROM PrimeraTabla;

# 3° Opcional: Podemos hacer una consulta multile duplicando el anterior codigo, cambiando el nombre de la tabla a las que querramos acceder

SELECT unValorString FROM PrimeraTabla;
SELECT unValorNumerico FROM PrimeraTabla;

# 4° Opcional: Podemos acceder a varias columnas indicandolo en el select y separandolas con una ","

SELECT unValorNumerico, unValorString FROM PrimeraTabla;

# 5° Opcional: Podemos proporcionar el nombre de la tabla antes del nombre de la columna, separándolos con un punto "."

SELECT PrimeraTabla.unValorString FROM PrimeraTabla;

# Podemos solicitar que solo nos arroje una cantidad precisa de datos con el comando LIMIT

SELECT unValorString,unValorNumerico FROM PrimeraTabla LIMIT 5;

# También podemos seleccionar un conjunto de registros en particular con el comando LIMIT, el primer valor que le pasemos sera el punto de inicio y el segundo el final
# El primer valor que le pasemos no aparecera en el resultado por que sera el punto de inicio

SELECT unValorString,unValorNumerico FROM PrimeraTabla LIMIT 3, 5;

# Un comando que va junto con SELEC es DISTINCT lo que hace es devolver los datos no duplicados, Luego del comando le pasamos las columnas a anailizar y elegimos la tabla

SELECT DISTINCT unValorString, unValorNumerico FROM PrimeraTabla;

# Tambien podemos ordenar la informacion que trabajemos con el comando ORDER BY al cual luego le asignaremos el nombre de la tabla a ordenar(ordena de menor a mayor o de la A a la Z)

SELECT * FROM PrimeraTabla
ORDER BY unValorNumerico;

# El mismo comando podemos usarlo para dos columnas
# 1° Observacion: Siempre toma el primer dato como referencia principal

SELECT * FROM PrimeraTabla
ORDER BY unValorNumerico, unValorString;

