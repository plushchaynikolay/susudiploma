class IncomingHandler(MessageHandler):
    def __init__(self, scenarist: AbstractScenarist[MessageData]):
        self.scenarist: AbstractScenarist[MessageData] = scenarist

    def predict(self, message: MessageData) -> ResponseData:
        ...

    @classmethod
    def send_answers(cls, answers: List[Answer],
                     api_wrapper: ApiWrapper[MessageData]) -> List[Answer]:
        ...

    @classmethod
    def do_actions(cls, actions: Iterable[Action],
                   api_wrapper: ApiWrapper[MessageData]) -> None:
        for action in actions:
            action.do(api_wrapper)
