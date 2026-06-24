-- Create a Table for Order_Items;
CREATE TABLE ECOMMERCE.ORDER_ITEMS(
	order_id VARCHAR(50),
	order_item_id INT,
	product_id VARCHAR(50),
	seller_id VARCHAR(50),
	shipping_limit_date TIMESTAMP,
	price NUMERIC(7,2),
	freight_value NUMERIC(5,2),
	PRIMARY KEY (order_id, order_item_id),
	CONSTRAINT fk_order_id FOREIGN KEY(order_id) REFERENCES ECOMMERCE.ORDERS(order_id),
	CONSTRAINT fk_product_id FOREIGN KEY(product_id) REFERENCES ECOMMERCE.PRODUCTS(product_id),
	CONSTRAINT fk_seller_id FOREIGN KEY(seller_id) REFERENCES ECOMMERCE.SELLERS(seller_id)
);
