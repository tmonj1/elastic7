FROM elasticsearch:7.6.1
RUN cd /usr/share/elasticsearch && \
    bin/elasticsearch-plugin install analysis-kuromoji && \
    bin/elasticsearch-plugin install --batch ingest-attachment
