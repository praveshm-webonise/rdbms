delimiter //
CREATE procedure  product_order_process()
begin
	INSERT INTO Product_Order(id,product_id,variant_id,quantity,price,user_id) 
	SELECT id,product_id,variant_id,quantity,price,user_id
	FROM cart;

	DELETE FROM cart;
end
//
delimeter ;

drop procedure payment_process;

delimiter //
create procedure payment_process(in t_id int,in o_id int,in pay_mode varchar(10),in pay_status varchar(10),in u_id INT,in address varchar(20),in d_id INT)
begin

DECLARE total int;

    SELECT SUM(price) INTO total FROM cart;
    INSERT INTO orders values(o_id,u_id,total,address,d_id,current_date());
    INSERT INTO payment values(t_id,o_id,pay_mode,pay_status,current_date());
    call product_order_process();
end
//
delimiter ;



call payment_process(100000,1000000,'Debit','Success',10,'Pune',11);



CREATE VIEW view_orders AS SELECT o.id, o.total,p.transaction_date,d.amount,p.payment_mode,p.payment_status 
FROM payment p,orders o,discounts d 
WHERE d.id=o.discount_id and p.order_id=o.id;

