CREATE TABLE tutorias.docente (
    id_docente INT PRIMARY KEY,
    nom_docente VARCHAR(10),
    ape_docente VARCHAR(15),
    correo VARCHAR(30),
    telefono INT,
    registro_doc TIMESTAMP
);

CREATE TABLE tutorias.estudiantes (
    id_estudiante INT PRIMARY KEY,
    nom_estudiante VARCHAR(10),
    ape_estudiante VARCHAR(15),
    correo VARCHAR(30),
    telefono INT,
    registro_est TIMESTAMP
);

CREATE TABLE tutorias.materia (
    id_materia INT PRIMARY KEY,
    nombre_materia VARCHAR(15)
);

CREATE TABLE tutorias.tutorias (
    id_tutoria INT PRIMARY KEY,
    tema VARCHAR(15),
    fecha DATE,
    hora TIME,
    id_docente INT,
    id_estudiante INT,
    FOREIGN KEY (id_docente) REFERENCES docente(id_docente)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tutorias.notas (
    id_nota INT PRIMARY KEY,
    id_materia INT,
    nota FLOAT,
    id_estudiante INT,
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tutorias.docente_materia (
    id_docente INT,
    id_materia INT,
    PRIMARY KEY (id_docente, id_materia),
    FOREIGN KEY (id_docente) REFERENCES docente(id_docente)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
        ON UPDATE CASCADE ON DELETE CASCADE
);

ALTER TABLE tutorias.docente MODIFY telefono BIGINT;
ALTER TABLE tutorias.estudiantes MODIFY telefono BIGINT;

INSERT INTO tutorias.docente (id_docente, nom_docente, ape_docente, correo, telefono, registro_doc) VALUES
(1, 'Carlos', 'Perez', 'carlos.perez@uni.edu', 3001111111, NOW()),
(2, 'Ana', 'Lopez', 'ana.lopez@uni.edu', 3001111112, NOW()),
(3, 'Luis', 'Martinez', 'luis.mtz@uni.edu', 3001111113, NOW()),
(4, 'Marta', 'Gomez', 'marta.gomez@uni.edu', 3001111114, NOW()),
(5, 'Sofia', 'Castro', 'sofia.castro@uni.edu', 3001111115, NOW()),
(6, 'Diego', 'Ramirez', 'diego.ramirez@uni.edu', 3001111116, NOW()),
(7, 'Julian', 'Reyes', 'julian.reyes@uni.edu', 3001111117, NOW()),
(8, 'Laura', 'Hernandez', 'laura.hernandez@uni.edu', 3001111118, NOW()),
(9, 'Andres', 'Rojas', 'andres.rojas@uni.edu', 3001111119, NOW()),
(10, 'Paola', 'Guerrero', 'paola.guerrero@uni.edu', 3001111120, NOW()),
(11, 'David', 'Vargas', 'david.vargas@uni.edu', 3001111121, NOW()),
(12, 'Cristina', 'Mora', 'cristina.mora@uni.edu', 3001111122, NOW()),
(13, 'Santiago', 'Acosta', 'santiago.acosta@uni.edu', 3001111123, NOW()),
(14, 'Valeria', 'Mejia', 'valeria.mejia@uni.edu', 3001111124, NOW()),
(15, 'Felipe', 'Gutierrez', 'felipe.gutierrez@uni.edu', 3001111125, NOW()),
(16, 'Lucia', 'Navarro', 'lucia.navarro@uni.edu', 3001111126, NOW()),
(17, 'Sebastian', 'Cano', 'sebastian.cano@uni.edu', 3001111127, NOW()),
(18, 'Manuela', 'Diaz', 'manuela.diaz@uni.edu', 3001111128, NOW()),
(19, 'Camilo', 'Moreno', 'camilo.moreno@uni.edu', 3001111129, NOW()),
(20, 'Angela', 'Salazar', 'angela.salazar@uni.edu', 3001111130, NOW()),
(21, 'Esteban', 'Cortes', 'esteban.cortes@uni.edu', 3001111131, NOW()),
(22, 'Natalia', 'Peña', 'natalia.pena@uni.edu', 3001111132, NOW()),
(23, 'Juan', 'Jimenez', 'juan.jimenez@uni.edu', 3001111133, NOW()),
(24, 'Maria', 'Rivera', 'maria.rivera@uni.edu', 3001111134, NOW()),
(25, 'Fernando', 'Lozano', 'fernando.lozano@uni.edu', 3001111135, NOW()),
(26, 'Daniela', 'Suarez', 'daniela.suarez@uni.edu', 3001111136, NOW()),
(27, 'Oscar', 'Bermudez', 'oscar.bermudez@uni.edu', 3001111137, NOW()),
(28, 'Catalina', 'Santos', 'catalina.santos@uni.edu', 3001111138, NOW()),
(29, 'Ricardo', 'Torres', 'ricardo.torres@uni.edu', 3001111139, NOW()),
(30, 'Patricia', 'Ortega', 'patricia.ortega@uni.edu', 3001111140, NOW());

ALTER TABLE tutorias.estudiantes MODIFY telefono VARCHAR(15);
ALTER TABLE tutorias.docente MODIFY telefono VARCHAR(15);

INSERT INTO tutorias.estudiantes 
(id_estudiante, nom_estudiante, ape_estudiante, correo, telefono, registro_est) VALUES
(1, 'Jorge', 'Martinez', 'jorge.mtz@uni.edu', '3011111111', NOW()),
(2, 'Laura', 'Castro', 'laura.castro@uni.edu', '3011111112', NOW()),
(3, 'Andres', 'Gomez', 'andres.gomez@uni.edu', '3011111113', NOW()),
(4, 'Natalia', 'Rojas', 'natalia.rojas@uni.edu', '3011111114', NOW()),
(5, 'Felipe', 'Hernandez', 'felipe.hernandez@uni.edu', '3011111115', NOW()),
(6, 'Camila', 'Diaz', 'camila.diaz@uni.edu', '3011111116', NOW()),
(7, 'Sebastian', 'Ramirez', 'sebastian.ramirez@uni.edu', '3011111117', NOW()),
(8, 'Sofia', 'Lopez', 'sofia.lopez@uni.edu', '3011111118', NOW()),
(9, 'Cristian', 'Moreno', 'cristian.moreno@uni.edu', '3011111119', NOW()),
(10, 'Valeria', 'Peña', 'valeria.pena@uni.edu', '3011111120', NOW()),
(11, 'Esteban', 'Cano', 'esteban.cano@uni.edu', '3011111121', NOW()),
(12, 'Daniela', 'Salazar', 'daniela.salazar@uni.edu', '3011111122', NOW()),
(13, 'Manuel', 'Guerrero', 'manuel.guerrero@uni.edu', '3011111123', NOW()),
(14, 'Carolina', 'Acosta', 'carolina.acosta@uni.edu', '3011111124', NOW()),
(15, 'Oscar', 'Vargas', 'oscar.vargas@uni.edu', '3011111125', NOW()),
(16, 'Angela', 'Rivera', 'angela.rivera@uni.edu', '3011111126', NOW()),
(17, 'Julian', 'Mora', 'julian.mora@uni.edu', '3011111127', NOW()),
(18, 'Catalina', 'Mejia', 'catalina.mejia@uni.edu', '3011111128', NOW()),
(19, 'David', 'Gutierrez', 'david.gutierrez@uni.edu', '3011111129', NOW()),
(20, 'Lucia', 'Navarro', 'lucia.navarro@uni.edu', '3011111130', NOW()),
(21, 'Juan', 'Reyes', 'juan.reyes@uni.edu', '3011111131', NOW()),
(22, 'Cristina', 'Ortega', 'cristina.ortega@uni.edu', '3011111132', NOW()),
(23, 'Diego', 'Jimenez', 'diego.jimenez@uni.edu', '3011111133', NOW()),
(24, 'Marta', 'Torres', 'marta.torres@uni.edu', '3011111134', NOW()),
(25, 'Fernando', 'Lozano', 'fernando.lozano@uni.edu', '3011111135', NOW()),
(26, 'Paola', 'Santos', 'paola.santos@uni.edu', '3011111136', NOW()),
(27, 'Ricardo', 'Bermudez', 'ricardo.bermudez@uni.edu', '3011111137', NOW()),
(28, 'Maria', 'Cortes', 'maria.cortes@uni.edu', '3011111138', NOW()),
(29, 'Patricia', 'Suarez', 'patricia.suarez@uni.edu', '3011111139', NOW()),
(30, 'Camilo', 'Lopez', 'camilo.lopez@uni.edu', '3011111140', NOW());

INSERT INTO tutorias.materia (id_materia, nombre_materia) VALUES
(1, 'Matematicas'),
(2, 'Fisica'),
(3, 'Quimica'),
(4, 'Biologia'),
(5, 'Programacion'),
(6, 'BasesDatos'),
(7, 'Redes'),
(8, 'Estadistica'),
(9, 'Algoritmos'),
(10, 'Etica');

INSERT INTO tutorias.docente_materia (id_docente, id_materia) VALUES
(1, 1), (1, 5),
(2, 2), (2, 6),
(3, 3), (3, 7),
(4, 4), (4, 8),
(5, 5), (5, 9),
(6, 6), (6, 10),
(7, 7), (7, 1),
(8, 8), (8, 2),
(9, 9), (9, 3),
(10, 10), (10, 4),
(11, 1), (11, 6),
(12, 2), (12, 7),
(13, 3), (13, 8),
(14, 4), (14, 9),
(15, 5), (15, 10),
(16, 6), (16, 1),
(17, 7), (17, 2),
(18, 8), (18, 3),
(19, 9), (19, 4),
(20, 10), (20, 5),
(21, 1), (21, 7),
(22, 2), (22, 8),
(23, 3), (23, 9),
(24, 4), (24, 10),
(25, 5), (25, 1),
(26, 6), (26, 2),
(27, 7), (27, 3),
(28, 8), (28, 4),
(29, 9), (29, 5),
(30, 10), (30, 6);

INSERT INTO tutorias.tutorias (id_tutoria, tema, fecha, hora, id_docente, id_estudiante) VALUES
(1, 'Repaso Algebra', '2025-08-01', '10:00:00', 1, 1),
(2, 'Fisica Mecanica', '2025-08-01', '11:00:00', 2, 2),
(3, 'Lab Quimica', '2025-08-02', '09:30:00', 3, 3),
(4, 'Genetica', '2025-08-02', '14:00:00', 4, 4),
(5, 'Java Basico', '2025-08-03', '15:00:00', 5, 5),
(6, 'SQL Joins', '2025-08-03', '08:00:00', 6, 6),
(7, 'IP Config', '2025-08-04', '16:00:00', 7, 7),
(8, 'Probabilidad', '2025-08-04', '13:00:00', 8, 8),
(9, 'Pseudocodigo', '2025-08-05', '09:00:00', 9, 9),
(10, 'Etica Prof', '2025-08-05', '10:30:00', 10, 10),
(11, 'Calculo I', '2025-08-06', '11:30:00', 11, 11),
(12, 'Ondas', '2025-08-06', '12:00:00', 12, 12),
(13, 'Org Quimica', '2025-08-07', '08:30:00', 13, 13),
(14, 'Microbiologia', '2025-08-07', '09:45:00', 14, 14),
(15, 'Python Intro', '2025-08-08', '14:15:00', 15, 15),
(16, 'SQL Avanzado', '2025-08-08', '16:20:00', 16, 16),
(17, 'Routers', '2025-08-09', '10:00:00', 17, 17),
(18, 'Regresion', '2025-08-09', '11:00:00', 18, 18),
(19, 'Complejidad', '2025-08-10', '15:40:00', 19, 19),
(20, 'Etica Bio', '2025-08-10', '16:30:00', 20, 20),
(21, 'Trigonometria', '2025-08-11', '09:00:00', 21, 21),
(22, 'Electromagnet', '2025-08-11', '13:30:00', 22, 22),
(23, 'Quimica Fisica', '2025-08-12', '08:00:00', 23, 23),
(24, 'Zoologia', '2025-08-12', '10:00:00', 24, 24),
(25, 'POO Java', '2025-08-13', '11:00:00', 25, 25),
(26, 'ERD Diagram', '2025-08-13', '15:30:00', 26, 26),
(27, 'Switch Config', '2025-08-14', '17:00:00', 27, 27),
(28, 'Inferencia', '2025-08-14', '09:15:00', 28, 28),
(29, 'Grafos', '2025-08-15', '14:50:00', 29, 29),
(30, 'Etica Trabajo', '2025-08-15', '13:00:00', 30, 30);

INSERT INTO tutorias.notas (id_nota, id_materia, nota, id_estudiante) VALUES
(1, 1, 4.5, 1),
(2, 2, 3.8, 2),
(3, 3, 4.0, 3),
(4, 4, 3.5, 4),
(5, 5, 4.2, 5),
(6, 6, 3.9, 6),
(7, 7, 4.8, 7),
(8, 8, 3.2, 8),
(9, 9, 4.1, 9),
(10, 10, 3.7, 10),
(11, 1, 4.0, 11),
(12, 2, 4.6, 12),
(13, 3, 3.3, 13),
(14, 4, 4.4, 14),
(15, 5, 4.9, 15),
(16, 6, 3.1, 16),
(17, 7, 4.3, 17),
(18, 8, 3.6, 18),
(19, 9, 4.7, 19),
(20, 10, 3.4, 20),
(21, 1, 4.2, 21),
(22, 2, 3.9, 22),
(23, 3, 4.5, 23),
(24, 4, 3.0, 24),
(25, 5, 4.8, 25),
(26, 6, 3.7, 26),
(27, 7, 4.1, 27),
(28, 8, 3.5, 28),
(29, 9, 4.4, 29),
(30, 10, 3.8, 30);

select * from tutorias.docente;
select * from tutorias.notas;
select * from tutorias.tutorias;
select * from tutorias.materia;