--CASO 1

-- crear tabla de datos
CREATE DATABASE desafio3;
\c desafio3;

-- crear tabla departamentos
CREATE TABLE departamentos(id SERIAL, nombre VARCHAR(80), PRIMARY KEY(id));

--crear tabla trabajadores
CREATE TABLE trabajadores(id SERIAL, nombre VARCHAR(60) NOT NULL, rut VARCHAR(13) NOT NULL, direccion VARCHAR(90), departamento_id SMALLINT NOT NULL, PRIMARY KEY(id), FOREIGN KEY(departamento_id) REFERENCES departamento(id));

--crear tabla liquidaciones
CREATE TABLE liquidaciones(id SERIAL, nombre_archivo VARCHAR(50), trabajador_id SMALLINT, FOREIGN KEY(trabajador_id) REFERENCES trabajadores(id));



-- CASO 2

-- entrar a tabla de datos
\c desafio3;

-- crear tabla courses
CREATE TABLE courses(id SERIAL, name VARCHAR(40) NOT NULL, PRIMARY KEY(id));

-- crear tabla students
CREATE TABLE students(id SERIAL, name VARCHAR(30) NOT NULL, rut VARCHAR(15) NOT NULL,course_id INT NOT NULL, PRIMARY KEY(id), FOREIGN KEY(course_id) REFERENCES courses(id)); 

-- crear tabla teachers
CREATE TABLE teachers(id SERIAL, name VARCHAR(50) NOT NULL, department VARCHAR(40) NOT NULL, course_id SMALLINT, PRIMARY KEY(id), FOREIGN KEY(id) REFERENCES courses(id));
--crear tabla tests
CREATE TABLE tests(id SERIAL, name VARCHAR(50) NOT NULL, score SMALLINT, teacher_id SMALLINT, student_id SMALLINT, PRIMARY KEY(id), FOREIGN KEY(teacher_id) REFERENCES teachers(id), FOREIGN KEY(student_id) REFERENCES students(id));
