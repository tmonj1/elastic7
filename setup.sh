#
# setup "docs" index
#

# create "docs" index and specify mappings
curl -X PUT -H 'Content-Type:application/json' 'http://localhost:9200/docs?pretty' -d '
{
  "mappings": {
    "properties": {
      "c": {
        "type": "text",
        "analyzer": "kuromoji"
      }
    }
  }
}'

# do ingest-attachment settings
curl -X PUT 'localhost:9200/_ingest/pipeline/attachment?pretty' -H 'Content-Type: application/json' -d'
{
  "description" : "Extract attachment information",
  "processors" : [{
    "attachment" : {
      "field": "c",
      "indexed_chars" : -1,
      "properties": ["content", "content_type"]
    }
  }]
}'
