INSERT INTO Student VALUES
(11, 'Анатолий', 'Григорьев', 'Мужской'),
(12, 'Василиса', 'Любимова', 'Женский'),
(13, 'Роман', 'Ковальчук', 'Мужской');

SELECT S.StudentSurname, D.MathGrade, D.RussianGrade, D.PEGrade
FROM Student AS S LEFT JOIN Diary AS D
ON S.Id = D.Id;

SELECT S.StudentSurname, PP.Product, PP.Amount, PP.Price, PP.Payment
FROM PartyPreparation AS PP RIGHT JOIN Student AS S
ON PP.Id = S.Id;

SELECT S.StudentSurname, D.MathGrade, D.RussianGrade, D.PEGrade
FROM Student AS S FULL JOIN Diary AS D
ON S.Id = D.Id;

SELECT S.StudentSurname, D.MathGrade, D.RussianGrade, D.PEGrade, PP.Product, PP.Amount, PP.Price, PP.Payment
FROM Student AS S 
LEFT JOIN Diary AS D ON S.Id = D.Id
LEFT JOIN PartyPreparation AS PP ON S.Id = PP.Id;

SELECT S.StudentSurname, D.MathGrade, D.RussianGrade, D.PEGrade, PP.Product, PP.Amount, PP.Price, PP.Payment
FROM Student AS S 
LEFT JOIN Diary AS D ON S.Id = D.Id
LEFT JOIN PartyPreparation AS PP ON S.Id = PP.Id
WHERE PP.Amount*PP.Price > 900
ORDER BY PP.Amount;

SELECT S.StudentSurname, PP.Product FROM Student AS S
LEFT JOIN PartyPreparation AS PP ON S.Id = PP.Id
WHERE PP.Product IS NULL;

SELECT S.StudentSurname, D.MathGrade, D.RussianGrade, D.PEGrade, PP.Product, PP.Amount, PP.Price, PP.Payment
FROM Student AS S 
JOIN Diary AS D ON S.Id = D.Id AND MathGrade > 3
LEFT JOIN PartyPreparation AS PP ON S.Id = PP.Id
ORDER BY PP.Amount;

SELECT * FROM Student CROSS JOIN PartyPreparation;
