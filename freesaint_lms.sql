CREATE DATABASE freesaint_lms;

CREATE TABLE lms_login (
	id SERIAL PRIMARY KEY,
	login_id INT NOT NULL UNIQUE,
	username TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL
);