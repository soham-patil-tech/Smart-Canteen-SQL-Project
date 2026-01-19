-- Daily total sales
SELECT order_date, SUM(amount) AS total_sales
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY order_date;

-- Most sold food item
SELECT f.food_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN food_items f ON oi.food_id = f.food_id
GROUP BY f.food_name
ORDER BY total_sold DESC;

-- Student-wise spending
SELECT s.name, SUM(p.amount) AS total_spent
FROM students s
JOIN orders o ON s.student_id = o.student_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY s.name;
