#!/bin/bash

TEST_DIR="tests"

# Liste des fichiers de tests (tous les .c)
TESTS_FILES=("00_empty" "01_expr" "02_gvar" "03_func" "04_if" "05_AndOrNot" "06_if_rec" "07_while" "08_break_cont" "09_pointer" "15_io")

# Compteurs
passed=0
failed=0
total=0

echo "🚀 Lancement de tous les tests..."
echo

for test_file in "${TESTS_FILES[@]}"; do
    echo "🧪 Test: $test_file"

    test_file_path="$TEST_DIR/$test_file.c"
    input_file_path="$test_file_path.in"  # Ex: tests/15_io.c.in
    
    # Vérifier si un fichier .in existe pour ce test
    if [ -f "$input_file_path" ]; then
        echo "   (Utilisation de $input_file_path comme entrée)"
        ./exec.sh "$test_file_path" < "$input_file_path"
    else
        ./exec.sh "$test_file_path"
    fi
    if diff output.txt "$TEST_DIR/$test_file.c.ans" >/dev/null; then
        echo "   ✅ Test passed!"
        ((passed++))
    else
        echo "   ❌ Test failed!"
        ((failed++))
    fi
    ((total++))
    echo
done

echo "=========================="
echo " Résumé des tests :"
echo "  ✅ $passed / $total passés"
echo "  ❌ $failed / $total échoués"
echo "=========================="

# Code de sortie global
if [ $failed -eq 0 ]; then
    echo "🎉 Tous les tests ont réussi !"
    exit 0
else
    echo "⚠️  Certains tests ont échoué."
    exit 1
fi
