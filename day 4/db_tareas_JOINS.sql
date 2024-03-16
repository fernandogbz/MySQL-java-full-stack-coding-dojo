
SELECT u.nombre, u.apellido, t.descripcion, t.estatus
FROM usuarios u JOIN tareas t
	ON u.id = t.usuario_id
WHERE u.id = 1;

SELECT u.nombre, u.apellido, t.descripcion, t.estatus
FROM usuarios u, tareas t
WHERE u.id = t.usuario_id AND u.id = 1;
    
SELECT u.nombre, u.apellido, t.descripcion, t.estatus
FROM usuarios u JOIN tareas t
	ON u.id = t.usuario_id;
    
SELECT *
FROM usuarios u LEFT JOIN tareas t
	ON u.id = t.usuario_id;
    
SELECT *
FROM tareas;

SELECT id AS 'Identificador', CONCAT(nombre, ' ', apellido) AS 'Nombre Completo', correo
FROM usuarios;

SELECT nombre, apellido, COUNT(u.id) AS 'Num de tareas'
FROM usuarios u JOIN tareas t
	ON u.id = t.usuario_id
GROUP BY u.id;

SELECT *
FROM usuarios
ORDER BY id DESC;

SELECT *
FROM usuarios
LIMIT 2;

SELECT *
FROM usuarios
LIMIT 2
OFFSET 2;