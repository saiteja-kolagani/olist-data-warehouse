-- Create a Table for Customers' Geolocations;
create table ecommerce.geolocation(
	geolocation_zip_code_prefix INT,
	geolocation_lat DOUBLE PRECISION,
	geolocation_lng DOUBLE PRECISION,
	geolocation_city VARCHAR(50),
	geolocation_state VARCHAR(10)
)

