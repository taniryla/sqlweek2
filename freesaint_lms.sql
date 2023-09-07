CREATE DATABASE freesaint_lms;

CREATE TABLE lms_logins (
	id SERIAL PRIMARY KEY,
	login_id INT NOT NULL UNIQUE,
	username TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL
);

CREATE TABLE app_users (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL UNIQUE,
	email TEXT NOT NULL UNIQUE,
	googleId TEXT NOT NULL UNIQUE,
	GWTToken TEXT NOT NULL UNIQUE,
	profile_active BOOLEAN,
	calculated_cal_goal INT,
	starting_weight INT,
	target_weight INT,
	avatar_photo JSON,
	age INT,
	height INT
);

CREATE TABLE lms_courses (
    id SERIAL PRIMARY KEY,
    course_name TEXT NOT NULL,
    course_id TEXT NOT NULL UNIQUE,
    course_type TEXT NOT NULL,
    course_stu_id TEXT NOT NULL UNIQUE,
    course_description TEXT NOT NULL,
    completed BOOLEAN NOT NULL,
    quizzes TEXT NOT NULL
);

CREATE TABLE lms_permissions (
    id SERIAL PRIMARY KEY,
    permission_id TEXT NOT NULL UNIQUE,
    permission_name TEXT NOT NULL,
    permission_module TEXT NOT NULL UNIQUE
);

-- 1-to-1 relationship 

ALTER TABLE lms_logins
ADD CONSTRAINT fk_lms_logins_app_users
FOREIGN KEY (login_id)
REFERENCES app_users;


-- 1-to-many relationships

ALTER TABLE lms_courses
ADD CONSTRAINT fk_lms_courses_lms_permissions
FOREIGN KEY (course_id)
REFERENCES lms_permissions

-- many-to-many relationships
