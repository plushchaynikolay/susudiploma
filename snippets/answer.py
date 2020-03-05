@dataclass
class Answer(SerializableMixin):
    category: str
    message: MessageData