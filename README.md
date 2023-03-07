# Exemple d'association *many-to-many* (plusieurs à plusieurs)
On ne peut représenter dans le modèle relationnel une telle association, on créé alors une entité intermédiaire qui représente la relation entre les deux entités principales.
Dans la base de données, la relation entre les deux tables se fait à travers une table intermédiaire qu'on appelle la *table des relations*.

>Ajoutez les livres et les auteurs mentionnés dans les fichiers raccourcis joints (dossiers `auteurs` et `livres`).

>Modifiez les contraintes d'intégrité référentielle des tables `auteur` et `livre` de la façon suivante : 
1. Si l'enregistrement parent est supprimé, les enregistrements enfants le sont automatiquement
2. Si la clé primaire (l'identifiant) de l'enregistrement parent est modifiée, les enregistrements enfants sont mis à jour automatiquement (c'est à dire la clé étrangère est modifiée pour correspondre à la nouvelle valeur de la clé primaire)

>Testez ces nouvelles contraintes en supprimant un auteur ou un livre et en modifiant l'identifiant d'un auteur ou d'un livre.

## Remarquez aussi la convention de nommage utilisée dans cet exemple : on en discute en classe.