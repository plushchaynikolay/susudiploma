@dataclass
class Prediction(SerializableMixin):
    categories: List[str]
    probabilities: Optional[Dict[str, float]]
