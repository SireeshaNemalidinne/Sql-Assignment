--Display the details from Customer table who is from country Germany

SELECT * FROM Customer
WHERE Country= 'GERMANY';

SELECT * FROM Order

update Order
set OrderDate='20220402'
where OrderId=3

CREATE TABLE Employee(
EmployeeId int IDENTITY(1,1) PRIMARY KEY,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(40),);



INSERT INTO Employee(FirstName,LastName,City,Country,Phone)
VALUES ('Bhaskar','Kumar','Ananthapur','INDIA','9839553390'),
('Simran','kumari','Kurnool','INDIA','7639293390'),
('Sujeet','Singh','Bihar','INDIA','8240074321'),
('Priyanka','Joshi','Delhi','INDIA','8894561230'),
('Rahul','Kumar','Banglore','INDIA','7834567890');

--Display the  full name of the employee  

SELECT * FROM Employee
--Display the  customer details  who has Fax number

SELECT * FROM Customer 
WHERE FaxNumber like '[+]%'or FaxNumber like '%-%'

--display the customer details whose name holds second letter as U

SELECT * FROM Customer
WHERE LastName LIKE '%U'

--select order Details where unit price is greater than 10 and less than 20

SELECT * FROM OrderItem
WHERE UnitPrice > 10 AND UnitPrice < 20

--Display order details which contains shipping date and arrange the order by date

SELECT OrderDate AS SHIPPING_DATE 
FROM Order
ORDER BY OrderDate ASC

--Print the orders shipped by ship name 'La corned'abondance' between 2 dates(Choose dates of your choice)

SELECT ShipName
FROM Order
where ShipName =''La corned abondance' AND'OrderDate BETWEEN '2022-04-02' AND '2022-04-05' 
ORDER BY OrderDate ASC

--Print the products supplied by 'Exotic Liquids'

SELECT * FROM Product
WHERE Package ='EXOTIC LIQUIDS'

--print the average quantity ordered for every product

SELECT AVG(UnitPrice) AS Avg_UnitPrice
FROM OrderItem
GROUP BY ProductId

--Print all the Shipping company name and the ship names if they are operational

SELECT ShipCompany, ShipName
From ShippingTable
Where Operational = 'yes'

--Print all Employees with Manager Name

SELECT E.NAME AS EMPLOYEE_NAME,M.NAME AS MANAGER_NAME
FROM Employee E JOIN Employee M
ON E.MANAGER=M.MANAGER

--Print the bill for a given order id .bill should contain Productname, Categoryname,price after discount

SELECT OI.OrderId,P.ProductName,P.Category,P.Discount
FROM Product P INNER JOIN OrderItem OI
ON P.ProductId=OI.ProductId

--Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name

SELECT SUM(UnitPrice) As Total,CompanyName 
FROM Product
GROUP BY ProductSupplied
having ProductSupplied ='exotic liquids' and UnitPrice >50;