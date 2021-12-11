DROP DATABASE Products;

CREATE DATABASE Products;

CREATE TABLE product(
	product_number int PRIMARY KEY NOT NULL,
	category varchar(20) NOT NULL CHECK
	 (category IN ('Office', 'Health', 'Sports', 'Child Care', 'Digital Devices')),
	color VARCHAR(20) NOT NULL DEFAULT 'Black',
	features varchar(255) NOT NULL DEFAULT ' ',
	product_name varchar(50) NOT NULL DEFAULT '<EMPTY>',
	product_price FLOAT(2),
	stock INT DEFAULT 0,
	product_type varchar(255) NOT NULL CHECK (product_type IN ('Slotted', 'Dimensional'))


);
