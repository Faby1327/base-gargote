
CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

ALTER TABLE commande
ADD COLUMN id_client INTEGER;

ALTER TABLE commande
ADD CONSTRAINT fk_commande_client
FOREIGN KEY (id_client)
REFERENCES client(id_client);

INSERT INTO client (nom) VALUES
('Rakoto'),
('Rabe'),
('Rasoa');

UPDATE commande
SET id_client = 1
WHERE id_commande = 1;

UPDATE commande
SET id_client = 2
WHERE id_commande = 2;

