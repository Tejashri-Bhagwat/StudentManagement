create database Student_Management_System;
show databases;
use Student_Management_System;

create table Stud_Personal_Details (
Stu_id int Primary Key, 
FullName varchar(50), 
DOB date,
email varchar(100)
);

create table Course_Details (
Course_id int primary key,
Course_name varchar(100)
);

CREATE TABLE Enrolled_Courses (
Stu_id INT,
Course_id INT,
Course_name VARCHAR(100),
PRIMARY KEY (Stu_id, Course_id),
FOREIGN KEY (Stu_id) REFERENCES Stud_Personal_Details(Stu_id),
FOREIGN KEY (Course_id) REFERENCES Course_Details(Course_id)
);

