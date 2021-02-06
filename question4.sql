alter table enseignants ajouter mot de passe varchar(50);
mettre à jour enseignants définir mot de passe = ora_hash (matricule) où matricule = valeur;