#!/bin/bash

dune exec bin/main.exe $1

# lancer l'assembleur
gcc output/output.s -o output/output -no-pie

# lancer le programme
./output/output > output/output.txt

# Vérifier le résultat avec le fichier attendu si existe
[ -f $1.ans ] && ((diff output/output.txt $1.ans > output/diff.txt && echo " ✅ Test passed!") || echo "❌ Test failed!")