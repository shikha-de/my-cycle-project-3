CREATE DATABASE channels;
USE channels;
/* question - 1*/
select distinct sales_channel AS channel_name
from vrinda_sales
where sales_channel like "Ama%" 
limit 5;
/* question - 2*/
select distinct category as category
from vrinda_products
where category like "%kurta%"
limit 10;

/* question - 3*/

select ship_city as ship_name,
       order_id as order_status,
       sales_channel as channel_name,
       amount as sale_id
	from vrinda_sales
    where order_status = "delivered"
       and sales_channel like "%a%"
	order by amount desc 
    limit 10;
    
    /*question - 4*/
    
    select distinct
       ship_city as city_name
    from vrinda_sales
    where order_status = "Delivered"
      and ship_state like "%PRADESH%"
	order by city_name asc
    limit 10;
    
    /* question - 5*/
    
    select distinct order_id as order_number,
       sales_channel as channel,
       amount as sale_amount
    from vrinda_sales
    where sales_channel in ("M", "T")
      and amount between 1500 and 12000
	order by amount desc 
    limit 10;
       