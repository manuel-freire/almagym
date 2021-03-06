-- 
-- El contenido de este fichero se cargará al arrancar la aplicación, suponiendo que uses
-- 		application-default ó application-externaldb en modo 'create'
--

-- Usuario de ejemplo con username = b y contraseña = aa  
INSERT INTO user(id,enabled,username,password,roles,first_name,last_name) VALUES (
	1, 1, 'a', 
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'USER,ADMIN',
	'Abundio', 'Ejémplez'
);

-- Otro usuario de ejemplo con username = b y contraseña = aa  
INSERT INTO user(id,enabled,username,password,roles,first_name,last_name) VALUES (
	2, 1, 't', 
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'USER,TEACHER',
	'Profesoro', 'Muéstrez'
);

INSERT INTO user(id,enabled,username,password,roles,first_name,last_name) VALUES (
	4, 1, 't2', 
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'USER,TEACHER',
	'OtroProfesoro', 'Garcia'
);

-- Otro usuario de ejemplo con username = b y contraseña = aa  
INSERT INTO user(id,enabled,username,password,roles,first_name,last_name) VALUES (
	3, 1, 'c', 
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'USER,CUSTOMER',
	'Customerio', 'Muéstrez'
);


-- Aquí empieza la table de rooms
INSERT INTO room(id,name,descrip,max_size) VALUES (
	1, 'Sala Spinning',
	'En esta sala podras disfrutar de nuestras bicicletas estaticas, a la vez que te pones mas fuerte que la clavicula de un transformer.',
	30
);

INSERT INTO room(id,name,descrip,max_size) VALUES (
	2, 'Sala Aerobics',
	'En esta sala podras disfrutar de nuestras bicicletas estaticas, a la vez que te pones mas fuerte que la clavicula de un transformer.',
	50
);

INSERT INTO room(id,name,descrip,max_size) VALUES (
	3, 'Sala Ejercicio',
	'En esta sala podras disfrutar de nuestras bicicletas estaticas, a la vez que te pones mas fuerte que la clavicula de un transformer.',
	40
);

--Aquí empieza la tabla de lessons
INSERT INTO lesson(id,name,date_ini,date_fin,total_students,profe_id,room_id) VALUES (
	1, 'Boxeo mañana',
	'2020-05-22 11:00:00', '2020-05-22 13:00:00',
	12, 2, 1
);

INSERT INTO lesson(id,name,date_ini,date_fin,total_students,profe_id,room_id) VALUES (
	2, 'Boxeo tarde',
	'2020-05-22 15:00:00', '2020-05-22 17:00:00',
	25, 2, 3
);

INSERT INTO lesson(id,name,date_ini,date_fin,total_students,profe_id,room_id) VALUES (
	3, 'Twerking',
	'2020-05-22 13:00:00', '2020-05-22 15:00:00',
	50, 2, 2
);

INSERT INTO lesson(id,name,date_ini,date_fin,total_students,profe_id,room_id) VALUES (
	4, 'Boxeo noche',
	'2020-05-22 20:00:00', '2020-05-22 22:00:00', 
	28, 2, 1
);

-- Aquí empieza la tabla de los equipments
INSERT INTO equipment(id,name,quantity,room_id) VALUES (
	1, 'Bicicleta estática', 5, 1
);

INSERT INTO equipment(id,name,quantity,room_id) VALUES (
	2, 'Cintas de correr', 5, 1
);

INSERT INTO equipment(id,name,quantity,room_id) VALUES (
	3, 'Peso 5 kgs', 6, 2
);

INSERT INTO equipment(id,name,quantity,room_id) VALUES (
	4, 'Banco Press', 4, 2
);