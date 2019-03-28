create keyspace my_keyspace
with replication = {
  'class': 'SimpleStrategy',
  'replication_factor': '1'
} and durable_writes = true;
