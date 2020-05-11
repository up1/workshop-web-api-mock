CREATE TABLE IF NOT EXISTS greetings (
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL
);


INSERT INTO greetings(name) values ('Docker');