use BlackBoma
go

1) list the products that generate the most sales
select Category,sum(total_sales) AS Total_sales from supermarket
group by Category
order by Total_sales Desc

2) list the top 5 states that generated the most sales
select top 5 state,sum(Total_sales) AS Total_sales,sum(profit) AS Total_profit from supermarket
group by state
order by Total_sales Desc

3) Which product didnot make profit
select product_id,product_name,sum(profit) AS Loss from supermarket
group by product_id,product_name
having sum(profit) < 0

4) list the products ordered on 11/8/2016
select count(product_id) AS TotalOrdered from supermarket
 where Order_Date = '11/8/2016'

5)list the customers that lives in Texas
select Customer_name,State from supermarket
where State = 'Texas'

6)Display the total number of customers
select count(Customer_id) AS TotalCustomers from supermarket

7)Display the customers that order furniture
select Customer_id,Customer_name,Category from supermarket
where category = 'furniure'

8) Total number of sales made in philadelphia
select city,count(total_sales) AS TotalSales from supermarket
where City = 'philadelphia'
group by City
order by TotalSales


9) Display the ship mode of product delivered to florida
select product_id,product_name,state,ship_mode from supermarket
where State = 'Florida'


10) which region made the highest sales
select Region,sum(Total_sales) AS Total_Region_Sales from supermarket
group by Region
order by Total_Region_Sales Desc










