insert into roles (
	id,
	name
) values (
	'cbf2a2f5-8578-45b8-ae49-71261ddbe744',
	'student'
),(
	'b804ca26-607b-4928-8647-3461ef84788c',
	'teacher'
),(
	'124f3855-8494-445f-98f9-dbd8eab37a8b',
	'admin'
);

insert into categories (
	id,
	name
) values (
	'8860ddb0-bcba-4fae-8b68-6e6e25256016',
	'Back end'
), (
	'91455a1d-a5cd-4a2a-8044-346532c6adca',
	'Front end'
), (
	'2bd312eb-261b-476a-b9cf-ef40c793a3b8',
	'DevOps'
);

insert into levels (
	id,
	name
) values (
	'6440c646-e263-4ee1-8ccb-1d7cf404883a',
	'Beginner'
), (
	'57052cda-562d-490b-bc5d-daad65995bf0',
	'Medium'
),(
	'a6289e51-72f3-4cfa-9250-c1d8ab1e44ff',
	'Advanced'
);

insert into courses_vidios (
	id,
	title,
	url
) values (
	'8e0b78bc-40aa-4373-82b0-dc3d106f29d6',
	'learn back end development',
	'https://www.youtube.com/watch?v=CnVZjwVmwCQ'
),(
	'b7fb7ad2-d709-4759-8136-e8d8f9ceb096',
	'learn front end development',
	'https://www.youtube.com/watch?v=CnVZjwVmwCQ'
);

insert into users (
	id,
	name,
	age,
	email,
	password,
	role_id
) values (
	'7aa138ed-c199-4f8a-8d0c-f93e54120b2a',
	'luis',
	27,
	'luis@gmail.com',
	'luis123',
	'cbf2a2f5-8578-45b8-ae49-71261ddbe744'
),(
	'49146bf4-66c5-40b6-ac70-0a4c489cb529',
	'fidel',
	28,
	'fidel@gmail.com',
	'fidel123',
	'b804ca26-607b-4928-8647-3461ef84788c'
),(
	'c28744fb-b94c-4f59-a224-818c879b1bfa',
	'admin',
	34,
	'admin@gmail.com',
	'admin123',
	'124f3855-8494-445f-98f9-dbd8eab37a8b'
);

insert into courses (
	id,
	title,
	description,
	teacher,
	level_id,
	video_id,
	category_id,
	user_id
) values (
	'd9c26f62-9fb2-41cc-ad85-84ba9508ed1b',
	'Roadmap The Dev Back end',
	'Aprenderas lo necesario para ser un desarrollador Back end',
	'fidel',
	'6440c646-e263-4ee1-8ccb-1d7cf404883a',
	'8e0b78bc-40aa-4373-82b0-dc3d106f29d6',
	'8860ddb0-bcba-4fae-8b68-6e6e25256016',
	'7aa138ed-c199-4f8a-8d0c-f93e54120b2a'
),(
	'92c0885e-6cc2-492b-bd3a-6a22455ade2b',
	'Roadmap The Dev Front end',
	'Aprenderas lo necesario para ser un desarrollador Front end',
	'migel',
	'57052cda-562d-490b-bc5d-daad65995bf0',
	'b7fb7ad2-d709-4759-8136-e8d8f9ceb096',
	'91455a1d-a5cd-4a2a-8044-346532c6adca',
	'49146bf4-66c5-40b6-ac70-0a4c489cb529'
);

select name, teacher, title from users as u inner join courses as c on u.id = c.user_id; 

select name, teacher, title from users as u inner join courses as c on u.id = c.user_id where u.id = '7aa138ed-c199-4f8a-8d0c-f93e54120b2a' ; 

create view view_user_for_course as select name, teacher, title from users as u inner join courses as c on u.id = c.user_id where u.id = '7aa138ed-c199-4f8a-8d0c-f93e54120b2a' ;

select * from view_user_for_course;


