SELECT Product, COUNT(*) 
FROM PartyPreparation
GROUP BY Product;

SELECT Product, SUM(Amount) AS FullAmount, COUNT(*) 
FROM PartyPreparation
GROUP BY Product;

SELECT Product, Amount, AVG(Price) AS AveragePrice
FROM PartyPreparation
GROUP BY Product, Amount;

SELECT Product, AVG(Amount*Price) AS AveragePrice
FROM PartyPreparation
GROUP BY Product
ORDER BY AveragePrice DESC;

SELECT MathGrade, COUNT(*) AS CountMath
FROM Diary
WHERE MathGrade > 2
GROUP BY MathGrade
ORDER BY CountMath;

SELECT Product, Amount, AVG(Price) AS AveragePrice
FROM PartyPreparation
GROUP BY Product, Amount
HAVING AVG(Price) > 90;

SELECT Product, Amount, AVG(Price) AS AveragePrice
FROM PartyPreparation
WHERE Amount > 10
GROUP BY Product, Amount
HAVING AVG(Price) > 60
ORDER BY AveragePrice;

SELECT Product, Amount, AVG(Price) AS AveragePrice
FROM PartyPreparation
GROUP BY GROUPING SETS(Product, Amount);

SELECT Product, COUNT(*) 
FROM PartyPreparation
GROUP BY ROLLUP(Product);

SELECT Product, Amount, AVG(Price) AS AveragePrice
FROM PartyPreparation
GROUP BY ROLLUP(Product, Amount)
ORDER BY AveragePrice DESC;

SELECT Product, SUM(Amount) AS SumAmount, SUM(Price) AS SumPrice
FROM PartyPreparation
GROUP BY ROLLUP(Product, Amount)
ORDER BY SumPrice DESC;

SELECT Product, Amount, AVG(Price) AS AveragePrice
FROM PartyPreparation
GROUP BY CUBE(Product, Amount)
ORDER BY AveragePrice DESC;

SELECT Product, SUM(Amount) AS SumAmount, SUM(Price) AS SumPrice
FROM PartyPreparation
GROUP BY CUBE(Product, Amount)
ORDER BY SumPrice DESC;