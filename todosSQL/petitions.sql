insert into users
(
	id,
	name,
	email,
	password
) values (
	'6c7b5390-f3ab-415e-a6c2-5735d21fa27f',
	'luis',
	'luis@gmail.com',
	'aa112'
),(
	'8a5d7933-f4e1-44e4-ab7c-7eba7a60284b',
	'fidel',
	'fidel@gmail.com',
	'ss112'
);

insert into todos 
(
	id,
	title,
	description,
	is_complete,
	user_id
) values (
	'834a705d-ca20-430e-92a8-5079a8c0f432',
	'tarea',
	'hacer tarea de programacion',
	false,
	'6c7b5390-f3ab-415e-a6c2-5735d21fa27f'
),(
	'93344741-67e6-4186-9aa3-c14f3a18c110',
	'tarea de ingles',
	'hacer tarea de ingles sobre pronombres',
	true,
	'8a5d7933-f4e1-44e4-ab7c-7eba7a60284b'
);

select * from todos;

select * from todos where complete = true;

update todos set complete = false where id '834a705d-ca20-430e-92a8-5079a8c0f432';

delete from todos where id = '834a705d-ca20-430e-92a8-5079a8c0f432';

