DROP DATABASE ShopDB;

CREATE DATABASE ShopDB;

USE ShopDB;

DROP TABLE Customers;
CREATE TABLE Customers
	(
	customer_id INT,
	first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
	phone varchar(13) NOT NULL UNIQUE,
    e_mail varchar(30) NOT NULL UNIQUE
	); 
    
INSERT INTO Customers
(customer_id,first_name, last_name, phone, e_mail )
VALUES
(1,'Всеволод', 'Броварчук', '+380683670599','delpha.rice@gmail.com'),
(1,'Тарас', 'Мельниченко', '+380935111904','gdenesik@hotmail.com'),
(1,'Галина ', 'Іванченко', '+380949187130','greta44@yahoo.com'),
(1,'Валерія', 'Броварчук', '+380944191532','kristoffer87@hotmail.com'),
(1,'Микита', 'Середа', '+380993962165','novella74@gmail.com'); 

SELECT * FROM Customers; 

DROP TABLE Customers;
CREATE TABLE Customers
	(
	customer_id INT,
	first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
	phone varchar(13) NOT NULL UNIQUE,
    e_mail varchar(30) NOT NULL UNIQUE
	); 
    
INSERT INTO Customers
(customer_id, first_name, last_name, phone, e_mail )
VALUES
(1,'Всеволод', 'Броварчук', '+380683670599','delpha.rice@gmail.com'),
(1,'Тарас', 'Мельниченко', '+380935111904','gdenesik@hotmail.com'),
(1,'Галина ', 'Іванченко', '+380949187130','greta44@yahoo.com'),
(1,'Валерія', 'Броварчук', '+380944191532','kristoffer87@hotmail.com'),
(1,'Микита', 'Середа', '+380993962165','novella74@gmail.com'); 

SELECT * FROM Customers
WHERE customer_id = 1 ; 

UPDATE Customers
SET first_name = 'Василь'
WHERE customer_id = 1 ; 

SELECT * FROM Customers;

DROP TABLE Customers;
CREATE TABLE Customers
	(
	customer_id INT AUTO_INCREMENT
    PRIMARY KEY,
	first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
	phone varchar(13) NOT NULL UNIQUE,
    e_mail varchar(30) NOT NULL UNIQUE
	); 
    
INSERT INTO Customers
( first_name, last_name, phone, e_mail )
VALUES
('Всеволод', 'Броварчук', '+380683670599','delpha.rice@gmail.com'),
('Тарас', 'Мельниченко', '+380935111904','gdenesik@hotmail.com'),
('Галина ', 'Іванченко', '+380949187130','greta44@yahoo.com'),
('Валерія', 'Броварчук', '+380944191532','kristoffer87@hotmail.com'),
('Микита', 'Середа', '+380993962165','novella74@gmail.com'); 

SELECT * FROM Customers
WHERE customer_id = 1 ; 

UPDATE Customers
SET first_name = 'Василь'
WHERE customer_id = 1 ; 

SELECT * FROM Customers;

DROP TABLE Customers;
CREATE TABLE Customers
	(
	customer_id INT,
	first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
	phone varchar(13) NOT NULL ,
    e_mail varchar(30) NOT NULL
	); 
    
CREATE INDEX cust
ON Customers(first_name);    
    
INSERT INTO Customers
(customer_id, first_name, last_name, phone, e_mail )
VALUES
(1,'Всеволод', 'Броварчук', '+380683670599','delpha.rice@gmail.com'),
(2,'Тарас', 'Мельниченко', '+380935111904','gdenesik@hotmail.com'),
(3,'Галина ', 'Іванченко', '+380949187130','greta44@yahoo.com'),
(4,'Валерія', 'Броварчук', '+380944191532','kristoffer87@hotmail.com'),
(5,'Микита', 'Середа', '+380993962165','novella74@gmail.com'),
(1,'Всеволод', 'Броварчук', '+380683670599','delpha.rice@gmail.com'),
(2,'Тарас', 'Мельниченко', '+380935111904','gdenesik@hotmail.com'),
(3,'Галина ', 'Іванченко', '+380949187130','greta44@yahoo.com'),
(4,'Валерія', 'Броварчук', '+380944191532','kristoffer87@hotmail.com'),
(5,'Микита', 'Середа', '+380993962165','novella74@gmail.com'),
(1,'Всеволод', 'Броварчук', '+380683670599','delpha.rice@gmail.com'),
(2,'Тарас', 'Мельниченко', '+380935111904','gdenesik@hotmail.com'),
(3,'Галина ', 'Іванченко', '+380949187130','greta44@yahoo.com'),
(4,'Валерія', 'Броварчук', '+380944191532','kristoffer87@hotmail.com'),
(5,'Микита', 'Середа', '+380993962165','novella74@gmail.com'); 



SELECT * FROM Customers
WHERE first_name = 'Тарас' ;

SELECT * FROM Customers
WHERE e_mail = 'gdenesik@hotmail.com' ;





