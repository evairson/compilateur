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

Les fonctionnalités de base du langage incluent :

- Le type int
- Les fonctions
- Variables locales et globales
- Les conditions if et if-else
- l’arithmétique basique (+,-,*,/,%), comparaisons (===, <, <<=, >, >>=) et la logique (&&, ∣∣)
- la fonction print_int

Les extensions suivantes sont également supportées :

- while, break, continue
- les fonctions de type void
- les pointeurs globaux et locaux
- malloc
- Les tableaux globales ou locales à une dimension
- Les tableaux globales multi-dimensionnels
- La logique paresseuse
- Scanf et Printf
- Un typechecker pour vérifier la cohérence des types dans le programme source