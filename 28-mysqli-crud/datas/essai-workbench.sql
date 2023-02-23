# Sélection de tous les champs de la table article
SELECT * FROM articles;
# Sélection de tous les champs de la table article ordonné par art_date descendant
SELECT * FROM articles ORDER BY art_date DESC;
# Sélection des champs idarticles, art_title et art_date de la table article ordonné par art_date descendant
SELECT idarticles, art_title, art_date FROM articles ORDER BY art_date DESC;