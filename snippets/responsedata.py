@dataclass
class ResponseData(SerializableMixin):
    prediction: Prediction = field(default=Prediction([], None))
    answers: List[Answer] = field(default_factory=list)
    after_answer_actions: List[Action] = field(
        default_factory=list)
