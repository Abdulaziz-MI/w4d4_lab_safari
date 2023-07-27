DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS staffs;
DROP TABLE IF EXISTS enclosures;


CREATE TABLE enclosures(
id SERIAL PRIMARY KEY,
name  VARCHAR(255),
capacity INT,
closedForMaintenance BOOLEAN
);

CREATE TABLE staffs(
id SERIAL PRIMARY KEY,
name  VARCHAR(255),
employeeNumber INT
);

CREATE TABLE animals(
id SERIAL PRIMARY KEY,
name  VARCHAR(255),
type VARCHAR(255),
age INT,
enclosure_id INT REFERENCES enclosures(id)
);

CREATE TABLE assignments(
id SERIAL PRIMARY KEY,
staff_id  INT REFERENCES staffs(id),
enclosure_id INT REFERENCES enclosures(id),
day VARCHAR(255)
);

INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('big cat field', 20, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('giraffe field', 5, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('dungeon of reptiles', 130, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('gazelle gardens', 40, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('elephant beach', 13, false);

INSERT INTO staffs (name, employeeNumber) VALUES ('Tarek', '23456');
INSERT INTO staffs (name, employeeNumber) VALUES ('Mohammed', '23457');
INSERT INTO staffs (name, employeeNumber) VALUES ('Rohaib', '23458');
INSERT INTO staffs (name, employeeNumber) VALUES ('Abdulaziz', '23459');
INSERT INTO staffs (name, employeeNumber) VALUES ('Michaelson', '23460');
INSERT INTO staffs (name, employeeNumber) VALUES ('Zsolt', '23461');
INSERT INTO staffs (name, employeeNumber) VALUES ('Colin', '23462');

INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 10, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Shere Khan', 'Tiger', 17, 1);

INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Gemma', 'Giraffe', 29, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('George', 'Giraffe', 28, 2);

INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Snap', 'Crocodile', 71, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Charles', 'Komodo Dragon', 12, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Kaa', 'Snake', 6, 3);

INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Gregory', 'Gazelle', 7, 4);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Susan', 'Gazelle', 9, 4);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Terrence', 'Gazelle', 15, 4);

INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Egor', 'Elephant', 16, 5);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Edmund', 'Elephant', 19, 5);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Elizabeth', 'Elephant', 16, 5);

INSERT INTO assignments (staff_id, enclosure_id, day) VALUES (1, 5, 'Monday');
INSERT INTO assignments (staff_id, enclosure_id, day) VALUES (2, 3, 'Friday');
INSERT INTO assignments (staff_id, enclosure_id, day) VALUES (3, 4, 'Tuesday');
INSERT INTO assignments (staff_id, enclosure_id, day) VALUES (4, 1, 'Wednesday');
INSERT INTO assignments (staff_id, enclosure_id, day) VALUES (5, 2, 'Thursday');
INSERT INTO assignments (staff_id, enclosure_id, day) VALUES (6, 5, 'Saturday');
INSERT INTO assignments (staff_id, enclosure_id, day) VALUES (7, 3, 'Sunday');
