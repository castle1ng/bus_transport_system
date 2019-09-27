
Create database Create_db;

Use Create_db;



CREATE TABLE create_tables (

Id int auto_increment,
Created_date datetime
Default current_timestamp,
Bus_origin varchar(255),
Bus_destination varchar(255),
Trip_duration int,
Primary key(Id)

);


Alter Table create_tables
Add COLUMN Driver_name varchar(255) AFTER Trip_duration;



Create table if not exists Bus_schedule_insert  
(
Id int auto_increment,
Created_date datetime 
DEFAULT current_timestamp,
Bus_origin varchar(255) ,
Bus_destination varchar(255),
Trip_duration int,
Check(Trip_duration >= 5),
Driver_name varchar(255),
Primary Key(Id)

);

Insert into  Bus_schedule_insert
(
Bus_origin, 
Bus_destination,
Trip_duration,
Driver_name 
 )
 
 Values 

("Helsinki", "Rauma", 240, "Pekka"),
("Uusikaupunki", "Turku", 120, "Mirkku"),
("Kamppi", "Lahti", 60, "Lauri"),
("Rautatientori", "Vaasa", 180, "Minna"),
("Turku", "Pori", 120, "Matti"),
("Rovaniemi", "Oulu", 60, "Aalto"),
("Tampere", "EspooKeskus", 120, "Rekola"),
("Seinajoki", "Siuntio", 240, "Susanna"),
("Kajaani", "Aland", 70, "Marku"),
("Mansala", "Porvo", 120, "Samuli"),
("Jyvaskula", "Kilo", 45, "Dafitti"),
("Pasila", "Vantaa", 35, "Rinne"),
("Heinola", "Mushin", 380, "Mikael"),
("Lapland", "Idumota", 240, "Liisa"),
("Hanko", "Monrovia", 140, "Johanna"),
("Hyvinkää", "Akaa", 120, "Anna"),
("Imatra", "kano", 45, "Helena");




Create table Bus_schedule_not_null
(

Id int auto_increment,
Created_date datetime 
DEFAULT current_timestamp,
Bus_origin varchar(255) not null,
Bus_destination varchar(255) not null,
Trip_duration int not null,
Driver_name varchar(255) not null,
Primary Key(Id)

);

Insert into  Bus_schedule_not_null
(
Bus_origin, 
Bus_destination,
Trip_duration,
Driver_name 
 )
 
 Values 

("Helsinki", "Rauma", 240, ""),
("Uusikaupunki", "Turku", 120, "Mirkku"),
("Kamppi", "Lahti", 60, "Lauri"),
("Rautatientori", "", 180, "Minna"),
("Turku", "Pori", 75, "Matti"),
("Rovaniemi", "Oulu", 60, "Aalto"),
("Tampere", "", 120, "Rekola"),
("Seinajoki", "Siuntio", 240, "Susanna"),
("Kajaani", "", 70, "Marku"),
("", "Porvo", 120, "Samuli"),
("Jyvaskula", "Kilo", 45, ""),
("Pasila", "", 35, "Rinne"),
("Heinola", "Mushin", 245, "Mikael"),
("Lapland", "Idumota", 240, "Liisa"),
("Hanko", "", 140, "Johanna"),
("Hyvinkää", "", 120, "Anna"),
("Imatra", "kano", 145, "Helena");

 


create table Bus_schedule_check
 (

Id int auto_increment,
Created_date datetime 
DEFAULT current_timestamp,
Bus_origin varchar(255) not null,
Bus_destination varchar(255) not null,
Trip_duration int,
Check(Trip_duration >= 5),
Driver_name varchar(255) not null,
Primary Key(Id)

);

Insert into  Bus_schedule_check
(
Bus_origin, 
Bus_destination,
Trip_duration,
Driver_name 
 )
 
 Values 

("Helsinki", "Rauma", 240, "Pekka"),
("Uusikaupunki", "Turku", 120, "Mirkku"),
("Kamppi", "Lahti", 60, "Lauri"),
("Rautatientori", "Vaasa", 180, "Minna"),
("Turku", "Pori", 120, "Matti"),
("Rovaniemi", "Oulu", 60, "Aalto"),
("Tampere", "EspooKeskus", 120, "Rekola"),
("Seinajoki", "Siuntio", 240, "Susanna"),
("Kajaani", "Aland", 70, "Marku"),
("Mansala", "Porvo", 120, "Samuli"),
("Jyvaskula", "Kilo", 1, "Dafitti"),
("Pasila", "Vantaa", 35, "Rinne"),
("Heinola", "Mushin", 380, "Mikael"),
("Lapland", "Idumota", 240, "Liisa"),
("Hanko", "Monrovia", 3, "Johanna"),
("Hyvinkää", "Akaa", 120, "Anna"),
("Imatra", "kano", 4, "Helena");




create table Bus_schedule_unique
 (

Id int auto_increment,
Created_date datetime 
DEFAULT current_timestamp,
Bus_origin varchar(255) not null unique,
Bus_destination varchar(255) not null unique,
Trip_duration int,
Check(Trip_duration >= 5),
Driver_name varchar(255) not null,
Primary Key(Id)

);

Insert into  Bus_schedule_unique
(
Bus_origin, 
Bus_destination,
Trip_duration,
Driver_name 
 )
 
Values 

("Helsinki", "Rauma", 240, "Pekka"),
("Uusikaupunki", "Turku", 120, "Mirkku"),
("Kamppi", "Lahti", 60, "Lauri"),
("Rautatientori", "Vaasa", 180, "Minna"),
("Turku", "Pori", 120, "Matti"),
("Rovaniemi", "Oulu", 60, "Aalto"),
("Tampere", "EspooKeskus", 120, "Rekola"),
("Seinajoki", "Siuntio", 240, "Susanna"),
("Kajaani", "Aland", 70, "Marku"),
("Mansala", "Porvo", 120, "Samuli"),
("Jyvaskula", "Kilo", 8, "Dafitti"),
("Pasila", "Vantaa", 35, "Rinne"),
("Heinola", "Kamppi", 380, "Mikael"),
("Lapland", "Idumota", 240, "Liisa"),
("Helsinki", "Monrovia", 85, "Johanna"),
("Hyvinkää", "Akaa", 120, "Anna"),
("Imatra", "Rauma", 45, "Helena");



