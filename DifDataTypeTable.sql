CREATE TABLE Product
(
    Id_product SERIAL PRIMARY KEY,
    Weight NUMERIC(9,2),
    Price MONEY,
    Amount INTEGER,
    Overage REAL,
    Availability BOOLEAN,
    DateDelivery TIMESTAMP
);