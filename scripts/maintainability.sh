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