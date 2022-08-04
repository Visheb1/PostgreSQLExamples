SELECT S.StudentName, PP.Product, PP.Amount, AVG(PP.Price) OVER (PARTITION BY Product)
FROM PartyPreparation AS PP JOIN Student AS S
ON S.Id = PP.Id;

SELECT Product, Amount, Price, RANK() OVER (PARTITION BY Product ORDER BY Amount DESC)
FROM PartyPreparation; 

SELECT Product, Amount, Price, SUM(Amount*Price) OVER()
FROM PartyPreparation;

SELECT Product, Amount, Price, SUM(Amount*Price) OVER(ORDER BY Amount*Price)
FROM PartyPreparation; 

SELECT Product, Amount, Price
FROM (SELECT Product, Amount, Price, SUM(Amount*Price) OVER(PARTITION BY Product ORDER BY Amount*Price) AS wind
FROM PartyPreparation 
) AS inwind
WHERE wind > 1000;

SELECT SUM(Amount*Price) OVER w, AVG(Amount*Price) OVER w
FROM PartyPreparation
WINDOW w AS (PARTITION BY Product ORDER BY Amount*Price);


























