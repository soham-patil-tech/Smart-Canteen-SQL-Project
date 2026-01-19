CREATE DATABASE smart_canteen;
USE smart_canteen;

CREATE TABLE students (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  department VARCHAR(50)
);

CREATE TABLE food_items (
  food_id INT PRIMARY KEY AUTO_INCREMENT,
  food_name VARCHAR(100),
  price INT,
  category VARCHAR(50)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  order_date DATE,
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  food_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (food_id) REFERENCES food_items(food_id)
);

CREATE TABLE payments (
  payment_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  amount INT,
  payment_mode VARCHAR(20),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
