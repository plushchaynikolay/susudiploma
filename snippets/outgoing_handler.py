class OutgoingHandler(MessageHandler):
    def handle(self, message: IMessageData,
               notifiers: Sequence[Type[Notifier]] = ()) -> None:
        self.notify(notifiers, message)
