class OutgoingHandler(MessageHandler):
    def handle(self, message: MessageData,
               notifiers: Sequence[Type[Notifier]] = ()) -> None:
        self.notify(notifiers, message)
