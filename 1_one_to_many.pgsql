-- Создать таблицу 1 к многим: teacher и groups (преподы и группы)

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL
);

CREATE TABLE groups (
    id SERIAL PRIMARY KEY,
    group_name VARCHAR(32) NOT NULL,
    teacher_id INTEGER REFERENCES teachers(id) NOT NULL
);

INSERT INTO teachers (first_name, last_name) VALUES ('Жаксыбек', 'Амирадин');
INSERT INTO teachers (first_name, last_name) VALUES ('Данагуль', 'Мырзагасимова');

INSERT INTO groups (group_name, teacher_id) VALUES ('Python-16', 1);
INSERT INTO groups (group_name, teacher_id) VALUES ('Python-16', 1);
INSERT INTO groups (group_name, teacher_id) VALUES ('Python-16', 1);
INSERT INTO groups (group_name, teacher_id) VALUES ('Java-32', 2);
INSERT INTO groups (group_name, teacher_id) VALUES ('Java-32', 2);
INSERT INTO groups (group_name, teacher_id) VALUES ('Java-32', 2);

