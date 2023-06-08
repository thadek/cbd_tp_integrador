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






