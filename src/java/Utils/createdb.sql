/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Chris
 * Created: 19 Sep 2023
 */
 -- remove DROP TABLE when going live. Just for now to stop multiple tables being made 
-- change this when going live. 
-- this is my own code except I had to google to learn what 'Serial' was and how it was used. Found it on geeksforgeeks.com--


DROP TABLE company_data CASCADE;
CREATE TABLE company_data(
    company_id SERIAL PRIMARY KEY, 
    company_name VARCHAR(50) NOT NULL, 
    company_description VARCHAR(750) NOT NULL,
    industry VARCHAR(50) NOT NULL,
    salary NUMERIC NOT NULL, 
    image_location VARCHAR(100),
    course VARCHAR(50)
);

DROP TABLE user_data CASCADE;
CREATE TABLE user_data
(
    user_id SERIAL PRIMARY KEY,   
    email VARCHAR(50), 
    password VARCHAR(50), 
    username VARCHAR(50) UNIQUE,
    user_type VARCHAR(10),
    course VARCHAR(50)
);

DROP TABLE role_data CASCADE;
CREATE TABLE role_data(
    role_id SERIAL PRIMARY KEY, 
    role_name VARCHAR(50) NOT NULL, 
    role_description VARCHAR(750) NOT NULL, 
    industry VARCHAR(50) NOT NULL,
    salary NUMERIC NOT NULL,
    course VARCHAR(50)
);

DROP TABLE company_discussion_data;
CREATE TABLE company_discussion_data(
    discussion_id SERIAL PRIMARY KEY, 
    company_id INT REFERENCES company_data(company_id),
    discussion_comment VARCHAR(5000) NOT NULL,
    user_id INT REFERENCES user_data(user_id),
    commentTime VARCHAR(50),
    username  VARCHAR(50) REFERENCES user_data(username)
);
    

DROP TABLE role_discussion_data;
CREATE TABLE role_discussion_data(
    discussion_id SERIAL PRIMARY KEY, 
    role_id INT REFERENCES role_data(role_id),
    discussion_comment VARCHAR(5000) NOT NULL, 
    user_id INT REFERENCES user_data(user_id),
    commentTime VARCHAR(50),
    username VARCHAR(50) REFERENCES user_data(username)
);



-- Geeksforgeeks.com 'PostgreSQL-Serial', https://www.geeksforgeeks.org/postgresql-serial/ -->

