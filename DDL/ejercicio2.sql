-- Tabla Persona
CREATE TABLE Persona (
    tipoDoc VARCHAR(3) NOT NULL,
    nroDocumento VARCHAR(11) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    telefono VARCHAR(50),
    correoElectronico VARCHAR(50),
    PRIMARY KEY (tipoDoc, nroDocumento)
);

-- Tabla Alumno
CREATE TABLE Alumno (
    tipoDoc VARCHAR(3) NOT NULL,
    nroDocumento VARCHAR(11) NOT NULL,
    legajo VARCHAR(10) NOT NULL,
    PRIMARY KEY (tipoDoc, nroDocumento),
    FOREIGN KEY (tipoDoc, nroDocumento) REFERENCES Persona (tipoDoc, nroDocumento)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- Tabla Profesor
CREATE TABLE Profesor (
    tipoDoc VARCHAR(3) NOT NULL,
    nroDocumento VARCHAR(11) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    PRIMARY KEY (tipoDoc, nroDocumento),
    FOREIGN KEY (tipoDoc, nroDocumento) REFERENCES Persona (tipoDoc, nroDocumento)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);


-- Tabla Aula
CREATE TABLE Aula (
    numero INT NOT NULL,
    tipo VARCHAR(15) NOT NULL,
    cantidadAsientos INT NOT NULL,
    tipoDocProfesor VARCHAR(3),
    NroDocumentoProfesor VARCHAR(11),
    PRIMARY KEY (numero),
    FOREIGN KEY (tipoDocProfesor, NroDocumentoProfesor) REFERENCES Profesor (tipoDoc, nroDocumento)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- Tabla Asiento
CREATE TABLE Asiento (
    nroAula INT NOT NULL,
    nroAsiento INT NOT NULL,
    fila INT NOT NULL,
    PRIMARY KEY (nroAula, nroAsiento),
    FOREIGN KEY (nroAula) REFERENCES Aula (numero)
);

-- Tabla Temario
CREATE TABLE Temario (
    Nombre VARCHAR(50) NOT NULL,
    Contenido VARCHAR(50) NOT NULL,
    PRIMARY KEY (Nombre)
);

-- Tabla Curso
CREATE TABLE Curso (
    IdCurso INT NOT NULL,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    NroAula INT NOT NULL,   
    NombreTemaPrincipal VARCHAR(50) NOT NULL,
    NombreTemaSecundario VARCHAR(50) NOT NULL,
    PRIMARY KEY (IdCurso),
    FOREIGN KEY (NroAula) REFERENCES Aula (numero)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    FOREIGN KEY (NombreTemaPrincipal) REFERENCES Temario (Nombre)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    FOREIGN KEY (NombreTemaSecundario) REFERENCES Temario (Nombre)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);


-- Tabla Inscripcion
CREATE TABLE Inscripcion (
    NumeroInscripcion INT NOT NULL,
    tipoDocAlumno VARCHAR(3) NOT NULL,
    nroDocumentoAlumno VARCHAR(11) NOT NULL,
    NroAsiento INT NOT NULL,
    NroAula INT NOT NULL, 
    idCurso INT NOT NULL,
    fechaInscripcion DATE NOT NULL,
    PRIMARY KEY (NumeroInscripcion),
    FOREIGN KEY (tipoDocAlumno, nroDocumentoAlumno) REFERENCES Alumno (tipoDoc, nroDocumento)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    FOREIGN KEY (idCurso) REFERENCES Curso (IdCurso)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    FOREIGN KEY (nroAula,nroAsiento) REFERENCES Asiento (nroAula,nroAsiento)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);


-- Tabla Prefiere
CREATE TABLE Prefiere (
    tipoDocAlumno VARCHAR(3) NOT NULL,
    NroDocumentoAlumno VARCHAR(11) NOT NULL,
    NombreTema VARCHAR(50) NOT NULL,
    Motivo VARCHAR(50),
    PRIMARY KEY (tipoDocAlumno, NroDocumentoAlumno, NombreTema),
    FOREIGN KEY (tipoDocAlumno, NroDocumentoAlumno) REFERENCES Alumno (tipoDoc, nroDocumento)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    FOREIGN KEY (NombreTema) REFERENCES Temario (Nombre)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);