-- Create a Table for Order Reviews
CREATE TABLE ECOMMERCE.ORDER_REVIEWS(
	review_id VARCHAR(50),
	order_id VARCHAR(50) NOT NULL,
	review_score INT CHECK (review_score BETWEEN 1 AND 5), 
	review_comment_title VARCHAR(255),
	review_comment_message TEXT,
	review_creation_date TIMESTAMP,
	review_answer_timestamp TIMESTAMP,
	CONSTRAINT fk_order_id FOREIGN KEY(order_id) REFERENCES ECOMMERCE.ORDERS(order_id)
)

