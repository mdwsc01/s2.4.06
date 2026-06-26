CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,   
    product_name NVARCHAR(100) NOT NULL,  
    category NVARCHAR(50),              
    price DECIMAL(15, 2),                
    quantity INT                          
);

INSERT INTO products (product_id, product_name, category, price, quantity)
VALUES 
('SP001', N'Laptop Dell Inspiron', N'Laptop', 14500000, 10),
('SP002', N'Samsung Galaxy S24', N'Phone', 18900000, 5),
('SP003', N'Laptop Asus Vivobook', N'Laptop', 12000000, 0), 
('SP004', N'iPad Air 5', N'Tablet', 13500000, 7),
('SP005', N'Samsung Galaxy Tab', N'Tablet', 6500000, 3);

SELECT * FROM products 
WHERE price BETWEEN 5000000 AND 15000000;

SELECT * FROM products 
WHERE category IN (N'Laptop', N'Tablet');

SELECT * FROM products 
WHERE product_name LIKE N'Sam%';

SELECT * FROM products 
WHERE category <> N'Phone';

SET SQL_SAFE_UPDATES = 0;

UPDATE products 
SET price = price * 0.95 
WHERE category = N'Laptop';

SELECT * FROM products WHERE category = N'Laptop';

DELETE FROM products 
WHERE quantity = 0;

SET SQL_SAFE_UPDATES = 1;
SELECT * FROM products;