# les_4_fantastiques


# Lancer le compilateur

Pour utiliser le compilateur, assurez-vous d'avoir dune installé, ainsi que les dépendances suivantes : 

```bash
opam install dune
opam install menhir
```

Ensuite, vous pouvez lancer le compilateur et exécuter directement le fichier compilé avec la commande suivante :

```bash
./exec.sh <nom_du_fichier_source>
```

Vous pouvez aussi vérifier que tous les tests passent avec la commande :

```bash
./run_tests.sh
```

# Structure du projet

Le projet est structuré de la manière suivante :

- `bin/main.ml` : Point d'entrée principal du compilateur.
- `lib/` : Contient les modules principaux du compilateur.
- `tests/` : Contient les fichiers de test pour le compilateur.
- `tests-sup/` : Contient des tests supplémentaires pour le compilateur.

Lorsqu'un fichier source est compilé, le compilateur génère un fichier exécutable nommé `output` dans le répertoire courant.

# Fonctionnalités

Le compilateur supporte les fonctionnalités suivantes :

- 