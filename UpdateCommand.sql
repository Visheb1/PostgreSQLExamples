UPDATE PartyPreparation
SET Price = Price + 45;
SELECT * FROM PartyPreparation;

UPDATE PartyPreparation
SET Product = 'Печенья овсяные'
WHERE Product = 'Печенья';
SELECT * FROM PartyPreparation;

UPDATE PartyPreparation
SET Product = 'Печенья',
Amount = Amount + 3
WHERE Product = 'Печенья овсяные';
SELECT * FROM PartyPreparation;

