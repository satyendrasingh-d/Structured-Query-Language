                     # Assignment 04 #
use company;
create table Sales(SalesID int, ProductID int, CustomerID int, SalesDate date, Quentity int, UnitePrice int, Region varchar(50));
insert into Sales(SalesID, ProductID, CustomerID, SalesDate, Quentity, UnitePrice, Region)
values(1,101,1001,"2024-01-05",5,200,"North"),
      (2,102,1002,"2024-01-10",10,150,"East"),
      (3,103,1003,"2024-02-15",2,300,"North"),
      (4,104,1001,"2024-02-20",7,250,"West"),
      (5,101,1004,"2024-03-05",1,200,"East");
# Que 1. Write a query to calculate the total sales (Quentity*UnitePrice) for each product. 
select ProductID, sum(Quentity*UnitePrice) as 'TotalSales' from sales group by ProductID order by TotalSales;

# Que 2. Write a query to find the total number of products sold in each region. 
select Region, sum(Quentity) as 'TotalProduct' from Sales group by Region order by TotalProduct;

# Que 3. Write a query to get the average Sales amount per product. 
select productID, avg(Quentity*UnitePrice) as 'Average Sales Amount' from sales group by ProductID;

# Que 4. Regions where total sales are more than 3000. 
select Region, sum(Quentity*UnitePrice) as 'Total Sales' from sales group by Region having sum(Quentity*UnitePrice)>3000;

# Que 5. Write a query to get the maximum quantity sold for each product. 
select ProductID, max(Quentity) as 'max Quentity Sold' from sales group by ProductID ;

# Que 6. Write a query to calculate the average Quentity of the Product sold per region. 
select Region, avg(Quentity)from sales group by region ;

# Que 7. Find the Product IDs that have generated total sales amount of more than 1000. 
Select ProductID, sum(Quentity*UnitePrice) as 'Total Sales' from Sales group by ProductID having sum(Quentity*UnitePrice)>1000 ;

# Que 8. write a query to get the Total number of sales (Row) made for each customer. 
Select CustomerID, sum(Quentity*UnitePrice) as 'Quentity Sold' from sales group by CustomerID ;

# Que 9. Fint the Product for which the average quentity sold is less then 5. 
select ProductID, avg(Quentity) as 'Quentity Sold' from Sales group by ProductID having avg(Quentity)<5 ;

# Que 10. Write a query to Find the sum of total sales for each customer in each Region. 
select CustomerID, sum(Quentity*UnitePrice) as 'Total Sales' from sales group by CustomerID ;

# Que 11. Write a query to calculate the total sales for each month. 
select salesdate, sum(Quentity*UnitePrice) as 'Total Sales' from sales group by Salesdate ;

# Que 12. Find the Region where the average Unite Price is more then 200. 
select Region, avg(UnitePrice) from sales group by region having avg(UnitePrice)>200 ;

# Que 13. Write a query to get the minimum and maximum quentity sold per region. 
select Region, max(Quentity) as 'Max Quentity Sold', min(Quentity) as 'Min Quentity Sold' from Sales group by Region ;

# Que 14. Find the customers who have made more then 2 purcharse. 
select CustomerID, Quentity as Purchase from Sales where Quentity >2 ;

# Que 15. Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500. 
select productID, sum(Quentity*UnitePrice) as 'Total Sales' from Sales group by ProductID having sum(Quentity*UnitePrice)> 1500 ;


