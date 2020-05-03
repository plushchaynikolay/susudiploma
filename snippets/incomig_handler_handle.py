class IncomingHandler(MessageHandler):
    def handle(self, message: MessageData,
               api_wrapper: ApiWrapper[MessageData],
               notifiers: Sequence[Type[Notifier]] = ()) -> None:
        response = self.predict(message)
        response.answers = self.send_answers(response.answers, api_wrapper)
        self.notify(notifiers, message_with_prediction, response)
        self.do_actions(response.after_answer_actions, api_wrapper)
