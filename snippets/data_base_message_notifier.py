class DataBaseMessageNotifier(Notifier):
    @staticmethod
    def notify(message: MessageData,
               scenarist_response: Optional[ResponseData] = None
               ) -> None:
        celery_app.send_task('chat_bot.tasks.save_to_db',
                             args=(message.to_dict(),))