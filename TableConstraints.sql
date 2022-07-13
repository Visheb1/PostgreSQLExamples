CREATE TABLE People
(
    Id SERIAL,
    PeopleName CHARACTER VARYING(30) NOT NULL,
    Surname CHARACTER VARYING(30) NOT NULL,
    Age INTEGER DEFAULT 20,
    Email CHARACTER VARYING(30) UNIQUE,
    CONSTRAINT people_id PRIMARY KEY(ID),
    CONSTRAINT people_check CHECK ((Age > 0 and Age < 130) AND (Email != '')),
    CONSTRAINT email_unique UNIQUE(Email)  
);