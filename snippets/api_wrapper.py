class ApiWrapper:
    @classmethod
    def convert_from_api_message_type(cls,
                                      api_message: Any
                                      ) -> IMessageData:
        raise NotImplementedError

    def send_answers(self, answers: List[Answer]) -> List[Answer]:
        ...

    def send_message(self, message: MessageData) -> MessageData:
        raise NotImplementedError