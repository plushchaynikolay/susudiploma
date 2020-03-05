class MessageHandler:
    @staticmethod
    def notify(notifiers: Sequence[Type[Notifier]],
                message: IMessageData,
                scenarist_response: Optional[ResponseData] = None
                ) -> None:
        for notifier in notifiers:
            notifier.notify(message, scenarist_response)

    def handle(self,
                message: IMessageData,
                api_wrapper: ApiWrapper[IMessageData],
                notifiers: Sequence[Type[Notifier]] = ()
                ) -> None:
        raise NotImplementedError