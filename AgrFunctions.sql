SELECT AVG(MathGrade) AS AverageMathGrade FROM DIARY;

SELECT AVG(Price * Amount) AS AveragePrice 
FROM PartyPreparation
WHERE Product = 'Шоколад';

SELECT COUNT(*) FROM PartyPreparation;

SELECT COUNT(DISTINCT Product) FROM PartyPreparation;

SELECT MIN(Amount) FROM PartyPreparation;
SELECT MAX(Amount) FROM PartyPreparation;

SELECT SUM(Amount) FROM PartyPreparation;
SELECT SUM(Amount*Price) FROM PartyPreparation;

ALTER TABLE PartyPreparation
ADD Payment BOOL;
UPDATE PartyPreparation
SET Payment = true
WHERE id = 1 or id = 3 or id = 5 or id = 6 or id = 10;
UPDATE PartyPreparation
SET Payment = false
WHERE id = 2 or id = 4 or id = 7 or id = 8 or id = 9;

SELECT BOOL_OR(Payment) FROM PartyPreparation;
SELECT BOOL_AND(Payment) FROM PartyPreparation;

SELECT STRING_AGG(StudentName, ', ') FROM Student;
SELECT STRING_AGG(DISTINCT Product, ', ') FROM PartyPreparation;

SELECT COUNT(*) AS ProductCount,
MIN(Amount*Price) AS MinFullPrice,
MAX(Amount*Price) AS MaxFullPrice,
SUM(Amount*Price) AS FullPrice,
AVG(Amount*Price) AS AveragePrice
FROM PartyPreparation;