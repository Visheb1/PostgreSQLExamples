SELECT S.StudentSurname, PP.Product, PP.Amount, PP.Price, PP.Payment
FROM Student AS S
JOIN PartyPreparation AS PP ON S.ID = PP.Id;

SELECT S.StudentSurname, D.RussianGrade, PP.Payment
FROM Student AS S
JOIN PartyPreparation AS PP ON S.ID = PP.Id
JOIN Diary AS D ON S.Id = D.Id;

SELECT S.StudentSurname, D.RussianGrade, PP.Payment
FROM Student AS S
JOIN PartyPreparation AS PP ON S.ID = PP.Id
JOIN Diary AS D ON S.Id = D.Id
WHERE (PP.Amount * PP.Price) > 850
ORDER BY S.StudentSurname;

SELECT S.StudentSurname, D.RussianGrade, PP.Product, PP.Payment
FROM Student AS S
JOIN PartyPreparation AS PP ON S.ID = PP.Id AND PP.Product <> 'Шоколад' AND PP.Product <> 'Печенья'
JOIN Diary AS D ON S.Id = D.Id
ORDER BY S.StudentSurname;