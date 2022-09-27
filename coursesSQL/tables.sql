create table "users" (
  "id" uuid primary key,
  "name" varchar not null,
  "email" varchar  not null unique,
  "password" varchar not null,
  "age" int not null,
  "role_id" uuid unique not null,
  "is_active" bool default true
);

create table "courses" (
  "id" uuid primary key,
  "title" varchar not null,
  "description" text not null,
  "teacher" text not null unique,
  "level_id" uuid not null unique,
  "video_id" uuid not null unique,
  "category_id" uuid unique not null,
  "user_id" uuid unique not null
);

create table "courses_vidios" (
  "id" uuid primary key,
  "title" varchar not null unique,
  "url" text not null 
);

create table "categories" (
  "id" uuid primary key,
  "name" varchar unique not null
);

create table "roles" (
  "id" uuid primary key,
  "name" varchar not null
);

create table "levels" (
	"id" uuid primary key,
	"name" varchar not null
);

alter table "users" add foreign key ("role_id") references "roles" ("id");

alter table "courses" add foreign key ("category_id") references "categories" ("id");

alter table "courses" add foreign key ("video_id") references "courses_vidios" ("id");

alter table "courses" add foreign key ("user_id") references  "users" ("id");

alter table "courses" add foreign key ("level_id") references "levels" ("id");