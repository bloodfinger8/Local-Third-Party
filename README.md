# local Third Party

### 개발 환경 설정용 docker compose 파일
- mariadb:10.3.35     : 3306
- zookeeper:3.8.0     : 2181
- wurstmeister/kafka  : 9092
- elasticsearch       : 9200
- kibana:7.17.5       : 5601
- redis:6.2.11        : 6379

### 관련 파일
- user.sql: maria db 실행후 사용자 권한 추가 스크립트가 포함됨
- db: maria DB 파일이 저장되는 곳
- es: elastic search data 들이 저장되는 곳
- es.Dockerfile: elasticsearch 빌드용 docker file
- userdic_ko_unique.txt, cus_synonyms.txt: elasticsearch analyzer 용 파일

### docker-compose 커맨드
- docker-compose up: 컨테이너 생성 및 실행
- docker-compose down: 컨테이너 종료 및 삭제
- docker-compose start: 컨테이너 실행
- docker-compose stop: 컨테이너 종료
- docker-compose ps: 실행중인 컨테이너 조회

### 초기 데이터 설정 방법
- DB
  - user.sql을 사용하여 사용자의 권한 변경
  - db dump 파일
- ES
  - es_schema.sh 파일을 실행하여 맵핑생성
  - dam-server/app-batch-rebuild-search-index 실행하여 DB 데이터와 Elasitcsearch 데이터 동기화 
