# Étape 1
- PLAT (**id_plat**, nom, prix)

## Question « Piège »
- Le prix est de type INTEGER, car les montants sont exprimés en ariary, sans centimes.
- id_plat est une clé primaire de type SERIAL.


# Étape 2
- PLAT (**id_plat**, nom, prix,#id_categorie) (modifié)
- CATEGORIE (**id_categorie**, nom) (nouveau)

## Question « Piège »
- c'est pour eviter des erreurs comme , par exemple écrire « Plat malagasy » sur certains plats et « Plats malagasy » sur d'autres,



# Étape 3

- COMMANDE (**id_commande**, date_commande) (nouveau)
- COMMANDE_DETAILLE (**#id_commande**, **#id_plat**, quantite, prix_unitaire) (nouveau)

## Question « Piège »

- La quantité doit être placée dans la table `COMMANDE_DETAILLE`, car elle dépend du plat dans une commande.
