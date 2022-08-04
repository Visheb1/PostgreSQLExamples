WITH Male_Student AS(
SELECT Id, StudentName || ' ' || StudentSurname AS MaleName
FROM Student
WHERE Gender = 'Мужской'    
),
 Female_Student AS(
SELECT Id, StudentName || ' ' || StudentSurname AS FemaleName
FROM Student
WHERE Gender = 'Женский'    
)
SELECT MaleName, FemaleName FROM Male_Student
JOIN Female_Student
ON Male_Student.Id = Female_Student.Id+1;

WITH Male_Student AS(
SELECT StudentName || ' ' || StudentSurname AS MaleName, ROW_NUMBER() OVER() AS Id
FROM Student
WHERE Gender = 'Мужской'    
),
 Female_Student AS(
SELECT StudentName || ' ' || StudentSurname AS FemaleName, ROW_NUMBER() OVER() AS Id
FROM Student
WHERE Gender = 'Женский'    
)
SELECT MaleName, FemaleName FROM Male_Student
JOIN Female_Student
ON Male_Student.Id = Female_Student.Id;

ALTER TABLE Student
ADD Age SMALLINT CHECK (Age > 12 AND Age < 19);
INSERT INTO Student VALUES
(11, 'Григорий', 'Дегтярев', 'Мужской', 13),
(12, 'Яна', 'Воронина', 'Женский', 18);
UPDATE Student
SET Age = 13 WHERE Id = 6;
UPDATE Student
SET Age = 18 WHERE Id = 1;
UPDATE Student
SET Age = 14 WHERE Id IN (2,5);
UPDATE Student
SET Age = 15 WHERE Id IN (3,8);
UPDATE Student
SET Age = 16 WHERE Id IN (4,7);
UPDATE Student
SET Age = 17 WHERE Id IN (9,10);

WITH Male_Student AS(
SELECT StudentName || ' ' || StudentSurname AS MaleName, Age AS AgeM, ROW_NUMBER() OVER(ORDER BY Age ) AS Id
FROM Student
WHERE Gender = 'Мужской'    
),
 Female_Student AS(
SELECT StudentName || ' ' || StudentSurname AS FemaleName, Age AS AgeF, ROW_NUMBER() OVER(ORDER BY Age) AS Id
FROM Student
WHERE Gender = 'Женский'    
)
SELECT MaleName, AgeM, FemaleName, AgeF FROM Male_Student
JOIN Female_Student
ON Male_Student.Id = Female_Student.Id;

WITH Male_Student AS(
SELECT StudentName || ' ' || StudentSurname AS MaleName, Age AS MaleAge, ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY Age) AS Id
FROM Student
WHERE Gender = 'Мужской'   
),
 Female_Student AS(
SELECT StudentName || ' ' || StudentSurname AS FemaleName, Age AS FemaleAge, ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY Age) AS Id
FROM Student
WHERE Gender = 'Женский'    
)
SELECT MaleName, MaleAge, FemaleName, FemaleAge FROM Male_Student
JOIN Female_Student
ON Male_Student.Id = Female_Student.Id;
