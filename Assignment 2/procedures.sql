delimiter $$
create or replace trigger passcheck before insert on users
for each row
begin
if new.user_password='' then
signal sqlstate '45000'
end if;
end;
$$

delimiter //
CREATE procedure  orderprocess()
begin
INSERT INTO Product_Order(id,product_id,variant_id,quantity,price,user_id);
SELECT id,product_id,variant_id,quantity,price,user_id FROM cart;
DELETE FROM cart;
end //


delimiter //
CREATE procedure  pro_order()
begin
INSERT INTO Product_Order(id,product_id,variant_id,quantity,price,user_id);
SELECT id,product_id,variant_id,quantity,price,user_id FROM cart;
DELETE FROM cart;
end //

delimiter //
create procedure payprocess(in t_id int,in o_id int,in pay_mode varchar(10),in pay_status varchar(10),in u_id INT,in address varchar(20),in d_id INT)
begin
DECLARE total int;
SELECT SUM(price) INTO total FROM cart;
INSERT INTO orders values(o_id,u_id,total,address,d_id,current_date());
INSERT INTO payment values(t_id,o_id,pay_mode,pay_status,current_date());
call pro_order();
end //



DELIMITER //
CREATE or replace procedure emptycart()
BEGIN
TRUNCATE TABLE cart
END //
DELIMITER ;

CREATE VIEW orderdetail AS SELECT o.id, o.total,p.transaction_date,d.amount,p.payment_mode,p.payment_status 
FROM payment p,orders o,discounts d 
WHERE d.id=o.discount_id and p.order_id=o.id;






