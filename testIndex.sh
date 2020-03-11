curl -X POST 'http://localhost:9200/docs/_analyze?pretty' -H 'Content-Type:application/json' -d ' { "analyzer": "kuromoji", "text": "秋は京都で紅葉狩りをします。" }'
