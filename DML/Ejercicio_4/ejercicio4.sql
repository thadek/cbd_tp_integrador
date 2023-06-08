--A)Seleccionar NumeroInscripcion, NroAsiento, nroAula, IdCurso de aquellas inscripciones realizadas 5 días 
--antes de la fecha del curso 
SELECT i.NumeroInscripcion, i.NroAsiento, i.NroAula, i.idCurso
FROM Inscripcion i
INNER JOIN Curso c ON i.idCurso = c.IdCurso
WHERE i.fechaInscripcion = DATE_SUB(c.Fecha, INTERVAL 5 DAY);


--B)Seleccionar los asientos de las aulas, tipo ’Gandes’, que nunca han sido ocupados en inscripciones. Listar 
--idAula, NroAsiento, fila. Utilizar Not Exists
SELECT `nroAula`, `nroAsiento`, `fila` FROM `asiento` INNER JOIN aula ON (aula.numero= asiento.nroAula AND aula.tipo = "GRANDE") 
WHERE NOT EXISTS (SELECT * FROM inscripcion WHERE inscripcion.NroAsiento = asiento.nroAsiento);

--c) Listar la cantidad de cursos por cada tema principal 
--en lo que va de este año 2022. Listar NombreTema, 
--contenido y cantidad
SELECT curso.NombreTemaPrincipal, temario.contenido, COUNT(curso.NombreTemaPrincipal) AS cantidad 
FROM curso 
INNER JOIN temario ON (curso.NombreTemaPrincipal = temario.Nombre) 
WHERE curso.Fecha BETWEEN '2022-01-01' AND '2022-12-31' 
GROUP BY curso.NombreTemaPrincipal, temario.contenido;

--d) Listar la cantidad de inscripciones realizadas por fecha que correspondan a cursos del mes de Abril de 2022 
--y además el tema secundario debe contener ‘Base de datos’. Listar fecha de inscripcion y cantidad. Utilice el 
--operador IN para determinar el tema secundario.

SELECT `inscripcion`.`fechaInscripcion`, COUNT(`inscripcion`.idCurso) as cantidad FROM `inscripcion` INNER JOIN curso on(inscripcion.idCurso=curso.IdCurso) WHERE curso.NombreTemaSecundario in (SELECT nombre FROM temario where curso.NombreTemaSecundario='Base de Datos') AND curso.Fecha BETWEEN '2022-04-01' AND '2022-04-30' GROUP by `inscripcion`.idCurso;

