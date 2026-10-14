--1.Средний чек 
SELECT ROUND(SUM(amount)/COUNT(DISTINCT order_id),3) AS avg_check
FROM payments
WHERE status = 'paid'

--2.Самые часто продаваемые модели
SELECT
    p.product_name,
    SUM(oi.quantity) AS units_sold
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.status = 'completed'
GROUP BY p.product_name
ORDER BY units_sold DESC
LIMIT 7;ECT product_name 
M products 
N order_items 

  
--3. Самая лучшие бренды по выручке
SELECT
    p.brand,
    SUM(oi.price * oi.quantity) AS revenue,
    SUM(oi.quantity) AS units_sold
FROM products p
JOIN order_items oi
    ON oi.product_id = p.product_id
JOIN orders o
    ON o.order_id = oi.order_id
WHERE o.status = 'completed'
GROUP BY p.brand
ORDER BY revenue DESC
LIMIT 3;

-- 4.Самые часто встречающиеся города у пользователей
SELECT city, COUNT(*) AS count_
FROM users 
GROUP BY city 
ORDER BY count_ DESC 
LIMIT 3

--5. Самые популярные методы оплаты

SELECT payment_method, COUNT(*) AS count_of_pmt
FROM payments 
GROUP BY payment_method
ORDER BY count_of_pmt
LIMIT 3
