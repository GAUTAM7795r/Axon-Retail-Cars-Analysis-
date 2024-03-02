select productName,sum(orderdetails.quantityOrdered*orderdetails.priceEach) as sales from orderdetails join products
on orderdetails.productCode=products.productCode join orders on orderdetails.orderNumber = orders.orderNumber
        where year(orders.orderDate)='2005' group by productName order by sales desc limit 5;
        
