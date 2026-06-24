-- Create a Table for Order Payments
CREATE TABLE ECOMMERCE.ORDER_PAYMENTS(
	order_id VARCHAR(50),
	payment_sequential INT NOT NULL,
	payment_type VARCHAR(50) NOT NULL, 
	payment_installments INT NOT NULL,
	payment_value NUMERIC(10,2),
	CONSTRAINT fk_order_id FOREIGN KEY(order_id) REFERENCES ECOMMERCE.ORDERS(order_id),
	PRIMARY KEY(order_id, payment_sequential)
)

