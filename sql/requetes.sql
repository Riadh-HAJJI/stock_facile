-- Q1.5.1 SELECT * FROM produits;
1	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
2	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
3	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
5	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
6	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
-- Q1.5.2 SELECT * FROM produits where quantite = 0;
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
-- Q1.5.3 SELECT * FROM produits order by prix desc;
1	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
5	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
2	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
6	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
3	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
/* Q1.5.4 SELECT 
    produits.nom AS nom_produit, 
    categories.nom AS nom_categorie
FROM 
    produits
INNER JOIN 
    categories ON produits.categorie_id = categories.id;
*/
Huile d'olive 1 L	Alimentation
Couscous moyen 1 kg	Alimentation
Eau minérale 1,5 L	Boissons
Jus d'orange 1 L	Boissons
Savon de Marseille	Hygiène
Cahier 96 pages	Papeterie

/*
SELECT 
    categories.nom AS nom_categorie, 
    COUNT(produits.id) AS nombre_produits
FROM 
    categories
LEFT JOIN 
    produits ON categories.id = produits.categorie_id
GROUP BY 
    categories.id, categories.nom;*/
Alimentation	2
Boissons	2
Hygiène	1
Papeterie	1
/*SELECT 
    SUM(prix * quantite) AS valeur_totale_stock
FROM 
    produits;*/
777.5