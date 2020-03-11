curl -X PUT -H 'Content-Type:application/json' 'http://localhost:9200/docs' -d ' { "mappings": { "properties": { "c": { "type": "text", "analyzer": "kuromoji" } } } }'
