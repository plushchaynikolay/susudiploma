# Подсчет модулей
ls ~/NIT/chat_bot/**/*.py \
    ~/NIT/chat_bot_api/**/*.py | wc -l

ls ~/NIT/monitoring_system/src/chat_bot/*.py \
    ~/NIT/monitoring_system/src/chat_bot/utils/**/*.py \
    ~/NIT/monitoring_system/src/chat_bot/message/**/*.py \
    ~/NIT/monitoring_system/src/chat_bot/external_api/**/*.py \
    | wc -l
