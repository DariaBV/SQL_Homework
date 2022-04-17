CREATE DATABASE Academy
USE Academy

CREATE TABLE Groups
(
	Id int NOT NULL IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(10) NOT NULL UNIQUE,
	Rating int NOT NULL,
	CHECK (Rating BETWEEN 0 AND 5),
	[Year] int NOT NULL,
	CHECK ([Year] BETWEEN 1 AND 5)
);

SELECT * FROM Groups


CREATE TABLE Departments
(
	Id int NOT NULL IDENTITY PRIMARY KEY,
	Financing  MONEY NOT NULL DEFAULT 0,
	CHECK (Financing = 0 OR Financing > 0),
    [Name] NVARCHAR(100) NOT NULL UNIQUE
);

SELECT * FROM Departments


CREATE TABLE Faculties
(
	Id int NOT NULL IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL UNIQUE
);

SELECT * FROM Faculties


CREATE TABLE Teachers
(
	Id int NOT NULL IDENTITY PRIMARY KEY,
	[Employment Date] DATE NOT NULL, 
	CHECK ([Employment Date] > '01.01.1990'),
	[Name] NVARCHAR(max) NOT NULL,
	Surname NVARCHAR(max) NOT NULL,
	Premium MONEY NOT NULL DEFAULT 0,
	CHECK (Premium > 0 OR Premium = 0),
	Salary MONEY NOT NULL,
	CHECK (Salary > 0)
);

SELECT * FROM Teachers
