CREATE table users (
id INT(20) NOT NULL,
user_name VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
pass VARCHAR(50) NOT NULL,
user_type VARCHAR(50),
CHECK (LENGTH(pass) <=8),
CHECK (user_name LIKE '%^[a-zA-Z]%'),
PRIMARY KEY(id)
);


CREATE table orders (
order_id INT(20) NOT NULL,
shipping_code INT(20) NOT NULL,
total_cost INT(20) NOT NULL,
CHECK (order_id LIKE '%[^a-zA-Z0-9]%'),
PRIMARY KEY(order_id)
);


CREATE table products (
product_id INT(20) NOT NULL,
product_name VARCHAR(20) NOT NULL,
product_cost INT(20) NOT NULL,
CHECK (product_cost LIKE '%[0-9]%'),
PRIMARY KEY(product_id)
);

CREATE table colors (
color_id INT(20) NOT NULL,
color_name VARCHAR(20) NOT NULL,
PRIMARY KEY(color_id)
);
