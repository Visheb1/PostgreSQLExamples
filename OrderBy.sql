SELECT DISTINCT Product FROM PartyPreparation;

SELECT * FROM PartyPreparation
ORDER BY Amount;

SELECT Product, Amount * Price AS FullPrice
FROM PartyPreparation
ORDER BY FullPrice;

SELECT Product, Amount, Price
FROM PartyPreparation
ORDER BY Amount * Price;

SELECT * FROM Student
ORDER BY StudentSurname DESC;

SELECT * FROM Student
ORDER BY Gender ASC;

SELECT * FROM PartyPreparation
ORDER BY Amount ASC, Price DESC; 