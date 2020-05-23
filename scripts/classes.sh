# Классы
grep -o '^class ' ~/NIT/chat_bot/**/*.py ~/NIT/chat_bot_api/**/*.py | wc -l

grep -o '^class ' ~/NIT/monitoring_system/src/chat_bot/*.py \
    ~/NIT/monitoring_system/src/chat_bot/utils/**/*.py \
    ~/NIT/monitoring_system/src/chat_bot/message/*.py \
    ~/NIT/monitoring_system/src/chat_bot/external_api/*.py \
    | wc -l