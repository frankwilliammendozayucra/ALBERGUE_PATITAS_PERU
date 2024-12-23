CREATE DATABASE  albergue_perros;
USE albergue_perros;

-- Crear la tabla de usuarios
CREATE TABLE  usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,           -- Identificador único del usuario
    nombre VARCHAR(100) NOT NULL,                -- Nombre del usuario
    email VARCHAR(100) UNIQUE NOT NULL,          -- Correo electrónico único del usuario
    contrasena VARCHAR(255) NOT NULL             -- Contraseña encriptada del usuario
);

-- Crear la tabla de perros
CREATE TABLE perros (
    id INT AUTO_INCREMENT PRIMARY KEY,           -- Identificador único del perro
    nombre VARCHAR(100) NOT NULL,                -- Nombre del perro
    edad INT NOT NULL,                           -- Edad del perro
    raza VARCHAR(100) NOT NULL,                  -- Raza del perro
    tamano VARCHAR(50) NOT NULL,                 -- Tamaño del perro (Pequeño, Mediano, Grande)
    descripcion TEXT NOT NULL,                   -- Descripción del perro
    imagen VARCHAR(255) NOT NULL,                -- Ruta de la imagen del perro
    usuario_id INT NOT NULL,                     -- ID del usuario que registró el perro
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

-- Crear la tabla de reportes de perros perdidos
CREATE TABLE reportes (
    id INT AUTO_INCREMENT PRIMARY KEY,           -- Identificador único del reporte
    nombre_perro VARCHAR(100) NOT NULL,          -- Nombre del perro perdido
    descripcion TEXT NOT NULL,                   -- Descripción del reporte
    ubicacion VARCHAR(255) NOT NULL,             -- Ubicación del perro perdido
    imagen VARCHAR(255) NOT NULL,                -- Ruta de la imagen del reporte
    usuario_id INT NOT NULL,                     -- ID del usuario que creó el reporte
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
