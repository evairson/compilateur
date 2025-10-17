#!/bin/bash

dune exec bin/main.exe

# lancer l'assembleur
gcc output.s -o output -no-pie

# lancer le programme
./output