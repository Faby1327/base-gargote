CREATE TABLE commande (
id_commande SERIAL PRIMARY KEY,
date_commande TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE commande_detaille (
id_commande INTEGER NOT NULL,
id_plat INTEGER NOT NULL,
quantite INTEGER NOT NULL CHECK (quantite > 0),
prix_unitaire INTEGER NOT NULL CHECK (prix_unitaire >= 0),

PRIMARY KEY (id_commande, id_plat),

FOREIGN KEY (id_commande)
    REFERENCES commande(id_commande),

FOREIGN KEY (id_plat)
    REFERENCES plat(id_plat)

);

INSERT INTO commande (date_commande) VALUES
('2026-10-16 12:00:00'),
('2026-10-16 12:15:00');

INSERT INTO commande_detaille
(id_commande, id_plat, quantite, prix_unitaire)
VALUES
(1, 1, 2, 7000),
(1, 4, 1, 6000),
(2, 2, 1, 8000),
(2, 7, 2, 500);

