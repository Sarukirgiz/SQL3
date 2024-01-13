-- Создать таблицу многое ко многим: users и courses (пользователи и курсы)

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(64) NOT NULL
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(64) NOT NULL
);

CREATE TABLE users_courses (
    user_id INT REFERENCES users(user_id),
    course_id INT REFERENCES courses(course_id),
    PRIMARY KEY (user_id, course_id)
);

INSERT INTO users (user_name) VALUES ('Дархан');
INSERT INTO users (user_name) VALUES ('Марат');
INSERT INTO users (user_name) VALUES ('Даурен');

INSERT INTO courses (course_name) VALUES ('Веб-разработчик');
INSERT INTO courses (course_name) VALUES ('Аналитик данных');
INSERT INTO courses (course_name) VALUES ('SQL');

INSERT INTO users_courses (user_id, course_id) VALUES (1, 1);
INSERT INTO users_courses (user_id, course_id) VALUES (1, 3);
INSERT INTO users_courses (user_id, course_id) VALUES (2, 1);
INSERT INTO users_courses (user_id, course_id) VALUES (2, 2);
INSERT INTO users_courses (user_id, course_id) VALUES (3, 2);
INSERT INTO users_courses (user_id, course_id) VALUES (3, 3);