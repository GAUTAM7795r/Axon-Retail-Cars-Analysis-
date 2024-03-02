create view total_sales as select orders.orderNumber,products.productCode,year(orders.orderDate) as year,
                                orders.shippedDate,products.productName,products.productLine,
                                products.productScale from orders join orderdetails
                                on orders.orderNumber = orderdetails.orderNumber join products on
                                orderdetails.productCode=products.productCode;
SELECT * FROM classicmodels.total_sales;