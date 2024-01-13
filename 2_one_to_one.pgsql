-- Создать таблицу 1 к 1: countries и capitals (страны и столицы)

CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(64) NOT NULL
);

CREATE TABLE capitals (
    id SERIAL PRIMARY KEY,
    capital_name VARCHAR(32) NOT NULL,
    country_id INTEGER UNIQUE REFERENCES countries(id)
);


INSERT INTO countries (country_name) VALUES ('КАЗАХСТАН');
INSERT INTO countries (country_name) VALUES ('КЫРГЫСТАН');

INSERT INTO capitals (capital_name, country_id) VALUES ('АСТАНА', 1);
INSERT INTO capitals (capital_name, country_id) VALUES ('БИШКЕК', 2);
