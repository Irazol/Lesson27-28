CREATE database employees;
USE employees;

CREATE TABLE employee
(
	employee_id INT AUTO_INCREMENT,
	first_name Varchar(30)NOT NULL,
	last_name Varchar(30) NOT NULL,
	phone Varchar(13) NOT NULL UNIQUE,
    primary key(employee_id)
);

INSERT INTO employee
(first_name, last_name, phone )
VALUES
('Всеволод', 'Броварчук', '+380683670599'),
('Тарас', 'Мельниченко', '+380935111904'),
('Галина ', 'Іванченко', '+380949187130'),
('Валерія', 'Броварчук', '+380944191532'),
('Микита', 'Середа', '+380993962165'),
('Борис', 'Васильчук', '+380935519841'),
('Олена', 'Шевченко', '+380639189837'),
('Віктор', 'Васильєв', '+380959679803'),
('Станіслав', 'Таращук', '+380972535858'),
('Діана', 'Антоненко', '+380961871748');

SELECT * FROM employee;

CREATE TABLE position
(
	employee_id INT NOT NULL,
	position Varchar(30)NOT NULL,
	salary INT NOT NULL    
);

INSERT INTO position
(employee_id, position, salary )
VALUES
(1, 'Директор', 50000),
(2, 'Головний бухгалтер', 40000),
(3, 'Бухгалтер', 30000),
(4, 'Економіст', 30000),
(5, 'Інженер-електрик', 35000),
(6, 'Інженер-конструктор', 35000),
(7, 'Менеджер', 35000),
(8, 'Менеджер', 35000),
(9, 'Менеджер', 25000),
(10, 'Прибиральник', 20000);

SELECT * FROM position;

CREATE TABLE personal_data
(
	employee_id INT NOT NULL,
	date_of_birth DATE NOT NULL,
	married BOOLEAN,
    city Varchar(30)NOT NULL,
    street Varchar(30)NOT NULL,
    house_number INT NOT NULL,
    apartment INT default NULL
);

INSERT INTO personal_data
(employee_id, date_of_birth, married, city, street, house_number, apartment)
VALUES
(1, '1986-02-13', true, 'Одеса','П. Орлика',93, NULL),
(2, '1995-04-27', false,'Одеса','Володимирська', 86, 14),
(3, '1991-11-04', false,'Одеса','Інститутська', 36, 45),
(4, '1979-08-14', true,'Одеса','Прорізна',11, NULL),
(5, '2005-01-25', false,'Одеса','Лесі Українки', 56, 13),
(6, '1990-10-13', true,'Одеса','Михайла Грушевського',12, 56),
(7, '1985-02-27', true,'Одеса',' І. Франкa',22,45),
(8, '1992-12-31', true,'Одеса','Молодіжна',49, NULL),
(9, '1991-09-15', false,'Одеса','Варненьська ',15, 41),
(10, '1964-05-19', true,'Одеса','10 квітня',93, NULL);

SELECT * FROM personal_data;

SELECT first_name, last_name, phone,  city, street, house_number,apartment
FROM personal_data
INNER JOIN employee
ON employee.employee_id = personal_data.employee_id;

SELECT first_name, last_name, phone,  date_of_birth
FROM personal_data
INNER JOIN employee
ON employee.employee_id = personal_data.employee_id
WHERE married =  false;

SELECT  first_name, last_name, position, phone,date_of_birth 
FROM personal_data
INNER JOIN employee
ON employee.employee_id = personal_data.employee_id
INNER JOIN position
ON employee.employee_id = position.employee_id 
WHERE position =  'Менеджер';



