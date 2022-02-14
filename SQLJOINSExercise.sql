/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT 
    P.Name AS ProductName, C.Name AS CategoryName
FROM
    products AS P
        INNER JOIN
    categories AS C ON C.CategoryID = P.CategoryID
WHERE
    C.Name = "Computers"; 
    
    SELECT products.Name, categories.Name
    From products
    INNER JOIN categories on categories.CategoryID = products.CategoryID
    WHERE categories.Name = "Computers";
    
    SELECT * FROM products;
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT products.Name, products.Price, reviews.Rating
FROM products
 INNER JOIN reviews ON reviews.ProductID = products.ProductID
 WHERE reviews.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, Sum(s.Quantity) AS Total
FROM sales AS s
INNER JOIN employees AS e ON e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order by Total DESC
LIMIT 2;

select *from sales
where EmployeeID = 33089;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.Name as 'Department Name', c.Name as 'Category Name' FROM 	departments as d
INNER JOIN categories as c ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Nam, Sum(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnit) as 'Total Price'
 From products as p
 INNER JOIN sales as s on s.ProductID = p.ProductID
 WHERE p.ProductID = 97;
 
 select *from sales where ProductID = 97;
 
 select p.Name, r.Reviewer, MIN(r.Rating), r.Comment
 from products as p
 INNER JOIN reviews as r on r.ProductID = p.ProductID
 WHERE p.ProductID = 857 and r.Rating = 1;
 
 
 
 
 
 
 
 
 
 
 
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
