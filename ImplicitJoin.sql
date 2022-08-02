SELECT Student.StudentSurname, Diary.MathGrade, Diary.RussianGrade, Diary.PEGrade, PartyPreparation.Payment
FROM Student, Diary, PartyPreparation
WHERE Student.Id = Diary.Id AND Student.Id = PartyPreparation.Id;

SELECT S.StudentSurname, D.MathGrade, D.RussianGrade, D.PEGrade, PP.Payment
FROM Student AS S, Diary AS D, PartyPreparation AS PP
WHERE S.Id = D.Id AND S.Id = PP.Id;

SELECT S.StudentSurname, D.MathGrade, D.RussianGrade, D.PEGrade, PP.*
FROM Student AS S, Diary AS D, PartyPreparation AS PP
WHERE S.Id = D.Id AND S.Id = PP.Id;