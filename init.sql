-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS hide_db;

-- 데이터베이스 사용
USE hide_db;

-- 테이블 생성
CREATE TABLE IF NOT EXISTS demo_entity (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- 초기 데이터 삽입
INSERT INTO demo_entity (id, name) VALUES (1, 'TEST');
