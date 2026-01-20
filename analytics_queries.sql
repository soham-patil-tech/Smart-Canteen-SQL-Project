-- Daily total sales
SELECT o.order_date, SUM(p.amount) AS total_sales
FROM orders o
INNER JOIN payments p ON o.order_id = p.order_id
GROUP BY o.order_date
ORDER BY o.order_date DESC;

-- Most sold food item
SELECT f.food_name, SUM(oi.quantity) AS total_sold
FROM food_items f
INNER JOIN order_items oi ON f.food_id = oi.food_id
GROUP BY f.food_name
ORDER BY total_sold DESC
LIMIT 1;


-- Student-wise spending
SELECT s.student_id, s.name, SUM(p.amount) AS total_spent
FROM students s
INNER JOIN orders o ON s.student_id = o.student_id
INNER JOIN payments p ON o.order_id = p.order_id
GROUP BY s.student_id, s.name
ORDER BY total_spent DESC;

