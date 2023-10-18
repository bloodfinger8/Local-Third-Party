FROM elasticsearch:7.17.5

WORKDIR /usr/share/elasticsearch

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-nori
COPY ./userdic_ko_unique.txt /usr/share/elasticsearch/config/
COPY ./cus_synonyms.txt /usr/share/elasticsearch/config/
COPY ./elasticsearch.yml /usr/share/elasticsearch/config/
