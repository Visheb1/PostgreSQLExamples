CREATE TABLE ArraysExample
(
Id SERIAL PRIMARY KEY,
Title VARCHAR(50),
Description TEXT,
Tags VARCHAR(30)[]        
);

INSERT INTO ArraysExample(Title, Description, Tags) VALUES
('Title1', 'Description1', '{"one", "two", "three", "four", "five"}');

SELECT Tags FROM ArraysExample;

SELECT Tags[0:3] FROM ArraysExample;

UPDATE ArraysExample
SET Tags = NULL
WHERE Id = 1;

UPDATE ArraysExample
SET Tags = '{"three", "five", "two", "one"}'
WHERE Id = 1;

UPDATE ArraysExample
SET Tags[3] = 'six'
WHERE Id = 1;