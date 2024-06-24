FROM mysql

EXPOSE 3306

# 컨테이너 시작 시 MySQL 서버를 실행합니다.
CMD ["mysqld"]