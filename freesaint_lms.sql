CREATE DATABASE freesaint_lms;

CREATE TABLE lms_login (
	id SERIAL PRIMARY KEY,
	login_id INT NOT NULL UNIQUE,
	username TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL
);

CREATE TABLE app_user (
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