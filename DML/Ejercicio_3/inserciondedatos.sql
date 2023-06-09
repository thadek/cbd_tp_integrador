-- Se completan los datos de la tabla persona y alumno
INSERT INTO persona(apellido, correoElectronico, fechaNacimiento, nombre, nroDocumento, telefono, tipoDoc)VALUES('Sepulveda','sp@hotmail.com','1995-05-08','Emanuel','36988147','299608524','DNI');
INSERT INTO `alumno`(`tipoDoc`, `nroDocumento`, `legajo`) VALUES ('DNI','36988147','FAI1478');
INSERT INTO persona(apellido, correoElectronico, fechaNacimiento, nombre, nroDocumento, telefono, tipoDoc)VALUES('Romero','rr@hotmail.com','1992-09-01','Romina','34563147','299615322','DNI');
INSERT INTO `alumno`(`tipoDoc`, `nroDocumento`, `legajo`) VALUES ('DNI','34563147','FAI1778');
INSERT INTO persona(apellido, correoElectronico, fechaNacimiento, nombre, nroDocumento, telefono, tipoDoc)VALUES('Gonzalez','gr@hotmail.com','2000-02-01','Agustina','3618849','299369524','DNI');
INSERT INTO `alumno`(`tipoDoc`, `nroDocumento`, `legajo`) VALUES ('DNI','3618849','FAI1796');
INSERT INTO persona(apellido, correoElectronico, fechaNacimiento, nombre, nroDocumento, telefono, tipoDoc)VALUES('Saez','sj@hotmail.com','2000-07-14','Jorge','36669149','2996896524','DNI');
INSERT INTO `alumno`(`tipoDoc`, `nroDocumento`, `legajo`) VALUES ('DNI','36669149','FAI1599');
INSERT INTO persona(apellido, correoElectronico, fechaNacimiento, nombre, nroDocumento, telefono, tipoDoc)VALUES('Ripamonti','rm@hotmail.com','1992-09-30','Macarena','34742159','299615991','DNI');
INSERT INTO `alumno`(`tipoDoc`, `nroDocumento`, `legajo`) VALUES ('DNI','34742159','FAI1850');
INSERT INTO persona(apellido, correoElectronico, fechaNacimiento, nombre, nroDocumento, telefono, tipoDoc)VALUES('Rodriguez','rrl@hotmail.com','2002-08-26','Rodrigo','37896321','299369524','DNI');
INSERT INTO `alumno`(`tipoDoc`, `nroDocumento`, `legajo`) VALUES ('DNI','37896321','FAI1368');

-- Se completan los datos de la tabla persona y profesor
INSERT INTO Persona (tipoDoc,NroDocumento,apellido,nombre,fechaNacimiento,telefono,correoElectronico)
VALUES ('DNI','12345678','Perez','Luis','1990-05-01','+5492997974971','profesor@colegio.net');

INSERT INTO Profesor (tipoDoc,NroDocumento,titulo)
VALUES ('DNI','12345678','Lic. en Lengua y Literatura');

INSERT INTO Persona (tipoDoc,NroDocumento,apellido,nombre,fechaNacimiento,telefono,correoElectronico)
VALUES ('DNI','36452289','Perez','Lorenzo','1990-09-26','+5492991594971','profesorPL@colegio.net');

INSERT INTO Profesor (tipoDoc,NroDocumento,titulo)
VALUES ('DNI','36452289','Lic. en Matematica');

INSERT INTO Persona (tipoDoc,NroDocumento,apellido,nombre,fechaNacimiento,telefono,correoElectronico)
VALUES ('DNI','32748214','Lorna','Mabel','1983-12-20','+54929973652147','profesorLM@colegio.net');

INSERT INTO Profesor (tipoDoc,NroDocumento,titulo)
VALUES ('DNI','32748214','Lic. en Ciencias Naturales');

INSERT INTO Persona (tipoDoc,NroDocumento,apellido,nombre,fechaNacimiento,telefono,correoElectronico)
VALUES ('DNI','31369214','Ponte','Luis Carlos','1982-06-22','+549298147971','profesorPLC@colegio.net');

INSERT INTO Profesor (tipoDoc,NroDocumento,titulo)
VALUES ('DNI','31369214','Lic. en Ciencias Sociales');


INSERT INTO Persona (tipoDoc,NroDocumento,apellido,nombre,fechaNacimiento,telefono,correoElectronico)
VALUES ('DNI','36147852','Perez','Mauricio','1982-12-20','29979632147','profesorPM@colegio.net');

INSERT INTO Profesor (tipoDoc,NroDocumento,titulo)
VALUES ('DNI','36147852','Lic. en Matematica');

-- Se completan la tabla de Aula y Asiento
INSERT INTO `aula`(`numero`, `tipo`, `cantidadAsientos`, `tipoDocProfesor`, `NroDocumentoProfesor`)
VALUES ('1','Extra Grande','35','NULL','NULL');


