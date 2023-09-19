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

call CheckBooking('2023-09-01', 12);

call AddValidBooking('2023-09-01', 8, 1, 1);

call AddBooking(18, 3, '2022-12-30', 9, 3);

call UpdateBooking(9, '2022-12-17');

call CancelBooking(18);





