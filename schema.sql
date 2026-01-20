CREATE DATABASE smart_canteen;
USE smart_canteen;

CREATE TABLE students (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  department VARCHAR(50) NOT NULL
);

CREATE TABLE food_items (
  food_id INT PRIMARY KEY AUTO_INCREMENT,
  food_name VARCHAR(100) NOT NULL,
  price DECIMAL(6,2) NOT NULL CHECK (price > 0),
  category VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT NOT NULL,
  order_date DATE NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT NOT NULL,
  food_id INT NOT NULL,
  quantity INT NOT NULL CHECK (quantity > 0),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (food_id) REFERENCES food_items(food_id)
);

CREATE TABLE payments (
  payment_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT NOT NULL,
  amount DECIMAL(7,2) NOT NULL CHECK (amount >= 0),
  payment_mode VARCHAR(20) NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE INDEX idx_orders_date ON orders(order_date);
CREATE INDEX idx_order_items_food ON order_items(food_id);
CREATE INDEX idx_payments_order ON payments(order_id);
