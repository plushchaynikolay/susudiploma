MODULE_PATH=$@

# Модули
echo "Модулей: `ls ./**/*.py | wc -l`"
echo "Из них тестовых `ls ./**/test_*.py | wc -l`"

# Классы
echo "Классов: `grep -o 'class ' ./**/*.py | wc -l`"
echo "Из них тестовых `grep -o 'class ' ./**/test_*.py | wc -l`"

# Raw
echo "LOC-метрика"
radon raw -s \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    $MODULE_PATH

# Cyclomatic complexity
echo "Cyclomatic complexity"
radon cc -a \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    $MODULE_PATH \
    -j -O cc.json

# Halsted
echo "Halsted"
radon hal \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    $MODULE_PATH \
    -j -O halsted.json

# Maintainability
echo "Maintainability"
radon mi \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    $MODULE_PATH \
    -j -O maintainability.json
