INSERT INTO students (name, department)
VALUES
('Amit Patil','BCA'),
('Sneha Kulkarni','BBA');

INSERT INTO food_items (food_name, price, category)
VALUES
('Samosa',15,'Snack'),
('Veg Thali',60,'Meal'),
('Cold Coffee',40,'Drink');

INSERT INTO orders (student_id, order_date)
VALUES
(1,'2026-01-15'),
(2,'2026-01-15');

INSERT INTO order_items (order_id, food_id, quantity)
VALUES
(1,1,2),
(1,3,1),
(2,2,1);

INSERT INTO payments (order_id, amount, payment_mode)
VALUES
(1,70,'UPI'),
(2,60,'Cash');
