CREATE TABLE Student
(
    Id SERIAL PRIMARY KEY,
    StudentName VARCHAR(30),
    StudentSurname VARCHAR(30),
    Gender VARCHAR(10),
    CHECK (GENDER IN ('Мужской', 'Женский'))
);
CREATE TABLE Diary
(
    Id INT REFERENCES Student(Id) ON DELETE CASCADE,
    MathGrade INT2,
    RussianGrade INT2,
    PEGrade INT2,
    CHECK ((MathGrade > 0 AND MathGrade < 6) AND (RussianGrade > 0 AND RussianGrade < 6)
    AND (PEGrade > 0 AND PEGrade < 6))
);
CREATE TABLE PartyPreparation
(
    Id INT REFERENCES Student(Id) ON DELETE CASCADE,
    Product VARCHAR(50),
    Amount INT2,
    Price REAL
);