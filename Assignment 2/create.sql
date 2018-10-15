CREATE TABLE users(
id int NOT NULL AUTO_INCREMENT,
name char(50) NOT NULL,
email varchar(50) UNIQUE,
pass char(8),
PRIMARY KEY(id)
);

create table user_types(
id int NOT NULL,
type varchar(50),
user_id int,
FOREIGN KEY (user_id) REFERENCES users(id)
);

create table products(
id int(50) NOT NULL,
name varchar(50),
PRIMARY KEY(id)
);

create table variants(
id int NOT NULL,
color varchar(50),
size varchar(50),
price double(50,2),
product_id int(50),
PRIMARY KEY(id),
FOREIGN KEY (product_id) REFERENCES products(id)
);


create table carts(
id int(50) NOT NULL,
product_id int(50),
variant_id int(50),
quantity int(50),
price double(50,2),
user_id int(50),
PRIMARY KEY(id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (product_id) REFERENCES products(id),
FOREIGN KEY (variant_id) REFERENCES variants(id)
);

create table discounts(
id int(50) NOT NULL,
discount_type varchar(50),
amount double(50,2),
PRIMARY KEY(id)
);

create table orders(
id int(50) NOT NULL,
user_id int(50),
total_price double(50,2),
address varchar(50),
discount_id int(50),
PRIMARY KEY(id),
FOREIGN KEY (discount_id) REFERENCES discounts(id),
FOREIGN KEY (user_id) REFERENCES users(id)
);

create table payments(
id int(50) NOT NULL,
order_id int(50),
paymode varchar(50),
paystatus varchar(50),
paydate Date,
PRIMARY KEY(id),
FOREIGN KEY (order_id) REFERENCES orders(id)
);

