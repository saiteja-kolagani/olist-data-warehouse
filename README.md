# Olist Brazilian E-Commerce Data Warehouse

## Project Overview

This project demonstrates the design and implementation of a PostgreSQL-based data warehouse using the Olist Brazilian E-Commerce Dataset from Kaggle.

The objective of this project is to understand relational database design, implement primary and foreign key relationships, load CSV data into PostgreSQL tables, and build a foundation for advanced SQL analytics and data engineering workflows.

## Dataset

Dataset: Olist Brazilian E-Commerce Public Dataset

The dataset contains information about customers, products, sellers, orders, payments, reviews, and geolocation details collected from a Brazilian e-commerce marketplace.

## Project Architecture

Kaggle CSV Files
&rarr;
PostgreSQL Database
&rarr;
Ecommerce Schema
&rarr;
Relational Tables
&rarr;
SQL Analytics & Reporting

## Database Objects Created

### Database

* olist_db

### Schema

* ecommerce

### Tables

* customers
* geolocation
* products
* product_category_name_translation
* sellers
* orders
* order_items
* order_payments
* order_reviews

## Implementation Approach

### 1. Customers

The customers table represents the end users of the e-commerce platform. Every business transaction originates from a customer purchase.

### 2. Geolocation

The geolocation table stores customer location information based on zip code prefixes and enables geographical analysis.

### 3. Products

The products table contains information about items available for purchase on the platform.

### 4. Product Category Translation

Product categories in the Olist dataset are stored in Portuguese. This mapping table translates category names into English for easier analysis.

### 5. Sellers

The sellers table contains merchant information responsible for fulfilling customer orders.

### 6. Orders

The orders table captures all purchase transactions made by customers.

### 7. Order Items

The order_items table stores the individual products associated with each order and acts as the bridge between orders and products.

### 8. Order Payments

The order_payments table stores payment information including payment method, installment details, and payment value.

### 9. Order Reviews

The order_reviews table stores customer feedback and ratings after order delivery.

## Key Concepts Implemented

* Database Design
* Schema Design
* Primary Keys
* Foreign Keys
* Referential Integrity
* Data Loading using CSV Files
* PostgreSQL DDL
* Relational Modeling

## Documentation

Detailed project documentation, data model, table definitions, relationships, loading process, and SQL analysis can be found here:

**Notion Documentation:** Null

## Technologies Used

* PostgreSQL
* SQL
* Git
* GitHub
* pgAdmin
* Notion
