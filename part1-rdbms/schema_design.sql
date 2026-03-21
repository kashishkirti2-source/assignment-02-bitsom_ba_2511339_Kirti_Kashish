-- Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE Sales_Reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address VARCHAR(200) NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    sales_rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE Order_Items (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);




-- Insert into Customers
INSERT INTO Customers VALUES
('C001', 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai'),
('C002', 'Priya Sharma', 'priya@gmail.com', 'Delhi'),
('C003', 'Amit Verma', 'amit@gmail.com', 'Bangalore'),
('C004', 'Sneha Iyer', 'sneha@gmail.com', 'Chennai'),
('C005', 'Vikram Singh', 'vikram@gmail.com', 'Mumbai');

-- Insert into Products
INSERT INTO Products VALUES
('P001', 'Laptop', 'Electronics', 55000),
('P002', 'Mouse', 'Electronics', 800),
('P003', 'Desk Chair', 'Furniture', 8500),
('P004', 'Notebook', 'Stationery', 120),
('P005', 'Headphones', 'Electronics', 3200);

-- Insert into Sales_Reps
INSERT INTO Sales_Reps VALUES
('SR01', 'Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ'),
('SR02', 'Anita Desai', 'anita@corp.com', 'Delhi Office'),
('SR03', 'Ravi Kumar', 'ravi@corp.com', 'Bangalore Office'),
('SR04', 'Karan Shah', 'karan@corp.com', 'Mumbai HQ'),
('SR05', 'Meera Nair', 'meera@corp.com', 'Chennai Office');

-- Insert into Orders
INSERT INTO Orders VALUES
('ORD1001', 'C001', 'SR01', '2023-01-10'),
('ORD1002', 'C002', 'SR02', '2023-02-15'),
('ORD1003', 'C003', 'SR03', '2023-03-20'),
('ORD1004', 'C004', 'SR01', '2023-04-05'),
('ORD1005', 'C005', 'SR02', '2023-05-18');

-- Insert into Order_Items
INSERT INTO Order_Items VALUES
('ORD1001', 'P001', 1),
('ORD1002', 'P002', 2),
('ORD1003', 'P003', 1),
('ORD1004', 'P004', 5),
('ORD1005', 'P005', 2);
