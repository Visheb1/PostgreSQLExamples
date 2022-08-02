SELECT Product, COUNT(S.Id)
FROM PartyPreparation AS PP JOIN Student AS S
ON PP.Id = S.ID
GROUP BY PP.Product;

SELECT S.StudentSurname, COUNT(PP.Id)
FROM Student AS S LEFT JOIN PartyPreparation AS PP
ON S.ID = PP.Id
GROUP BY S.StudentSurname, S.Id;

SELECT S.StudentSurname, PP.Product, SUM(PP.Amount*PP.Price) AS FullPrice
FROM Student as S LEFT JOIN PartyPreparation AS PP
ON S.Id = PP.Id
GROUP BY S.StudentSurname, PP.Product;


