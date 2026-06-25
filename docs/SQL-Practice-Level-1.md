# Olist E-Commerce SQL Practice

# Level 1 – SQL Fundamentals (20 Questions)

**Focus:** SELECT, WHERE, ORDER BY, LIMIT, DISTINCT, Aggregations

---

1. Display all customers from São Paulo.
    
    ```sql
    SELECT * FROM ECOMMERCE.CUSTOMERS WHERE CUSTOMER_CITY = 'sao paulo';
    ```
    
2. Find the total number of customers.
    
    ```sql
    SELECT COUNT(*) AS TOTAL_CUSTOMERS FROM ECOMMERCE.CUSTOMERS;
    ```
    
3. Count the number of orders.
    
    ```sql
    SELECT COUNT(*) AS NO_OF_ORDERS FROM ECOMMERCE.ORDERS;
    ```
    
4. Find all delivered orders.
    
    ```sql
    SELECT * FROM ECOMMERCE.ORDERS WHERE UPPER(ORDER_STATUS) = UPPER('delivered');
    ```
    
5. List the top 20 most expensive products by price.
    
    ```sql
    SELECT PRODUCT_ID, PRICE FROM ECOMMERCE.ORDER_ITEMS ORDER BY PRICE DESC LIMIT 20;
    ```
    
6. Find the average freight cost.
    
    ```sql
    SELECT AVG(FREIGHT_VALUE) AS AVG_FREIGHT_COST FROM ECOMMERCE.ORDER_ITEMS;
    ```
    
7. Count customers by state.
    
    ```sql
    SELECT COUNT(*) AS TOTAL_CUSTOMERS, CUSTOMER_STATE 
    FROM ECOMMERCE.CUSTOMERS GROUP BY CUSTOMER_STATE ORDER BY CUSTOMER_STATE; 
    ```
    
8. Count sellers by state.
    
    ```sql
    SELECT DISTINCT S1.SELLER_STATE, 
    (SELECT COUNT(*) FROM ECOMMERCE.SELLERS S2
    WHERE S2.SELLER_STATE = S1.SELLER_STATE) AS COUNTT
    FROM ECOMMERCE.SELLERS S1;
    ```
    
9. Find the minimum and maximum product weight.
    
    ```sql
    SELECT MIN(PRODUCT_WEIGHT_G) AS MIN_PRODUCT_WEIGHT, 
    MAX(PRODUCT_WEIGHT_G) AS MAX_PRODUCT_WEIGHT FROM ECOMMERCE.PRODUCTS;
    ```
    
10. Display products with missing categories.
    
    ```sql
    SELECT * FROM ECOMMERCE.PRODUCTS WHERE (PRODUCT_CATEGORY_NAME IS NULL) 
    OR (PRODUCT_CATEGORY_NAME = '');
    ```
    
11. Count orders for each status.
    
    ```sql
    SELECT DISTINCT O1.ORDER_STATUS,
    (
    	SELECT COUNT(*) FROM ECOMMERCE.ORDERS O2 
    	WHERE LOWER(O2.ORDER_STATUS) = LOWER(O1.ORDER_STATUS)
    ) AS TOTAL_ORDERS_BY_STATUS
    FROM ECOMMERCE.ORDERS O1;
    ```
    
    **Note:** Less efficient because the subquery is evaluated repeatedly. Use “GROUP BY” for large tables.
    
    ```sql
    SELECT COUNT(*) AS TOTAL_ORDERS_BY_STATUS, ORDER_STATUS 
    FROM ECOMMERCE.ORDERS GROUP BY ORDER_STATUS;
    ```
    
12. Find orders placed in 2018.
    
    ```sql
    SELECT * FROM ECOMMERCE.ORDERS 
    WHERE EXTRACT(YEAR FROM ORDER_PURCHASE_TIMESTAMP) = 2018;
    ```
    
13. Find products heavier than 1 kg.
    
    ```sql
    SELECT * FROM ECOMMERCE.PRODUCTS WHERE PRODUCT_WEIGHT_G > 1000;
    ```
    
14. Find orders approved on the same day they were purchased.
    
    ```sql
    SELECT * FROM ECOMMERCE.ORDERS WHERE 
    EXTRACT(DAY FROM ORDER_PURCHASE_TIMESTAMP) = EXTRACT(DAY FROM ORDER_APPROVED_AT);
    ```
    
15. List distinct payment methods.
    
    ```sql
    SELECT DISTINCT PAYMENT_TYPE FROM ECOMMERCE.ORDER_PAYMENTS;
    ```
    
16. Count orders for each payment method.
    
    ```sql
    SELECT DISTINCT PAYMENT_TYPE,
    COUNT(*) OVER(PARTITION BY PAYMENT_TYPE)
    FROM ECOMMERCE.ORDER_PAYMENTS;
    ```
    
17. Find the average review score.
    
    ```sql
    SELECT AVG(REVIEW_SCORE) FROM ECOMMERCE.ORDER_REVIEWS;
    ```
    
18. Count reviews by rating.
    
    ```sql
    SELECT COUNT(REVIEW_SCORE) FROM ECOMMERCE.ORDER_REVIEWS;
    ```
    
19. Find customers whose city starts with 'S'.
    
    ```sql
    SELECT *  FROM ECOMMERCE.CUSTOMERS WHERE LOWER(CUSTOMER_CITY) LIKE 's%'; 
    ```
    
20. Find the total payment amount.

    ```sql
    SELECT SUM(PAYMENT_VALUE) FROM ECOMMERCE.ORDER_PAYMENTS;
    ```