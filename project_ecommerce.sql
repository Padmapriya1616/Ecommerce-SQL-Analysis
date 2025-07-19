use ecommerce_analysis;
select * from orders;

SELECT Payment_Method, 
       SUM((`Final_Price(Rs.)`)) AS total_revenue
FROM `orders`
GROUP BY Payment_Method
ORDER BY total_revenue DESC;


SELECT Category, 
       AVG(`Discount(%)`) AS average_discount
FROM `orders`
GROUP BY Category
ORDER BY average_discount DESC
LIMIT 10;

SELECT User_ID, 
       SUM(`Final_Price(Rs.)`) AS total_spent
FROM `orders`
GROUP BY User_ID
ORDER BY total_spent DESC
LIMIT 10;

SELECT Category, 
       AVG(`Final_Price(Rs.)`) AS average_final_price
FROM `orders`
GROUP BY Category
ORDER BY average_final_price DESC;

SELECT DATE_FORMAT(STR_TO_DATE(`Purchase_Date`, '%d-%m-%Y'), '%Y-%m') AS month, 
       SUM(`Final_Price(Rs.)`) AS monthly_revenue
FROM `orders`
WHERE STR_TO_DATE(`Purchase_Date`, '%d-%m-%Y') >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY month
ORDER BY month;





