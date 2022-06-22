--1.
select ProductID, Name, Color, ListPrice
from Production.Product

--2. 
select ProductID, Name, Color, ListPrice
from Production.Product
where ListPrice != 0

--3.
select ProductID, Name, Color, ListPrice
from Production.Product
where Color is not Null

--4.
select ProductID, Name, Color, ListPrice
from Production.Product
where Color is not Null AND ListPrice > 0

--5.
select Name + ' ' + Color as Combination
from Production.Product
where Color is not Null

--6. 
select Name, Color
from Production.Product
where Color in ('Black', 'Silver')

--7.
select ProductID, Name
from Production.Product
where ProductID between 400 and 500

--8. 
select ProductID, Name, Color
from Production.Product
where Color = 'Black' or  Color = 'Blue'

--9. 
select ProductID, Name, Color, ListPrice
from Production.Product
where Name like 'S%'

--10. 
select Name, ListPrice
from Production.Product
where Name like 'A%' or Name like 'S%'
order by Name

--11.
select Name
from Production.Product
where Name like 'SPO[^k]%'
Order by Name

--12.
Select Distinct ISNULL(ProductSubcategoryID, 0), ISNULL(Color, 'No Color')
from Production.Product 
