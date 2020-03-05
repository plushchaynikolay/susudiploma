class IncomingHandler(MessageHandler):
    def handle(self, message: IMessageData,
               api_wrapper: ApiWrapper[IMessageData],
               notifiers: Sequence[Type[Notifier]] = ()) -> None:
        response = self.predict(message)
        response.answers = self.send_answers(response.answers, api_wrapper)
        self.notify(notifiers, message_with_prediction, response)
        self.do_actions(response.after_answer_actions, api_wrapper)