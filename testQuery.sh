curl -X GET -H 'Content-Type:application/json' -d ' { "query": { "match": { "c": "ipsum" } } }' 'http://localhost:9200/docs/_doc/_search?pretty'
