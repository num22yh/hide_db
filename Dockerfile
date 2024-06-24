FROM mysql

# 초기 데이터베이스를 설정하기 위한 SQL 파일 복사
COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

# 컨테이너 시작 시 MySQL 서버를 실행합니다.
CMD ["mysqld"]