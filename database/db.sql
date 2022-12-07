--Script para crear en una sola ejecución la base de datos, tablas y datos

--Crear base de datos
GO
CREATE DATABASE Matricula;
GO

--Usar base de datos
USE Matricula;
GO

--Crear tabla alumnos
CREATE TABLE alumnos(
id_alumno int IDENTITY(1,1) NOT NULL,
nombre nvarchar(100) NOT NULL,
PRIMARY KEY(id_alumno)
);
GO

--Insertar alumnos
INSERT INTO alumnos VALUES 
('Alejandro'),
('Armando'),
('Sofia'),
('Andrea'),
('Rebeca'),
('Gloriana'),
('Karen');
GO

--Crear tabla cursos
CREATE TABLE cursos(
id_curso int IDENTITY(1,1) NOT NULL,
nombre nvarchar(100) NOT NULL,
PRIMARY KEY(id_curso)
);
GO

--Insertar cursos
INSERT INTO cursos VALUES 
('Bases de datos'),
('React'),
('Angular');
GO


--Crear tabla matricula
CREATE TABLE matricula(
id_matricula int IDENTITY(1,1) NOT NULL,
id_alumno int NOT NULL,
id_curso int NOT NULL,
PRIMARY KEY(id_matricula),
CONSTRAINT FK_MatriculaAlumno FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
CONSTRAINT FK_MatriclaCurso FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);
GO

--Insertar datos matriculados
INSERT INTO matricula VALUES
(1,1),
(2,1),
(3,2),
(4,2),
(5,3),
(6,3),
(7,3);
GO





SELECT * FROM alumnos
GO

--Script para borrar intencionalmente todos los alumnos para luego importar el respaldo desde un backup
--DELETE alumnos
