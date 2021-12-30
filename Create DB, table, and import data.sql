create database testscore_db;

use testscore_db;

CREATE TABLE students (
student_id INT NOT NULL PRIMARY KEY,
gender VARCHAR(2),
ethnicity VARCHAR(255),
ell VARCHAR(2),
iep VARCHAR(2)
);

CREATE TABLE school_lookup (
school_number int not null primary key,
school_name varchar(255)
);

CREATE TABLE state_date_file_2017_18 (
school_year INT NOT NULL, 
school_number INT, 
grade int, 
student_id INT, 
subject varchar(10), 
subject_score INT, 
proficient INT, 
proficiency_level varchar(255)
);

CREATE TABLE state_date_file_2018_19 (
school_year INT NOT NULL, 
school_number INT, 
grade int,
student_id INT, 
subject varchar(10), 
subject_score INT, 
proficient INT, 
proficiency_level varchar(255)
);

SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 'ON';
SHOW GLOBAL VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE "C:/Users/laure/OneDrive/Desktop/DPS/Students.csv" INTO TABLE testscore_db.students
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(student_id, gender, ethnicity, ell, iep);

LOAD DATA LOCAL INFILE "C:/Users/laure/OneDrive/Desktop/DPS/School Lookup.csv" INTO TABLE testscore_db.school_lookup
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(school_number, school_name);

LOAD DATA LOCAL INFILE "C:/Users/laure/OneDrive/Desktop/DPS/State Data File 2017-18.csv" INTO TABLE testscore_db.state_date_file_2017_18
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(school_year, school_number, student_id, subject, subject_score, proficient, proficiency_level);

LOAD DATA LOCAL INFILE "C:/Users/laure/OneDrive/Desktop/DPS/State Data File 2018-19.csv" INTO TABLE testscore_db.state_date_file_2018_19
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(school_year, school_number, student_id, subject, subject_score, proficient, proficiency_level);
