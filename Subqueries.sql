CREATE TABLE InsertExample (
    Id SERIAL PRIMARY KEY,
    StudentSurname VARCHAR(30) NOT NULL,
    MathGrade SMALLINT NOT NULL,
    Product VARCHAR(50) NOT NULL,
    Payment BOOL NOT NULL
);
INSERT INTO InsertExample(StudentSurname, MathGrade, Product, Payment) VALUES
(
    (SELECT StudentSurname FROM Student WHERE StudentName = 'Петр'),
    (SELECT MathGrade FROM Diary WHERE Id = 1),
    (SELECT Product FROM PartyPreparation WHERE Amount*Price = 825),
    (SELECT Payment FROM PartyPreparation WHERE Product = 'Шары' AND Amount = 15)
),
    (
    (SELECT StudentSurname FROM Student WHERE StudentName = 'Елизавета'),
    (SELECT MathGrade FROM Diary WHERE Id = 4),
    (SELECT Product FROM PartyPreparation WHERE Amount*Price = 1200),
    (SELECT Payment FROM PartyPreparation WHERE Product = 'Печенья' AND Amount = 12)
),
    (
    (SELECT StudentSurname FROM Student WHERE StudentName = 'Виталий'),
    (SELECT MathGrade FROM Diary WHERE Id = 9),
    (SELECT Product FROM PartyPreparation WHERE Amount*Price = 1800),
    (SELECT Payment FROM PartyPreparation WHERE Product = 'Печенья' AND Amount = 18)
);

SELECT * FROM PartyPreparation
WHERE Price = (SELECT MIN(Price) FROM PartyPreparation);

SELECT * FROM Diary
WHERE RussianGrade < (SELECT AVG(PEGrade) FROM Diary);

SELECT StudentSurname, MathGrade,
(SELECT Gender FROM Student WHERE Student.Id = InsertExample.Id) AS Gender
FROM InsertExample;

SELECT Product, Amount * Price AS FullPrice,
(SELECT StudentName FROM Student WHERE Student.Id = PartyPrep.Id) AS StudentName,
(SELECT StudentSurname FROM Student WHERE Student.Id = PartyPrep.Id) AS StudentSurname,
(SELECT AVG(Amount * Price) FROM PartyPreparation AS AvgPrice WHERE AvgPrice.Product = PartyPrep.Product)
FROM PartyPreparation AS PartyPrep
WHERE Amount*Price > (SELECT AVG(Amount * Price) FROM PartyPreparation AS AvgPrice 
 WHERE AvgPrice.Product = PartyPrep.Product);


