class Message:
    class Meta:
        db_table = 'messages'
        constraints = [
            models.UniqueConstraint(
                fields=['source', 'source_message_id'],
                name='messages_source_source_message_id_key')
        ]
    id = models.AutoField(primary_key=True)
    chat_id = models.CharField(max_length=50, null=True)
    source = models.CharField(max_length=50, null=False)
    datetime = models.DateTimeField(null=False)
    text = models.TextField(null=True)
    sender = models.CharField(max_length=10, null=False)
    is_answered = models.BooleanField(null=True)
    prediction = JSONField(null=True)
    correctly_answered = models.BooleanField(null=True)
    categories = ArrayField(models.IntegerField(), null=True)
    source_message_id = models.CharField(max_length=50, null=True)