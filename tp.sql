/*Ejercicio 1 – Crear Base de Datos 
Crear una base de datos llamada veterinaria_patitas_felices.*/

CREAR veterinaria_patitas_felices

/*Ejercicio 2 – Crear tabla duenos 
Crear la tabla duenos con las siguientes columnas*/

create table duenos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(50) NOT NULL,
    APELLIDO VARCHAR(50) NOT NULL,
    TELEFONO VARCHAR(50) NOT NULL,
    DIRECCION VARCHAR(100)
)

/*Ejercicio 3 – Crear tabla mascotas 
Crear la tabla mascotas con las siguientes columnas:*/

create table mascotas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE,
    id_dueno INT,
    FOREIGN KEY (id_dueno) REFERENCES duenos(id)
    );


/*Ejercicio 4 – Crear tabla veterinarios 
Crear la tabla veterinarios con las siguientes columnas:*/

create table veterinario (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL, 
matricula VARCHAR(20) NOT NULL UNIQUE, 
especialidad VARCHAR(50) NOT NULL
)

/*Ejercicio 5 – Crear tabla historial_clinico 
Crear la tabla historial_clinico con las siguientes columnas:*/

create table historial_clinico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,
    fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    descripcion VARCHAR(250) NOT NULL,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id) ON DELETE CASCADE
);

/*Ejercicio 6 – Insertar registros 
Insertar: listo*/ 
● 3 dueños con información completa *
● 3 mascotas, cada una asociada a un dueño *
● 2 veterinarios con especialidades distintas *
● 3 registros de historial clínico*

/*Ejercicio 7 – Actualizar registros 
Realizar las siguientes actualizaciones:*/ 
1. Cambiar la dirección de un dueño (por ID o nombre). 
2. Actualizar la especialidad de un veterinario (por ID o matrícula). 
3. Editar la descripción de un historial clínico (por ID).

/*Ejercicio 8 – Eliminar registros */
1. Eliminar una mascota (por ID o nombre). 
2. Verificar que se eliminen automáticamente los registros del historial clínico asociados 
(ON DELETE CASCADE).

/*Ejercicio 9 – JOIN simple 
Consulta que muestre: */
● Nombre de la mascota 
● Especie 
● Nombre completo del dueño (nombre + apellido)

/*Ejercicio 10 – JOIN múltiple con historial 
Consulta que muestre todas las entradas del historial clínico con: */
● Nombre y especie de la mascota 
● Nombre completo del dueño 
● Nombre completo del veterinario 
● Fecha de registro 
● Descripción

Ordenados por fecha de registro descendente (DESC). 

Recomendaciones 
Se valorará especialmente: 
● Código SQL limpio y comentado 
● Organización del proyecto 
● Nomenclatura clara y consistente 
● Buenas prácticas: 
○ Uso de índices en claves foráneas 
○ Restricciones NOT NULL cuando corresponda 
Recursos adicionales 
● Documentación oficial de MySQL 
● Tutoriales básicos de SQL 
Soporte 
Ante dudas, consultar: 
● Documentación de MySQL 
● Materiales del curso 
● Instructor/a