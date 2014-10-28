CREATE DATABASE hist_crown_app_development;

\c hist_crown_app_development;

DROP TABLE IF EXISTS cookies;

CREATE TABLE users (
  id   SERIAL PRIMARY KEY,
  first name VARCHAR(255)
  last name VARCHAR(255)
);

CREATE TABLE places (
  id   SERIAL PRIMARY KEY,
  name VARCHAR(255)
  address VARCHAR
  image VARCHAR

);

CREATE TABLE stories (
  id   SERIAL PRIMARY KEY,
  title VARCHAR(255)
  body VARCHAR(1024)
  foreign_key :buildings_id user_id

);