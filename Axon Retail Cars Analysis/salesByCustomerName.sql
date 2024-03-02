select customerName,sum(orderdetails.quantityOrdered*orderdetails.priceEach) as sales from orderdetails
    join orders
on orderdetails.orderNumber=orders.orderNumber join customers on
    orders.customerNumber = customers.customerNumber group by customerName order by sales desc limit 10;
    
