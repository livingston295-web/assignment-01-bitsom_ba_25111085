CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day INT NOT NULL,
    month INT NOT NULL,
    month_name VARCHAR(20) NOT NULL,
    quarter INT NOT NULL,
    year INT NOT NULL
);

CREATE TABLE dim_store (
    store_key INT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    store_city VARCHAR(50) NOT NULL
);

CREATE TABLE dim_product (
    product_key INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE fact_sales (
    sales_key INT PRIMARY KEY,
    date_key INT NOT NULL,
    store_key INT NOT NULL,
    product_key INT NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    units_sold INT NOT NULL,
    revenue DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key),
    FOREIGN KEY (store_key) REFERENCES dim_store(store_key),
    FOREIGN KEY (product_key) REFERENCES dim_product(product_key)
);

INSERT INTO dim_date (date_key, full_date, day, month, month_name, quarter, year) VALUES
(20230115, '2023-01-15', 15, 1, 'January', 1, 2023),
(20230205, '2023-02-05', 5, 2, 'February', 1, 2023),
(20230220, '2023-02-20', 20, 2, 'February', 1, 2023),
(20230331, '2023-03-31', 31, 3, 'March', 1, 2023),
(20230809, '2023-08-09', 9, 8, 'August', 3, 2023),
(20230829, '2023-08-29', 29, 8, 'August', 3, 2023),
(20231026, '2023-10-26', 26, 10, 'October', 4, 2023),
(20231208, '2023-12-08', 8, 12, 'December', 4, 2023),
(20231212, '2023-12-12', 12, 12, 'December', 4, 2023),
(20230918, '2023-09-18', 18, 9, 'September', 3, 2023);

INSERT INTO dim_store (store_key, store_name, store_city) VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Mumbai Central', 'Mumbai'),
(4, 'Bangalore MG', 'Bangalore'),
(5, 'Pune FC Road', 'Pune');

INSERT INTO dim_product (product_key, product_name, category, unit_price) VALUES
(1, 'Speaker', 'Electronics', 49262.78),
(2, 'Tablet', 'Electronics', 23226.12),
(3, 'Phone', 'Electronics', 48703.39),
(4, 'Smartwatch', 'Electronics', 58851.01),
(5, 'Headphones', 'Electronics', 39854.96),
(6, 'Atta 10kg', 'Groceries', 52464.00),
(7, 'Oil 1L', 'Groceries', 26474.34),
(8, 'Pulses 1kg', 'Groceries', 31604.47),
(9, 'Saree', 'Clothing', 35451.81),
(10, 'Jeans', 'Clothing', 2317.47);

INSERT INTO fact_sales (sales_key, date_key, store_key, product_key, customer_id, units_sold, revenue) VALUES
(1, 20230829, 1, 1, 'CUST045', 3, 147788.34),
(2, 20231212, 1, 2, 'CUST021', 11, 255487.32),
(3, 20230205, 1, 3, 'CUST019', 20, 974067.80),
(4, 20230220, 2, 2, 'CUST007', 14, 325165.68),
(5, 20230115, 1, 4, 'CUST004', 10, 588510.10),
(6, 20230809, 4, 2, 'CUST012', 5, 116130.60),
(7, 20230331, 5, 10, 'CUST030', 9, 20857.23),
(8, 20231026, 3, 5, 'CUST010', 4, 159419.84),
(9, 20231208, 2, 9, 'CUST015', 6, 212710.86),
(10, 20230918, 2, 2, 'CUST020', 14, 325165.68);
CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day INT NOT NULL,
    month INT NOT NULL,
    month_name VARCHAR(20) NOT NULL,
    quarter INT NOT NULL,
    year INT NOT NULL
);

CREATE TABLE dim_store (
    store_key INT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    store_city VARCHAR(50) NOT NULL
);

CREATE TABLE dim_product (
    product_key INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE fact_sales (
    sales_key INT PRIMARY KEY,
    date_key INT NOT NULL,
    store_key INT NOT NULL,
    product_key INT NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    units_sold INT NOT NULL,
    revenue DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key),
    FOREIGN KEY (store_key) REFERENCES dim_store(store_key),
    FOREIGN KEY (product_key) REFERENCES dim_product(product_key)
);

INSERT INTO dim_date (date_key, full_date, day, month, month_name, quarter, year) VALUES
(20230115, '2023-01-15', 15, 1, 'January', 1, 2023),
(20230205, '2023-02-05', 5, 2, 'February', 1, 2023),
(20230220, '2023-02-20', 20, 2, 'February', 1, 2023),
(20230331, '2023-03-31', 31, 3, 'March', 1, 2023),
(20230809, '2023-08-09', 9, 8, 'August', 3, 2023),
(20230829, '2023-08-29', 29, 8, 'August', 3, 2023),
(20231026, '2023-10-26', 26, 10, 'October', 4, 2023),
(20231208, '2023-12-08', 8, 12, 'December', 4, 2023),
(20231212, '2023-12-12', 12, 12, 'December', 4, 2023),
(20230918, '2023-09-18', 18, 9, 'September', 3, 2023);

INSERT INTO dim_store (store_key, store_name, store_city) VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Mumbai Central', 'Mumbai'),
(4, 'Bangalore MG', 'Bangalore'),
(5, 'Pune FC Road', 'Pune');

INSERT INTO dim_product (product_key, product_name, category, unit_price) VALUES
(1, 'Speaker', 'Electronics', 49262.78),
(2, 'Tablet', 'Electronics', 23226.12),
(3, 'Phone', 'Electronics', 48703.39),
(4, 'Smartwatch', 'Electronics', 58851.01),
(5, 'Headphones', 'Electronics', 39854.96),
(6, 'Atta 10kg', 'Groceries', 52464.00),
(7, 'Oil 1L', 'Groceries', 26474.34),
(8, 'Pulses 1kg', 'Groceries', 31604.47),
(9, 'Saree', 'Clothing', 35451.81),
(10, 'Jeans', 'Clothing', 2317.47);

INSERT INTO fact_sales (sales_key, date_key, store_key, product_key, customer_id, units_sold, revenue) VALUES
(1, 20230829, 1, 1, 'CUST045', 3, 147788.34),
(2, 20231212, 1, 2, 'CUST021', 11, 255487.32),
(3, 20230205, 1, 3, 'CUST019', 20, 974067.80),
(4, 20230220, 2, 2, 'CUST007', 14, 325165.68),
(5, 20230115, 1, 4, 'CUST004', 10, 588510.10),
(6, 20230809, 4, 2, 'CUST012', 5, 116130.60),
(7, 20230331, 5, 10, 'CUST030', 9, 20857.23),
(8, 20231026, 3, 5, 'CUST010', 4, 159419.84),
(9, 20231208, 2, 9, 'CUST015', 6, 212710.86),
(10, 20230918, 2, 2, 'CUST020', 14, 325165.68);
