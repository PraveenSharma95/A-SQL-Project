create database my_project;
use my_project
create table login_logs(
login_log_id int,
user_id int,
login_time datetime
);
drop login_logs;

select count(*) from login_logs;

-----No of user (2022) -----
select user_id, count(*) as Numbers_of_login, login_time from  login_logs

group by user_id, login_time
order by login_time ;




-------daily conversion rate-----

select fk_buyer_id, count(order_id) as Numbers_of_orders from sales_orders
where year(creation_time)=2021
group by fk_buyer_id,creation
order by Numbers_of_orders desc;





---DAILY LOGINS-----

