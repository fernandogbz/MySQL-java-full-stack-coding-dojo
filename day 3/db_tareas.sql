INSERT INTO usuarios(nombre, apellido, correo, contrasena)
VALUES('Alejandro', 'Miller', 'alejandro@miller.com', 'pass1234');

INSERT INTO usuarios(nombre, apellido, correo, contrasena)
VALUES('Martha', 'González', 'martha@gonzalez.com', 'pass1234'),
	  ('Alan', 'Morales', 'alan@morales.com', 'pass1234'),
      ('Roger', 'Infante', 'roger@infante.com', 'pass1234');
      
INSERT INTO usuarios(nombre, apellido, correo, contrasena)
VALUES('Alejandro', 'Gómez', 'alejandro@gomez.com', 'pass1234');

INSERT INTO tareas(descripcion, estatus, usuario_id)
VALUES('Aprender JavaScript', 'completo', 1),
	  ('Aprender SQL', 'en_progreso', 2),
      ('Aprender AWS', 'cancelado', 1),
      ('Aprender Java', 'pendiente', 4),
      ('Aprender HTML', 'completo', 9);
      
SELECT *
FROM tareas;
      
SELECT *
FROM usuarios;

SELECT nombre, apellido, correo
FROM usuarios;

SELECT *
FROM usuarios
WHERE nombre = 'Alejandro' AND apellido = 'Gómez';

SELECT *
FROM usuarios
WHERE correo LIKE '%outlook%';

UPDATE usuarios
SET correo = 'alejandro@outlook.com'
WHERE id = 1;

UPDATE usuarios
SET correo = 'martha@gmail.com', apellido = 'Charles'
WHERE id = 2;

UPDATE usuarios
SET correo = 'roger@outlook.com'
WHERE id = 4;

UPDATE usuarios
SET correo = 'alejandro@hotmail.com'
WHERE id = 5;

UPDATE usuarios
SET correo = 'alan@gmail.com'
WHERE id = 9;

UPDATE usuarios
SET id = 1
WHERE id = 8;

DELETE FROM usuarios
WHERE id = 3;