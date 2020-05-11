# Raw
radon raw -s \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/chat_bot ~/NIT/chat_bot_api \
    # -j -O ~/Documents/Diploma/Cyclomatic_old.json

radon raw -s \
    -i 'testing_utils,tests,kb_dialog_system,statistics,migrations' \
    -e '*/**/__init__.py' \
    ~/NIT/monitoring_system/src/chat_bot \
    # -j -O ~/Documents/Diploma/Cyclomatic.json 

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
