create database  "Library";
use "Library";

CREATE TABLE Books (
	ID INT NOT NULL IDENTITY,
	Name varchar(255) NOT NULL,
	Price FLOAT NOT NULL,
	Genre varchar(100) NOT NULL,
	Year DATE NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Authors (
	ID INT NOT NULL IDENTITY,
	Name varchar(100) NOT NULL,
	Surname varchar(100) NOT NULL,
	Country varchar(100) NOT NULL,
	City varchar(100) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Books_Lists (
	ID INT NOT NULL IDENTITY,
	Author_ID INT NOT NULL,
	Book_ID INT NOT NULL,
	PRIMARY KEY (ID)
);

ALTER TABLE Books_Lists ADD CONSTRAINT Books_Lists_fk0 FOREIGN KEY (Author_ID) REFERENCES Authors(ID);

ALTER TABLE Books_Lists ADD CONSTRAINT Books_Lists_fk1 FOREIGN KEY (Book_ID) REFERENCES Books(ID);


insert into Books values('Evolution of idea ',9.80,'Scientific','2018-05-25'),
('Qurani Kerim ',52.15,'Religion','1905-01-01'),
('Code Davingi ',3.80,'Detective','2003-04-28'),
(' Angels & Demons ',11.11,'Detective','2000-05-25')

insert into Authors values('Dan','Brown','USA','New Hampshire'),
('Carl','Zimmer','USA','New Heaven'),
('Sehih AL','Bukhari','UAE','Medine');

insert into Books_Lists values(2,1),(1,3),(1,4),(3,2);



Select * from Books;
Select * from Authors;

select * from Books_Lists;



