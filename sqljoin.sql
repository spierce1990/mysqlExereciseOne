/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT products.Name AS 'Products Name', categories.Name AS 'Category Name'
FROM products
INNER JOIN categories ON categories.CategoryID = products.CategoryID
WHERE categories.Name = 'Computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

SELECT products.Name AS 'Product Name', products.Price AS 'Product Price' , reviews.Rating
FROM products
JOIN reviews ON products.ProductID = reviews.ProductID
WHERE rating = 5;

 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT employees.FirstName , employees.LastName , Sum(sales.Quantity) AS total
FROM sales
INNER JOIN employees
ON employees.EmployeeID = sales.EmployeeID
GROUP by employees.EmployeeID
ORDER BY total DESC
LIMIT 2;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name AS 'Department Name', c.Name AS 'Category Name'
FROM departments AS d
INNER JOIN categories AS c
ON d.DepartmentID = c.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 SELECT products.NAME, SUM(sales.Quantity)
 FROM products
INNER JOIN SALES
ON sales.productID = products.ProductID
WHERE products.ProductID = 97;

 SELECT *  FROM SALES  WHERE ProductID = 97;
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.reviewer, r.rating, r.Comment
FROM  products AS p
INNER JOIN reviews AS r
ON r.ProductID = p.ProductID
WHERE p.ProductID = 857 AND r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
