INSERT INTO students (name, department)
VALUES
('Amit Patil','BCA'),
('Sneha Kulkarni','BBA'),
('Rahul Deshmukh','BCA');

INSERT INTO food_items (food_name, price, category)
VALUES
('Samosa',20,'Snack'),
('Veg Thali',65,'Meal'),
('Cold Coffee',45,'Drink'),
('Poha',25,'Snack');

INSERT INTO orders (student_id, order_date)
VALUES
(1,'2026-01-16'),
(2,'2026-01-16'),
(3,'2026-01-17');

INSERT INTO order_items (order_id, food_id, quantity)
VALUES
(1,1,2),
(1,3,1),
(2,2,1),
(3,4,2),
(3,1,1);

INSERT INTO payments (order_id, amount, payment_mode)
VALUES
(1,85,'UPI'),
(2,65,'Cash'),
(3,65,'Card');
