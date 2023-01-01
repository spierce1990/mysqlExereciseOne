-- find all products

SELECT * 
FROM products;

-- find all products that cost $1400

SELECT *
FROM products
WHERE price = 1400;

-- find all Macbooks
SELECT*
FROM products
WHERE Name = 'Macbook';
-- SELECT*
-- FROM products
-- WHERE Name = Macbook;

-- find all products that cost $11.99 or $13.99

SELECT*
FROM products
WHERE price = 11.99  or 13.99;


-- find all products that do NOT cost 11.99 - using NOT

SELECT * 
FROM products
WHERE price  = 11.99 = 0;

-- find all products and sort them by price from greatest to least

SELECT *
FROM products
 order by price DESC;



-- find all employees who don't have a middle initial
SELECT*
FROM employees
WHERE MiddleInitial IS null;

-- find distinct product prices
 SELECT DISTINCT price, name
FROM products;

-- find all employees whose first name starts with the letter ‘j’
 SELECT* FROM employees
WHERE FirstName LIKE 'j%';



-- find all products that are on sale
SELECT*	 FROM products
WHERE  onsale = 1;

-- find the average price of all products
SELECT AVG(price)
FROM products;

-- find all Geek Squad employees who don't have a middle initial
SELECT*
FROM employees
WHERE MiddleInitial = null
AND Title Like '%Geeksquad%';
-- SELECT* 
-- FROM employees


-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT* 
FROM products
WHERE StockLevel between 500 AND 1200 order by price asc;


