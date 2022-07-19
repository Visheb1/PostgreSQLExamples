SELECT * FROM PartyPreparation
WHERE Product IN ('Сок','Печенья');

SELECT * FROM PartyPreparation
WHERE Product = 'Сок' OR Product = 'Печенья';

SELECT * FROM PartyPreparation
WHERE Product NOT IN ('Сок','Печенья');

SELECT * FROM PartyPreparation 
WHERE Price BETWEEN 60 AND 250;

SELECT * FROM PartyPreparation 
WHERE Price NOT BETWEEN 60 AND 250;

SELECT * FROM PartyPreparation
WHERE Price * Amount BETWEEN 900 AND 1300;

SELECT * FROM Student
WHERE StudentName LIKE 'В%';

SELECT * FROM Student
WHERE Gender LIKE 'Мужско_';

SELECT * FROM Student
WHERE Gender NOT LIKE 'Ж%';

SELECT * FROM Student
WHERE Gender LIKE '%ий';