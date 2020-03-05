class IncomingHandler(MessageHandler):
    def __init__(self, scenarist: IScenarist[IMessageData]):
        self.scenarist: IScenarist[IMessageData] = scenarist

    def predict(self, message: IMessageData) -> ResponseData:
        ...

    @classmethod
    def send_answers(cls,
                     answers: List[Answer],
                     api_wrapper: ApiWrapper[IMessageData]
                     ) -> List[Answer]:
        ...

    @classmethod
    def do_actions(cls,
                   actions: Iterable[Action], 
                   api_wrapper: ApiWrapper[IMessageData]
                   ) -> None:
        for action in actions:
            action.do(api_wrapper)
