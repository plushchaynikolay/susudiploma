# Модули
ls ~/NIT/chat_bot/**/*.py ~/NIT/chat_bot_api/**/*.py | wc -l

ls ~/NIT/monitoring_system/src/chat_bot/*.py \
    ~/NIT/monitoring_system/src/chat_bot/utils/**/*.py \
    ~/NIT/monitoring_system/src/chat_bot/message/**/*.py \
    ~/NIT/monitoring_system/src/chat_bot/external_api/**/*.py \
    | wc -l

# Классы
grep -o '^class ' ~/NIT/chat_bot/**/*.py ~/NIT/chat_bot_api/**/*.py | wc -l

grep -o '^class ' ~/NIT/monitoring_system/src/chat_bot/*.py \
    ~/NIT/monitoring_system/src/chat_bot/utils/**/*.py \
    ~/NIT/monitoring_system/src/chat_bot/message/*.py \
    ~/NIT/monitoring_system/src/chat_bot/external_api/*.py \
    | wc -l

# Raw
radon raw -s \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/chat_bot ~/NIT/chat_bot_api

radon raw -s \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/monitoring_system/src/chat_bot

# Cyclomatic complexity
radon cc -a \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/chat_bot ~/NIT/chat_bot_api \
    # -j -O ~/Documents/Diploma/Cyclomatic_old.json

radon cc -a \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/monitoring_system/src/chat_bot \
    # -j -O ~/Documents/Diploma/Cyclomatic.json 


# Halsted
radon hal \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/chat_bot ~/NIT/chat_bot_api \
    -j -O ~/Documents/Diploma/Halsted_old.json

radon hal \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/monitoring_system/src/chat_bot \
    -j -O ~/Documents/Diploma/Halsted.json 


# Maintainability
radon mi \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/chat_bot ~/NIT/chat_bot_api \
    -j -O ~/Documents/Diploma/Maintainability_old.json

radon mi \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/monitoring_system/src/chat_bot \
    -j -O ~/Documents/Diploma/Maintainability.json
