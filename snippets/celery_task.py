@celery_app.task(name='chat_bot.tasks.save_to_db')
def save_to_db(json_message: Mapping[str, Any]) -> None:
    message = MessageData.from_dict(json_message, [EmailMessageData])
    DBProvider.save(message)