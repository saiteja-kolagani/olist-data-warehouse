-- Create a Table for Customers;
CREATE TABLE ecommerce.customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_unique_id VARCHAR(50) NOT NULL,
    customer_zip_code_prefix INTEGER NOT NULL,
    customer_city VARCHAR(100),
    customer_state CHAR(2)
);

