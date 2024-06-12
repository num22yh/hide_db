
FROM mysql

# 초기 데이터베이스를 설정하기 위한 SQL 파일 복사
COPY init.sql /docker-entrypoint-initdb.d/


EXPOSE 3306