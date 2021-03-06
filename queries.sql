-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select 
    p.productname name,
    c.categoryname name
from product p
join category c
    on p.categoryid = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select 
    o.id, s.companyname
from 'order' o
join shipper s
  on s.id = o.ShipVia
where orderdate < '2012-08-09'


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select 
    p.productname, od.quantity
from 'orderdetail' od
join product p
  on od.ProductId = p.Id
where od.orderid = 10251
order by p.productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select 
  o.id as 'orderNumber', 
  c.companyname as 'companyName', 
  e.lastname as 'employeeLastName'
from 'order' o
join 'employee' e
  on o.EmployeeId = e.Id
join 'customer' c
  on o.CustomerId = c.Id
