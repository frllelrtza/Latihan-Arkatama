CREATE TABLE products(
CODE VARCHAR(200) NOT NULL,
NAME VARCHAR(200) NOT NULL,
DESCRIPTION TEXT,
price DECIMAL(15,2) NOT NULL DEFAULT 0,
stock INT NOT NULL DEFAULT 0,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(CODE)
);

INSERT INTO products(CODE, NAME, price, stock)
VALUES('B0001', 'Sepatu Satu', 100000, 10),
('B0004', 'Sepatu Dua', 120000, 12);

SELECT * FROM products;

INSERT INTO products(CODE, NAME, price, stock)
VALUES('A0001', 'Baju Satu', 130000, 10);


INSERT INTO products(CODE, NAME, price, stock)
VALUES('A0002', 'Baju Dua', 130000, 10);

DESC TABLE products;

SELECT * FROM products;

SELECT CODE, NAME, price, stock FROM products;

SELECT CODE, NAME, price, stock from products WHERE price >= 100000;

INSERT INTO products(CODE, NAME, price, stock)
VALUES('C0001', 'Tas Satu', 70000, 5),
('C0002', 'Tas Dua', 80000, 15),
('C0003', 'Tas Tiga', 75000, 5);

SELECT CODE, NAME, price, stock from products WHERE price <= 100000;

SELECT NAME, price, stock FROM products WHERE stock <= 10;

UPDATE products SET stock = 25 WHERE CODE  = "A0001";

UPDATE products SET stock = 25;

SELECT * FROM products;

UPDATE products SET stock = 30 WHERE NAME like 'baju%';

SELECT NAME, CODE, stock FROM products WHERE stock=25;

UPDATE products SET price = 100000 WHERE name LIKE 'dua';

SELECT * FROM products;

UPDATE products SET price = 100000 WHERE name LIKE '%dua';



UPDATE products SET price = 150000 WHERE name LIKE '%satu';

UPDATE products SET price = price - 30000 WHERE price <= 150000;

DELETE from products WHERE NAME = 'tas tiga';

DELETE from products WHERE NAME = 'sepatu dua';