CREATE TABLE coins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    symbol VARCHAR(20),
    UNIQUE KEY uk_name (name)
);

CREATE TABLE coin_prices (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    coin_id INT,
    price DECIMAL(18, 8),
    market_cap BIGINT,
    timestamp DATETIME NOT NULL,
    FOREIGN KEY (coin_id) REFERENCES coins(id),
    INDEX idx_coin_time (coin_id, timestamp)
)
PARTITION BY RANGE (YEAR(timestamp)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
