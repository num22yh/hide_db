-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS hide_db;

-- 데이터베이스 사용
USE hide_db;

-- 테이블 생성: users
CREATE TABLE IF NOT EXISTS users (
    users_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    user_email VARCHAR(255) NOT NULL UNIQUE,
    user_id VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_nickname VARCHAR(255) NOT NULL UNIQUE,
    role VARCHAR(255) DEFAULT 'ROLE_NONE' NOT NULL,
    alarm_cycle INT DEFAULT 30 NOT NULL,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    `delete` TINYINT DEFAULT 0 NOT NULL,
    login_at TIMESTAMP NULL
);

-- 테이블 생성: files
CREATE TABLE IF NOT EXISTS files (
    files_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    file_name VARCHAR(255) NOT NULL,
    content TEXT,
    file_type VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    users_id INT NOT NULL,
    FOREIGN KEY (users_id) REFERENCES users(users_id)
);

-- 테이블 생성: messages
CREATE TABLE IF NOT EXISTS messages (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    content TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    sender_id INT NOT NULL,
    FOREIGN KEY (sender_id) REFERENCES users(users_id)
);

-- 테이블 생성: activity
CREATE TABLE IF NOT EXISTS activity (
    activity_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    users_id INT NOT NULL,
    point INT DEFAULT 0 NOT NULL,
    level INT DEFAULT 1 NOT NULL,
    last_point_update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (users_id) REFERENCES users(users_id)
);
