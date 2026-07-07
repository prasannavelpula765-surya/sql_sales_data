


CREATE TABLE sales (
  Order_id      VARCHAR2(20),
  Amount        NUMBER(10,2), -- up to 10 digits, 2 decimals
  profit       number(10,5),
  Quantity      NUMBER(5),
  Category      VARCHAR2(20),
  Sub_Category  VARCHAR2(20),
  PaymentMode   VARCHAR2(20),
  Order_Date    DATE,
  CustomerName  VARCHAR2(30),
  State         VARCHAR2(20),
  City          VARCHAR2(20),
  Year_Month    DATE
);
update sales set profit = Profit ;
alter sales set profit = Profit;
alter table sales rename column profit to Revinu;
alter table sales rename column Revinu to Profit;
select * from sales;
alter table sales rename column Revinu to Profit;
alter table sales rename column a to Year_Month;
alter table sales drop column Year_Month;


select
extract (YEAR from order_date) 
as year,
extract (MONTH from order_date) 
as month,
sum(Amount) as Total_revenue,
count(Distinct Order_id ) as Quantity 
from sales
where extract(YEAR from order_date)=2024
group by 
extract (YEAR from order_date),
extract (MONTH from Order_date)
Order by 
year,
month;

SELECT Order_id, Amount, CustomerName
FROM sales
ORDER BY Amount DESC;

select Order_id, Amount, CustomerName
From sales 
Order by amount asc;

select Amount,city
from sales
order by quantity asc;

select paymentmode from sales 
 where paymentmode like '%UPI%';
 
 
select Category,
count(paymentmode)as total  from sales 
group by category;

//total  profit revenu of the year 2026
select sum(profit) as total_revenue from sales;

//totals order of the year 
select count (distinct order_id) as total_orders from sales;

//product wise revenue
select Sub_Category,
sum(amount) as revenue
from sales
group by Sub_Category
order by revenue desc;

//state wise revenue
select state,
sum(amount) as revenue
from sales 
group by state
order by revenue desc;

//category total orders
select category,
count(distinct order_id) as total_orders
from sales 
group by category
order by total_orders desc;


//category total orders
select category,
count( order_id) as total_orders
from sales 
group by category
order by total_orders desc;

SELECT Order_id, Amount, Order_Date
FROM sales
WHERE Order_Date BETWEEN TO_DATE('17-05-2020','YYYY-MM-DD')
                     AND TO_DATE('2026-07-31','YYYY-MM-DD')
ORDER BY Order_Date ASC;

SELECT Order_id, Amount, Order_Date
FROM sales
WHERE Order_Date >= TO_DATE('2026-07-01','YYYY-MM-DD')
  AND Order_Date <= TO_DATE('2026-07-15','YYYY-MM-DD')
ORDER BY Amount DESC;


SELECT Order_id, Amount, Order_Date
FROM sales
WHERE Order_Date >= TO_DATE('2026-07-01','YYYY-MM-DD')
ORDER BY Amount DESC
FETCH FIRST 5 ROWS ONLY;


