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

SELECT * FROM products WHERE stock = 25;

SELECT * FROM products WHERE stock != 30;

SELECT * FROM products WHERE stock >= 25;

SELECT * FROM products WHERE stock != 30 AND name LIKE '%dua';

SELECT * FROM products WHERE stock != 25 AND price >= 100000;

SELECT * FROM products WHERE stock != 25 or price >= 100000;

select * FROM products WHERE NAME LIKE '%ua%';

SELECT * FROM products WHERE NAME NOT LIKE 'sepatu%';

SELECT * FROM products WHERE  description IS NULL;

SELECT * FROM products WHERE  price IS not NULL;

SELECT * FROM products WHERE stock BETWEEN 20 AND 35;

SELECT * FROM products WHERE price NOT BETWEEN 30000 AND 120000;

ALTER TABLE products
ADD COLUMN category ENUM ('fashion','daily');

UPDATE products SET category = 'fashion' WHERE CODE ='A0001';
UPDATE products SET category = 'daily' WHERE CODE ='A0002';
UPDATE products SET category = 'fashion' WHERE CODE ='B0001';
UPDATE products SET category = 'daily' WHERE CODE ='C0001';
UPDATE products SET category = 'daily' WHERE CODE ='C0002';

SELECT * FROM products WHERE category IN ('fashion','daily');

SELECT * FROM products WHERE code not IN ('B0001','A0001');

SELECT * FROM products 
WHERE name LIKE '%satu%' OR name LIKE '%dua%';

SELECT 
CODE AS kode,
NAME AS nama,
stock AS stok,
price AS harga
FROM products AS p;

SELECT 
CODE AS kode,
NAME AS nama,
stock AS stok,
price AS harga
FROM products;

SELECT * FROM products ORDER BY  stock ASC, NAME DESC;

SELECT * FROM products ORDER BY harga ASC;

SELECT * FROM products ORDER BY created_at ASC;

SELECT 15 + 15 AS tambah,

 15 / 15 AS kurang,

 15 % 2 AS modulus;

SELECT tan(7);

SELECT power(30,2); // pangkat

SELECT PI() * 7 * 7;

SELECT SIN(4);

SELECT COS(2);

SELECT * FROM products;

SELECT NAME, LOWER(NAME) FROM products;

SELECT NAME, upper(NAME) FROM products;

SELECT NAME, length(NAME) FROM products;

SELECT NAME, CODE, substring(code, 2) FROM products ORDER BY CODE DESC;

SELECT NAME, RIGHT(NAME, 4) FROM products;

SELECT NAME, LEFT(CODE, 1) FROM products;

SELECT * FROM products;

SELECT dayname(created_at) FROM products WHERE CODE ='B0001';

SELECT monthname(created_at) FROM products WHERE CODE ='B0001';

SELECT time(created_at) FROM products WHERE CODE ='B0001';

SELECT dayname(created_at) FROM products WHERE CODE ='B0001';

SELECT created_at, dayname(created_at) FROM products WHERE CODE ='B0001';

SELECT second(created_at) FROM products WHERE CODE ='B0001';

SELECT date(created_at) FROM products WHERE CODE ='B0001';

SELECT 
    DAY(created_at) AS hari, 
    MONTH(created_at) AS bulan, 
    YEAR(created_at) AS tahun,
    DAYNAME(created_at) AS nama_hari
FROM products
WHERE CODE ='B0001';

SELECT 
    CONCAT(
    DAYNAME(created_at), ', ',
        DAY(created_at), '/', 
        MONTH(created_at), '/', 
        YEAR(created_at)
    ) AS tanggal_lengkap
FROM products
WHERE CODE ='B0001';

SELECT CODE, NAME, case category 
	when 'Fashion' then 'Pakaian Pergi'
	when 'Daily' then 'Pakaian Harian'
END category_alias FROM products;

SELECT CODE, NAME, price,
	if(
	price < 100000, 'Terjangkau',
		if(price < 120000, 'Standar', 'Mahal'
	)
)
AS  keterangan FROM products;

update products set price = 110000 WHERE price >= 160000;

SELECT * FROM products;

UPDATE products SET price = 70000 WHERE NAME = 'Baju Satu';

SELECT MAX(price) FROM products;

SELECT COUNT(CODE) FROM products;

SELECT MIN(stock), NAME FROM products GROUP BY stock, name;

SELECT MIN(stock), name, category
FROM products
GROUP BY category, NAME;

SELECT NAME, stock
FROM products
WHERE stock = (SELECT MIN(stock) FROM products);

SELECT SUM(stock) FROM products;

SELECT AVG(price) FROM products;

SELECT SUM(price) / COUNT(CODE) FROM products;


SELECT category, sum(stock) AS jumlah FROM products GROUP BY category;

SELECT category, count(stock) AS jumlah FROM products GROUP BY category;

SELECT category, avg(stock) AS jumlah FROM products GROUP BY category HAVING jumlah > 1;

SELECT category, avg(stock) AS jumlah FROM products GROUP BY category HAVING COUNT(CODE) >= 1;