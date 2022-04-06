--write a query to display the orders placed by customer with phone number 9823241234
SELECT * FROM Customer
WHERE Phone ='9823241234'

--fetching all the products which are available under Category ‘Router’.

SELECT * FROM Product
WHERE ProductName='Router'

--Display the orders placed by customers not in London

SELECT * FROM Customer
WHERE City NOT IN('LONDON')

--selects all the order which are placed for the product TV.

SELECT * FROM Product
WHERE ProductName ='Tv'

--Write a query to display the name , department name and rating  of any given employee

SELECT E.NAME AS EMP_NAME , D.DeptName AS DEPT_NAME,E.RATING
FROM Employee E INNER JOIN Dept D
ON E.DEPTID=D.DEPTID















