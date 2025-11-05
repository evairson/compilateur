#!/bin/bash

dune exec bin/main.exe $1

# lancer l'assembleur
gcc output.s -o output -no-pie

# lancer le programme
./output > output.txt

# Vérifier le résultat avec le fichier attendu
diff output.txt $1.ans && echo " ✅ Test passed!" || echo "❌ Test failed!"