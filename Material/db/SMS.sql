create database Student_management_system on primary 
	    (name = 'Student_management_system',
	    filename = 'd:\db\Student_management_system.MDF',
	    size = 5mb,
	    filegrowth = 10%)
	log on (name = 'Student_management_system_log',
	    filename = 'd:\db\Student_management_system.LDF',
	    size = 5mb,
	    filegrowth = 10%);
go
use Student_management_system

CREATE TABLE Users_groups
        (Groups_Id VARCHAR(10) constraint PK_gro PRIMARY KEY, 
         Groups_Name VARCHAR(50)
         );
         
CREATE TABLE Directors
        (Director_Id VARCHAR(10) constraint PK_dir PRIMARY KEY, 
         Surname VARCHAR(20),
         Forename VARCHAR(20), 
         Phone_Number VARCHAR(10),
         Remarks VARCHAR(30),
         Groups_Id VARCHAR(10),
         FOREIGN key (Groups_Id) REFERENCES Users_groups(Groups_Id)
         );
         
CREATE TABLE Teachers
        (Teacher_Id VARCHAR(10) constraint PK_stfi PRIMARY KEY, 
         Surname VARCHAR(20),
         Forename VARCHAR(20), 
         Phone_Number VARCHAR(10),
         Remarks VARCHAR(30),
         Groups_Id VARCHAR(10),
         FOREIGN key (Groups_Id) REFERENCES Users_groups(Groups_Id)
         ); 
         
CREATE TABLE Classes
        (Class_Id VARCHAR(10) constraint PK_cls PRIMARY KEY, 
         Teacher_id VARCHAR(10),
         FOREIGN key (Teacher_id) REFERENCES Teachers(Teacher_Id)
         ); 
         
CREATE TABLE Students
        (Student_Id VARCHAR(10) constraint PK_sti PRIMARY KEY, 
         Surname VARCHAR(20),
         Forename VARCHAR(20), 
         Phone_Number VARCHAR(11),
         Remarks VARCHAR(30),
         Groups_Id VARCHAR(10),
         Class_Id VARCHAR(10),
         FOREIGN key (Class_Id) REFERENCES Classes(Class_Id),
         FOREIGN key (Groups_Id) REFERENCES Users_groups(Groups_Id)
         );  
         
CREATE TABLE Parents
        (Parents_Id VARCHAR(10), 
         Surname VARCHAR(20),
         Forename VARCHAR(20), 
         Phone_Number VARCHAR(11),
         Child_Student_Id VARCHAR(10),
         Remarks VARCHAR(30),
         Groups_Id VARCHAR(10),
         constraint UPK_par primary key (Parents_Id,Child_Student_Id),
         FOREIGN key (Child_Student_Id) REFERENCES Students(Student_Id),   
         FOREIGN key (Groups_Id) REFERENCES Users_groups(Groups_Id)
         );  
         

CREATE TABLE Grade
        (Student_Id VARCHAR(10) constraint PK_gsti PRIMARY KEY, 
         Teacher_id VARCHAR(10),
         Grade decimal(4,2),
         FOREIGN key (Student_Id) REFERENCES Students(Student_Id),
         FOREIGN key (Teacher_id) REFERENCES Teachers(Teacher_Id)
         ); 

CREATE TABLE Course
        (Course_Id VARCHAR(10), 
         Course_Name VARCHAR(10),
         Teacher_Id VARCHAR(10),
         constraint UPK_co primary key (Course_Id,Teacher_Id),
         FOREIGN key (Teacher_id) REFERENCES Teachers(Teacher_Id)
         );
         
CREATE TABLE Assignment_Finish
        (Student_id VARCHAR(10) constraint PK_fin PRIMARY KEY, 
         Finish_Times VARCHAR(10),
         FOREIGN key (Student_Id) REFERENCES Students(Student_Id),
         );         