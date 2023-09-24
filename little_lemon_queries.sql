select Customers.CustomerID, Customers.CustomerName as FullName, Orders.OrderID, Orders.Cost, 
Menus.Name as MenuName, MenuItems.CourseName, MenuItems.StarterName
from Orders 
inner join Customers on Orders.CustomerID = Customers.CustomerID
inner join Menus on Orders.OrderID = Menus.MenuID
inner join MenuItems on Orders.MenuItemID = MenuItems.MenuItemID
where Orders.Cost > 150;

select Name as MenuName from Menus  where MenuID = any (select MenuID from Orders where Quantity > 2);

call GetMaxQuantity();

prepare GetOrderDetails from 'select OrderID, Quantity, Cost from Orders where CustomerID = ?';
set @id = 2;
execute GetOrderDetails using @id;

call CancelOrder(5);




