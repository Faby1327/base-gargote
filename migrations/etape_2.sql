CREATE TABLE categorie (
id_categorie SERIAL PRIMARY KEY,
nom VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO categorie (nom) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE plat ADD COLUMN id_categorie INTEGER;

UPDATE plat SET id_categorie = 1 WHERE nom = 'Romazava';

UPDATE plat SET id_categorie = 1 WHERE nom = 'Ravitoto sy henakisoa';

UPDATE plat SET id_categorie = 1 WHERE nom = 'Akoho sy voanio';

UPDATE plat SET id_categorie = 2 WHERE nom = 'Mi sao';

UPDATE plat SET id_categorie = 3 WHERE nom = 'Soupe chinoise';

UPDATE plat SET id_categorie = 4 WHERE nom = 'Mofo gasy (les 4)';

UPDATE plat SET id_categorie = 5 WHERE nom = 'Ranon''ampango';

ALTER TABLE plat
ALTER COLUMN id_categorie SET NOT NULL;

ALTER TABLE plat
ADD CONSTRAINT fk_plat_categorie
FOREIGN KEY (id_categorie)
REFERENCES categorie(id_categorie);