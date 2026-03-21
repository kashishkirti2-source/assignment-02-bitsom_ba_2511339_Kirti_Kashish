CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(100)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(12,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


INSERT INTO dim_date VALUES
(1, '2023-01-15', 1, 2023),
(2, '2023-02-20', 2, 2023),
(3, '2023-03-10', 3, 2023),
(4, '2023-04-05', 4, 2023),
(5, '2023-05-18', 5, 2023);

INSERT INTO dim_store VALUES
(1, 'Mumbai Central', 'Mumbai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Bangalore MG', 'Bangalore'),
(4, 'Chennai Anna', 'Chennai'),
(5, 'Pune FC Road', 'Pune');

INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Jeans', 'Clothing'),
(3, 'Rice 5kg', 'Grocery'),
(4, 'Smartwatch', 'Electronics'),
(5, 'T-Shirt', 'Clothing');

INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 42343.15, 84686.30),
(2, 2, 2, 2, 5, 2317.47, 11587.35),
(3, 3, 3, 3, 3, 52195.05, 156585.15),
(4, 4, 4, 4, 1, 58851.01, 58851.01),
(5, 5, 5, 5, 4, 29770.19, 119080.76),
(6, 1, 2, 1, 1, 42343.15, 42343.15),
(7, 2, 3, 2, 6, 2317.47, 13904.82),
(8, 3, 4, 3, 2, 52195.05, 104390.10),
(9, 4, 5, 4, 3, 58851.01, 176553.03),
(10, 5, 1, 5, 2, 29770.19, 59540.38);
