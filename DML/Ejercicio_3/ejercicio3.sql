-- Ejercicio 3 
-- 1) Agregar un profesor a la BD teniendo en cuenta las restricciones del modelo.

INSERT INTO Persona (tipoDoc,NroDocumento,apellido,nombre,fechaNacimiento,telefono,correoElectronico)
VALUES ('DNI','12345678','Perez','Luis','1990-05-01','+5492997974971','profesor@colegio.net');

INSERT INTO Profesor (tipoDoc,NroDocumento,titulo)
VALUES ('DNI','12345678','Lic. en Lengua y Literatura');



-- 2) Actualizar la Hora de los Cursos del viernes 24 de junio de 2022: hora a actualizar 17:00 hs.
UPDATE Curso SET Hora = '17:00' WHERE Fecha = '2022-06-24';



-- 3) Eliminar a los profesores que nunca han sido responsables de las aulas.
DELETE FROM Profesor WHERE (tipoDoc,NroDocumento) NOT IN (SELECT tipoDocProfesor,NroDocumentoProfesor FROM Aula);


