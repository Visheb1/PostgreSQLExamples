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
INSERT INTO PartyPreparation(Payment) VALUES
(TRUE),(FALSE),(TRUE),(FALSE),(TRUE),(FALSE),(FALSE),(TRUE),(TRUE),(FALSE);

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