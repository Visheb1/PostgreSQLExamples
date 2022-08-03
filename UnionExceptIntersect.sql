CREATE TABLE CLient(
    Id SERIAL PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BankAccount NUMERIC DEFAULT 0
);

CREATE TABLE Employee(
    Id SERIAL PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL
);

INSERT INTO Client(FirstName, LastName, BankAccount) VALUES
('Денис', 'Мальцев', 3500),
('Евгений', 'Сергеев', 2800),
('Марина', 'Волкова', 5200),
('Ирина', 'Новикова', 1200),
('Владимир', 'Кузнецов', 6300),
('Максим', 'Смирнов', 4700);

INSERT INTO Employee(FirstName, LastName) VALUES
('Светлана', 'Петрова'),
('Анастасия', 'Попова'),
('Евгений', 'Сергеев'),
('Владимир', 'Кузнецов');

SELECT FirstName, LastName FROM CLient
UNION SELECT FirstName, LastName FROM Employee;

SELECT FirstName, LastName FROM CLient
UNION ALL SELECT FirstName, LastName FROM Employee;

SELECT FirstName || ' ' || LastName AS ClientName  FROM Client 
UNION SELECT FirstName || ' ' || LastName AS EmployeeName  FROM Employee
ORDER BY ClientName;

SELECT FirstName, LastName, BankAccount * 1.2 AS TotalBank FROM CLient
WHERE BankAccount < 4000
UNION SELECT FirstName, LastName, BankAccount * 1.4 AS TotalBank FROM CLient
WHERE BankAccount > 4000;

SELECT FirstName, LastName FROM Client
EXCEPT SELECT FirstName, LastName FROM Employee;

SELECT FirstName, LastName FROM Employee
EXCEPT SELECT FirstName, LastName FROM Client;

SELECT FirstName, LastName FROM Employee
INTERSECT SELECT FirstName, LastName FROM Client;

