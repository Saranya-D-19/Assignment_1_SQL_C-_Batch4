--Task:1. Database Design: 

create database TechShop

use TechShop

create table Customers(
CustomerID int not null primary key identity,
FirstName varchar(100),
LastName varchar(100),
Email varchar(100),
Phone bigint,
Address varchar(max)
)

create table Products(
ProductID int not null primary key identity(101,1),
ProductName varchar(100),
Description varchar(max),
Price int
)

create table Orders(
OrderID int not null primary key identity(201,1),
CustomerID int,
OrderDate date,
TotalAmount int,
constraint fk_id foreign key (CustomerID) references Customers (CustomerID)
)

create table OrderDetails(
OrderDetailID int not null primary key identity(301,1),
OrderId int,
ProductID int,
Quantity int,
constraint fk_Oid foreign key (OrderID) references Orders (OrderID),
constraint fk_Pid foreign key (ProductID) references Products (ProductID)
)

create table Inventory(
InventoryId int not null primary key identity(401,1),
ProductID int,
QuantityInStock int,
LastStockUpdate date,
constraint fk_PRid foreign key (ProductID) references Products(ProductID)
)


select * from Customers -- where address='chennai'
select * from Products
select * from Orders
select * from OrderDetails
select * from Inventory

insert into Customers (FirstName, LastName, Email, Phone, Address) values 
('Saranya','Deenadayalan','sara@gmail.com','9867567890','Chennai'),
('Rinthiya','Vijayakumar','rin@gmail.com','6111567890','Selam'),
('Suvetha','Selvarpandi','suve@gmail.com','9222227890','Sivagangai'),
('Jessy','Aravind','jess@gmail.com','9867500222','Ooty'),
('Dharani','Kumar','dharu@gmail.com','98677777890','Thanjayur'),
('Swathi','kannan','swa@gmail.com','9867588888','Chennai'),
('Hema','sekar','hema@gmail.com','9454545450','Chennai'),
('Reshma','Khatoon','resh@gmail.com','9867567890','chennai'),
('Sabarish','Raaja','raaja@gmail.com','9867112230','Ooty'),
('Nithish','Roy','roy@gmail.com','9777708888','Chennai'),
('Valan','Raj','raj@gmail.com','9889898920','Selam'),
('Santhosh','Kumar','kumar@gmail.com','7878967890','Sivagangai')

insert into Products (ProductName, Description, Price) values 
('Wireless Earbuds', 'High-quality sound with noise cancellation.', 2999),
('Smartwatch', 'Stay connected with call, message, and fitness tracking.', 4499),
('Gaming Laptop', 'High-performance machine for gamers and creators.', 75000),
('Portable Blender', 'Compact USB rechargeable blender.', 1990),
('Bluetooth Speaker', 'Waterproof speaker with deep bass.', 3499),
('Mechanical Keyboard', 'RGB backlit keyboard with fast switches.', 4999),
('Fitness Tracker', 'Monitor heart rate, steps, and sleep.', 2999),
('Wireless Charger', 'Fast charging for all devices.', 1999),
('Noise Cancelling Headphones', 'Premium sound with active noise cancellation.', 8999),
('Smart LED Bulb', 'Adjust brightness and color with an app.', 1299),
('Smart Door Lock', 'Keyless entry with fingerprint and mobile app control.', 5999),  
('VR Headset', 'Immersive virtual reality experience for gaming and movies.', 12999)

insert into Orders (CustomerID, OrderDate, TotalAmount) values 
(1, '2025-03-01', 2999),  
(3, '2025-03-02', 75000),  
(5, '2025-03-03', 4499),  
(2, '2025-03-04', 1990),  
(7, '2025-03-05', 3499),  
(4, '2025-03-06', 5999),  
(9, '2025-03-07', 2999),  
(6, '2025-03-08', 1999),  
(8, '2025-03-09', 8999),  
(10, '2025-03-10', 1299),  
(11, '2025-03-11', 75000),  
(12, '2025-03-12', 12999) 

insert into OrderDetails (OrderID, ProductID, Quantity) values  
(201, 101, 2),  
(202, 103, 1),  
(203, 102, 1),  
(204, 104, 3),  
(205, 105, 1),  
(206, 106, 2),  
(207, 107, 1),  
(208, 108, 2),  
(209, 109, 1),  
(210, 110, 4),  
(211, 103, 1),  
(212, 102, 2) 

insert into Inventory (ProductID, QuantityInStock, LastStockUpdate) values  
(101, 50, '2025-03-10'),  
(102, 30, '2025-03-11'),  
(103, 20, '2025-03-12'),  
(104, 40, '2025-03-10'),  
(105, 25, '2025-03-09'),  
(106, 35, '2025-03-11'),  
(107, 45, '2025-03-12'),  
(108, 60, '2025-03-08'),  
(109, 15, '2025-03-13'),  
(110, 55, '2025-03-07'),  
(101, 48, '2025-03-14'),  
(102, 28, '2025-03-14')  

-- Task:2.Select,Where,between,AND,LIKE:

--1. Write an SQL query to retrieve the names and emails of all customers. 

select FirstName,LastName,Email from Customers

--2. Write an SQL query to list all orders with their order dates and corresponding customer names.
 

-- 3. Write an SQL query to insert a new customer record into the "Customers" table. Include customer information such as name, email, and address.
insert into Customers (FirstName, LastName, Email,Address) values ('Shraven','Ganesh','shra@gmail.com','Chennai')

--4. Write an SQL query to update the prices of all electronic gadgets in the "Products" table by increasing them by 10%.

update Products set price= price+(price/10)

-- 5. Write an SQL query to delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables. Allow users to input the order ID as a parameter.-- 6. Write an SQL query to insert a new order into the "Orders" table. Include the customer ID, order date, and any other necessary information.insert into Orders (CustomerID, OrderDate, TotalAmount) values (13, '2025-03-11', 1999)-- 7. Write an SQL query to update the contact information (e.g., email and address) of a specific customer in the "Customers" table. Allow users to input the customer ID and new contact information.update Customers set email='shraven@gmail.com',Address='Mumbai' where CustomerID=13-- 8. Write an SQL query to recalculate and update the total cost of each order in the "Orders" table based on the prices and quantities in the "OrderDetails" table-- 9. Write an SQL query to delete all orders and their associated order details for a specific customer from the "Orders" and "OrderDetails" tables. Allow users to input the customer ID as a parameter.-- 10. Write an SQL query to insert a new electronic gadget product into the "Products" table, including product name, category, price, and any other relevant detailsinsert into Products (ProductName, Description, Price) values ('Tab', 'High-quality visual eith easy accessibility.', 19888)--11. Write an SQL query to update the status of a specific order in the "Orders" table (e.g., from "Pending" to "Shipped"). Allow users to input the order ID and the new status.alter table Orders alter column status varchar(50)insert into Orders (status) values ('shipped') --12. Write an SQL query to calculate and update the number of orders placed by each customer in the "Customers" table based on the data in the "Orders" table.--Task 3. Aggregate functions, Having, Order By, GroupBy and Joins: