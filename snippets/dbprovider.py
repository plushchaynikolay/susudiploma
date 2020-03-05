class DBProvider:
    def get_history(cls, chat_id: str, 
                    columns: Iterable[str]) -> Optional[History]: ...
    def _load_history(chat_id: str, 
                      columns: Iterable[str]) -> History: ...
    def get_latest_datetime(**kwargs: str
                            ) -> Optional[timezone.datetime]: ...
    def save(cls, message: MessageData) -> None: ...
    def get_or_create(cls, message: MessageData) -> bool: ...
    def update_or_create(cls, message: MessageData) -> bool: ...
    def _save(message: MessageData, 
              need_check: bool = False, 
              update: bool = False) -> bool: ...