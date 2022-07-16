SELECT Id, MathGrade, PEGrade FROM Diary
WHERE MathGrade = PEGrade;

SELECT Product AS Название, Amount * Price AS Итоговая_цена
FROM PartyPreparation
WHERE Amount * Price >= 900;

SELECT Product AS Название, Amount * Price AS Итоговая_цена
FROM PartyPreparation
WHERE  Product = 'Печенья' AND Amount * Price > 1300;

SELECT Product AS Название, Amount * Price AS Итоговая_цена
FROM PartyPreparation
WHERE  Product = 'Печенья' OR Amount * Price > 1300;

SELECT * FROM PartyPreparation
WHERE NOT Product = 'Сок';

SELECT * FROM Diary
WHERE RussianGrade <> 3;

SELECT * FROM PartyPreparation
WHERE Product = 'Печенья' OR  Price > 150 AND Amount < 10;

SELECT * FROM PartyPreparation
WHERE (Product = 'Сок' OR  Price > 60) AND Amount > 7;

SELECT * FROM Diary
WHERE RussianGrade IS NOT NULL;
