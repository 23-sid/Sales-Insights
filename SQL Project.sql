
##Show all customer records
SELECT * FROM customers;

##Show total number of customers
SELECT count(*) FROM customers;

##Show total number of customers
SELECT count(*) FROM transactions;

##show distict currency
SELECT distinct currency FROM transactions;


##To know the market code for specific regions
SELECT * FROM sales.markets;


##Show transactions for Chennai market (market code for chennai is Mark001
SELECT * FROM transactions where market_code='Mark001';

#total sales for Chennai
SELECT sum(transactions.sales_amount) FROM transactions where market_code='Mark001';


##Show distrinct product codes that were sold in chennai
SELECT distinct product_code FROM transactions where market_code='Mark001';

##Show transactions where currency is US dollars
SELECT * from transactions where currency="USD";


##Show transactions in 2020 join by date table
SELECT transactions.*, date.* FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020;


##Show total revenue in year 2020,
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020;

##show all tranasactions from January 2020
SELECT transactions.*, date.* FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020 and date.month_name="January";


##Show total revenue in year 2020, January Month,
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020 and date.month_name="January";

##Show total revenue in year 2020, March Month,
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020 and date.month_name="March";


##Show total revenue in year 2020 in Chennai
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";



