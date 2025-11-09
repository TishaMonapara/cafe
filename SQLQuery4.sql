-- Add categories
INSERT INTO add_cat (CategoryName) VALUES ('Pizza');
INSERT INTO add_cat (CategoryName) VALUES ('Burger');
INSERT INTO add_cat (CategoryName) VALUES ('Dessert');
INSERT INTO add_cat (CategoryName) VALUES ('Beverage');

-- Add products
INSERT INTO add_prod (Name, Category, Price, Description, Image, Availability)
VALUES 
('Margherita Pizza', 'Pizza', 299.00, 'Classic cheese pizza with tomato base', '../images/pizza.jpg', 'Available'),
('Veg Burger', 'Burger', 149.00, 'Crispy veg patty with lettuce and mayo', '../images/burger.jpg', 'Available'),
('Chocolate Cake', 'Dessert', 120.00, 'Rich chocolate layered cake', '../images/cake.jpg', 'Unavailable');
