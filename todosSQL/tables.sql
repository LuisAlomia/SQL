create table "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "is_active" bool DEFAULT true
);

create table  "todos"(
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "is_complete" bool DEFAULT false,
  "user_id" uuid NOT NULL,
  "category_id" uuid NOT NULL
);

create table "categories"(
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

alter table "todos" add foreign key ("user_id") references "users" ("id");

alter table "todos" add foreign key ("category_id") references "categories" ("id");