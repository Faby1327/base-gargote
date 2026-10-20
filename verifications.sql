-- etape 1, 2
select * from plat;

-- etape 3
SELECT
    c.id_commande,
    c.date_commande,
    SUM(cd.quantite * cd.prix_unitaire) AS montant_total
FROM commande c
JOIN commande_detaille cd
    ON c.id_commande = cd.id_commande
GROUP BY c.id_commande, c.date_commande
ORDER BY c.id_commande;

-- etape 4

SELECT
    co.id_commande,
    co.date_commande,
    COALESCE(cl.nom, 'client de passage') AS nom_client
FROM commande co
LEFT JOIN client cl
    ON co.id_client = cl.id_client
ORDER BY co.id_commande;
