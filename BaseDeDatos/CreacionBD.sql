CREATE SCHEMA Desafio_Neli_Raul;
USE Desafio_Neli_Raul;

CREATE TABLE Tarifas (
  id_tarifas INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_tarifas));

CREATE TABLE entrenadores (
  id_entrenadores INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  dni VARCHAR(9) NULL UNIQUE,
  especialidad VARCHAR(45) NULL,
  salario DECIMAL(8,2) NULL,
  PRIMARY KEY (id_entrenadores));

CREATE TABLE Clases (
  id_clase INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  dia_semana VARCHAR(9) NOT NULL,
  hora TIME NULL,
  aforo_maximo INT NULL CHECK (aforo_maximo > 0),
  id_entrenador INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_clase),
  FOREIGN KEY (id_entrenador)
    REFERENCES entrenadores (id_entrenadores)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE socios (
  id_socio INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellidos VARCHAR(45) NOT NULL,
  dni VARCHAR(9) NOT NULL UNIQUE,
  email VARCHAR(100) NULL,
  fecha_alta DATE NULL,
  fecha_nacimiento DATE NULL,
  activo BOOLEAN NULL,
  id_tarifa INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_socio),
  FOREIGN KEY (id_tarifa)
    REFERENCES Tarifas (id_tarifas)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE inscripciones (
  id_socio INT UNSIGNED NOT NULL,
  id_clase INT UNSIGNED NOT NULL,
  fecha_inscripciones DATE NOT NULL,
  asistencias INT NOT NULL,
  PRIMARY KEY (id_socio, id_clase),
  FOREIGN KEY (id_socio)
    REFERENCES socios (id_socio)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (id_clase)
    REFERENCES Clases (id_clase)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE mediciones (
  id_medicion INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_socio INT UNSIGNED NOT NULL,
  id_solicitud VARCHAR(45) NULL,
  fecha DATETIME NULL,
  peso_kg DECIMAL(5,2) NULL,
  altura_cm INT NULL,
  pulsaciones_reposo INT NULL,
  imc DECIMAL(4,1) NULL,
  clasificacion VARCHAR(45) NULL,
  estado VARCHAR(45) NULL,
  PRIMARY KEY (id_medicion),
  FOREIGN KEY (id_socio)
    REFERENCES socios (id_socio)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);