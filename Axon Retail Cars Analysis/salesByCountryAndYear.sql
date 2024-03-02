select country,sum(orderdetails.quantityOrdered*orderdetails.priceEach) as sales from orderdetails
    join orders
on orderdetails.orderNumber=orders.orderNumber join customers on
    orders.customerNumber = customers.customerNumber
   where year(orders.orderDate)='2004' group by country order by sales desc limit 10;
   