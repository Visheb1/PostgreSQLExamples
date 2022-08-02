CREATE TYPE Gender_type AS ENUM ('Мужской', 'Женский');

ALTER TABLE Student
DROP COLUMN Gender;
ALTER TABLE Student
ADD Gender Gender_type; 

UPDATE Student
SET Gender = 'Мужской'
WHERE Id IN(1,3,5,7,9);
UPDATE Student
SET Gender = 'Женский'
WHERE Id IN(2,4,6,8,10);

ALTER TYPE Gender_type ADD VALUE 'Male';
ALTER TYPE Gender_type ADD VALUE 'Female';

DROP TYPE Gender_type;



