class MessageHandler:
    @staticmethod
    def send_notifications(notifiers: Sequence[Type[Notifier]],
                message: MessageData,
                scenarist_response: Optional[ResponseData] = None
                ) -> None:
        for notifier in notifiers:
            notifier.notify(message, scenarist_response)

    def handle(self, message: MessageData,
                api_wrapper: ApiWrapper[MessageData],
                notifiers: Sequence[Type[Notifier]] = ()
                ) -> None:
        raise NotImplementedError
