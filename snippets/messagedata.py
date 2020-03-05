@dataclass
class MessageData(SerializableMixin):
    chat_id: str = ''
    source: str = ''
    timestamp: Optional[datetime] = None
    text: str = ''
    sender: Optional[str] = None
    is_answered: Optional[bool] = None
    categories: List[int] = field(default_factory=list)
    prediction: Optional[Dict[str, float]] = None
    source_message_id: Optional[str] = None
    source_chat_id: Optional[str] = None