INSERT INTO `aula`(`numero`, `tipo`, `cantidadAsientos`, `tipoDocProfesor`, `NroDocumentoProfesor`)
VALUES ('3','Chica','5','DNI','12345678');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('3','1','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('3','2','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('3','3','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('3','4','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('3','5','1');

INSERT INTO `aula`(`numero`, `tipo`, `cantidadAsientos`, `tipoDocProfesor`, `NroDocumentoProfesor`)
VALUES ('1','Mediana','15','DNI','32748214');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','1','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','2','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','3','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','4','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','5','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','6','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','7','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','8','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','9','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','10','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','11','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','12','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','13','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','14','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('1','15','3');

INSERT INTO `aula`(`numero`, `tipo`, `cantidadAsientos`, `tipoDocProfesor`, `NroDocumentoProfesor`)
VALUES ('2','Grande','20','DNI','31369214');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','1','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','2','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','3','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','4','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','5','1');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','6','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','7','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','8','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','9','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','10','2');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','11','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','22','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','13','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','14','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','15','3');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','16','4');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','17','4');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','18','4');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','19','4');
INSERT INTO `asiento`(`nroAula`, `nroAsiento`, `fila`) VALUES ('2','20','4');

-- Se completan la tabla de temario
INSERT INTO `temario`(`Nombre`, `Contenido`) VALUES ('Matematica','Suma, Resta, Multiplicacion, Division');
INSERT INTO `temario`(`Nombre`, `Contenido`) VALUES ('Lengua','Sustantivo, Verbo, Adjetivo, Adverbio');
INSERT INTO `temario`(`Nombre`, `Contenido`) VALUES ('Ciencias Sociales','Historia, Geografia, Economia, Politica');
INSERT INTO `temario`(`Nombre`, `Contenido`) VALUES ('Ciencias Naturales','Biologia, Fisica, Quimica, Astronomia');
INSERT INTO `temario`(`Nombre`, `Contenido`) VALUES ('Base de Datos','SQL, MySQL, Oracle, PostgreSQL');

-- Se completa la tabla con la eleccion del alumno que temario prefiere
INSERT INTO `prefiere`(`tipoDocAlumno`, `NroDocumentoAlumno`, `NombreTema`, `Motivo`) 
VALUES ('DNI','36988147','Matematica','Me gusta');
INSERT INTO `prefiere`(`tipoDocAlumno`, `NroDocumentoAlumno`, `NombreTema`, `Motivo`)
VALUES ('DNI','34563147','Matematica','Me resulta facil');
INSERT INTO `prefiere`(`tipoDocAlumno`, `NroDocumentoAlumno`, `NombreTema`, `Motivo`)
VALUES ('DNI','37896321','Ciencias Sociales','Me gusta');
INSERT INTO `prefiere`(`tipoDocAlumno`, `NroDocumentoAlumno`, `NombreTema`, `Motivo`)
VALUES ('DNI','34742159','Ciencias Naturales','Cuidar al planeta');

-- Se completa la tabla curso
INSERT INTO `curso`(`IdCurso`, `Fecha`, `Hora`, `NroAula`, `NombreTemaPrincipal`, `NombreTemaSecundario`)
VALUES 
(1, '2022-05-02', '09:00:00', 1, 'Matematica', 'Lengua'),
(2, '2022-05-02', '08:00:00', 2, 'Ciencias Sociales', 'Ciencias Naturales'),
(3, '2022-06-01', '10:00:00', 3, 'Lengua', 'Matematica'),
(4, '2022-06-24', '17:00:00', 2, 'Ciencias Naturales', 'Ciencias Sociales'),
(5, '2022-02-01', '13:00:00', 2, 'Matematica', 'Ciencias Sociales'),
(6, '2022-07-01', '09:00:00', 2, 'Base de Datos', 'Ciencias Sociales'),
(7, '2022-04-01', '19:30:00', 2, 'Ciencias Naturales', 'Base de Datos'),
(8, '2022-09-01', '19:30:00', 2, 'Ciencias Naturales', 'Ciencias Sociales');


-- se completa latabla de inscripcion
INSERT INTO `inscripcion`(`NumeroInscripcion`, `tipoDocAlumno`, `nroDocumentoAlumno`, `NroAsiento`, `NroAula`, `idCurso`, `fechaInscripcion`) 
VALUES
(1, 'DNI', '36988147', 6, 1, 1, '2022-04-27'),
(2, 'DNI', '36988147', 6, 1, 2, '2022-04-29'),
(3, 'DNI', '3618849', 1, 2, 3, '2022-06-28'),
(4, 'DNI', '3618849', 1, 3, 2, '2022-04-27'),
(5, 'DNI', '37896321', 22, 2, 1, '2022-04-27'),
(6, 'DNI', '34742159', 9, 2, 7, '2022-04-27'),
(7, 'DNI', '34563147', 8, 2, 7, '2022-04-27');

-- se eliminan los profesores que no tienen aula asignada
DELETE FROM profesor WHERE (tipoDoc,NroDocumento) NOT IN (SELECT tipoDocProfesor,NroDocumentoProfesor 
FROM aula INNER JOIN profesor ON(tipoDocProfesor=tipoDoc AND NroDocumentoProfesor=NroDocumento ));

