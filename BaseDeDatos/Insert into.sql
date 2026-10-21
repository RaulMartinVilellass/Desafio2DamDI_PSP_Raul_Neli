USE Desafio_Neli_Raul;

INSERT INTO Tarifas (Nombre) VALUES
('Básica'),
('Premium'),
('Estudiante');

INSERT INTO entrenadores (nombre, dni, especialidad, salario) VALUES
('Carlos Ruiz',    '12345678A', 'Musculación', 1800.00),
('Laura Gómez',    '23456789B', 'Yoga',        1650.50),
('Sergio Martín',  '34567890C', 'Spinning',    1700.00),
('Marta Pérez',    '45678901D', 'Pilates',     1600.00);

INSERT INTO Clases (nombre, dia_semana, hora, aforo_maximo, id_entrenador) VALUES
('Musculación guiada', 'Lunes',     '18:00:00', 15, 1),
('Yoga matinal',       'Martes',    '09:00:00', 12, 2),
('Spinning',           'Miércoles', '19:30:00', 20, 3),
('Pilates',            'Jueves',    '10:00:00', 10, 4),
('Yoga avanzado',      'Viernes',   '18:30:00', 10, 2);

INSERT INTO socios (nombre, apellidos, dni, email, fecha_alta, fecha_nacimiento, activo, id_tarifa) VALUES
('Ana',    'López Sanz',     '11111111A', 'ana.lopez@mail.com',    '2025-01-15', '1995-03-22', TRUE,  2),
('Pablo',  'García Ruiz',    '22222222B', 'pablo.garcia@mail.com', '2025-02-10', '1990-07-05', TRUE,  1),
('Lucía',  'Fernández Gil',  '33333333C', 'lucia.fg@mail.com',     '2025-03-01', '2001-11-30', TRUE,  3),
('Miguel', 'Torres Vela',    '44444444D', 'miguel.torres@mail.com','2024-11-20', '1985-01-18', FALSE, 1),
('Elena',  'Navarro Díaz',   '55555555E', 'elena.navarro@mail.com','2025-05-12', '1998-09-09', TRUE,  2),
('Javier', 'Sánchez Mora',   '66666666F', 'javi.sm@mail.com',      '2025-06-03', '1982-04-27', TRUE,  1),
('Sara',   'Ortega Blasco',  '77777777G', 'sara.ortega@mail.com',  '2025-07-21', '2003-12-14', TRUE,  3),
('David',  'Romero Lara',    '88888888H', 'david.romero@mail.com', '2025-09-01', '1993-06-02', TRUE,  2);

INSERT INTO inscripciones (id_socio, id_clase, fecha_inscripciones, asistencias) VALUES
(1, 2, '2025-01-20', 18),
(1, 4, '2025-02-01', 12),
(2, 1, '2025-02-15', 25),
(2, 3, '2025-03-01', 9),
(3, 2, '2025-03-05', 14),
(3, 5, '2025-03-10', 7),
(4, 1, '2024-12-01', 3),
(5, 3, '2025-05-15', 20),
(5, 4, '2025-05-20', 11),
(6, 1, '2025-06-10', 16),
(7, 2, '2025-07-25', 8),
(7, 4, '2025-08-01', 6),
(8, 3, '2025-09-05', 10),
(8, 1, '2025-09-05', 13);

INSERT INTO mediciones (id_socio, id_solicitud, fecha, peso_kg, altura_cm, pulsaciones_reposo, imc, clasificacion, estado) VALUES
(1, 'SOL-001', '2025-10-01 10:00:00',  70.50, 175, 62, 23.0, 'Normal',    'Completada'),
(2, 'SOL-002', '2025-10-01 11:30:00',  58.00, 165, 70, 21.3, 'Normal',    'Completada'),
(3, 'SOL-003', '2025-10-02 09:15:00',  92.40, 180, 78, 28.5, 'Sobrepeso', 'Completada'),
(4, 'SOL-004', '2025-10-02 17:45:00',  81.00, 170, 74, 28.0, 'Sobrepeso', 'Pendiente'),
(5, 'SOL-005', '2025-10-03 12:00:00',  64.20, 168, 66, 22.7, 'Normal',    'Completada'),
(6, 'SOL-006', '2025-10-03 18:20:00', 105.00, 178, 85, 33.1, 'Obesidad',  'Completada'),
(7, 'SOL-007', '2025-10-04 10:40:00',  52.50, 160, 68, 20.5, 'Normal',    'Completada'),
(8, 'SOL-008', '2025-10-04 13:10:00',  77.80, 182, 60, 23.5, 'Normal',    'Pendiente');