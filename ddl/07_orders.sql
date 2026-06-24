-- Create a Table for Orders Tracking;
CREATE TABLE ECOMMERCE.ORDERS(
	order_id VARCHAR(50) PRIMARY KEY,
	customer_id VARCHAR(50) NOT NULL,
	order_status VARCHAR(30),
	order_purchase_timestamp TIMESTAMP,
	order_approved_at TIMESTAMP,
	order_delivered_carrier_date TIMESTAMP,
	order_delivered_customer_date TIMESTAMP,
	order_estimated_delivery_date TIMESTAMP,
	CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES ECOMMERCE.CUSTOMERS(CUSTOMER_ID)
);
