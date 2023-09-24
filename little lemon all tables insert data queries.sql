INSERT INTO Customers(CustomerID, CustomerName, PhoneNumber, Address, CustomerEmail) 
VALUES
(1,'John Doe','555-1234','Old Q Road, Gartwick, Houston 1L','johndoe@email.com'),
(2,'Jane Doe','555-2345','Trust Park Insight Venue, Washington 1L','janedoe@email.com'),
(3,'Alice Baker','555-3456','New Cresent Road, New York 1L','alicebaker@email.com'),
(4,'Bob Marley','555-4567','New Guranty Trust Close, Illinous 1L','bobmarley@email.com'),
(5,'Charlie Chaplain','555-5678','Wuse Market Road, Abuja','charliechaplain@email.com'),
(6,'David Bombal','555-6789','New Guranty Trust Close, Illinous 1L','davidbombal@email.com'),
(7,'Emily Rose','555-7890','3-5 Harvesters Drive, Liberty Road','emilyrose@email.com'),
(8,'Frank Edwards','555-8901','Old Joyce B Road, Mobil, Ring Road','frankedwards@email.com'),
(9,'Grace Harper','555-9012','Ariseekola Building, Lister Road, Ibadan ','graceharper@email.com'),
(10,'Hannah Suker','555-0123','39 Opatoki Street, Alakia, Ibadan','hannahsuker@email.com');

INSERT INTO Staff(StaffID, StaffName, StaffEmail, StaffAddress, StaffContactNumber, Role, AnnualSalary)
VALUES
(1, 'Sarah Asher', 'sarahasher@littlelemon.com', '724, Parsley Lane, Old Town, Chicago', 351258074, 'Manager', 55000),
(2, 'Tom Cruise', 'tomcruise@littlelemon.com', '334, Dill Square, Lincoln Park, Chicago', 351342134, 'Waiter', 30000),
(3, 'Linda Roff', 'lindaroff@littlelemon.com', '879 Sage Street, West Loop, Chicago', 351980546, 'Chef', 40000),
(4, 'Robert Hood', 'roberthood@littlelemon.com', '132  Bay Lane, Chicago', 351852231, 'Cashier', 31000),
(5, 'Daniel Walter', 'danielwalter@littlelemon.com', '989 Thyme Square, EdgeWater, Chicago', 351222444, 'Waiter', 32000),
(6, 'Susan Colt', 'susancolt@littlelemon.com', '245 Dill Square, Lincoln Park, Chicago', 351214580, 'Hostess', 28000),
(7, 'Chris Arman', 'chrisarman@littlelemon.com', '386 Bunn Garden, Old Wells, Chicago', 351864321, 'Manager', 60000),
(8, 'Jessica Jones', 'jessicajones@littlelemon.com', '111 Liberty Road, Fun Center, Chicago', 351531135, 'Chef', 38000),
(9, 'Brian Holmes', 'brianholmes@littlelemon.com', '432 Drill Corner, Chicago', 351567875, 'Waiter', 29000),
(10, 'Kim Ocid', 'kimocid@littlemon.com', '289, Harvesters Drive, Chicago', 351230614, 'Hostess', 27000);

INSERT INTO MenuItems(MenuItemID, CourseName, StarterName, DessertName)
VALUES
(1,'Grilled Chicken','Caesar Salad','Cheesecake'),
(2,'Beef Steak','Tomato Soup','Chocolate Mousse'),
(3,'Vegetarian Pizza','Garlic Bread','Fruit Salad'),
(4,'Spaghetti Carbonara','Bruschetta','Tiramisu'),
(5,'Fish and Chips','Coleslaw','Apple Pie'),
(6,'Sushi Platter','Miso Soup','Green Tea Ice Cream'),
(7,'BBQ Ribs','Cornbread','Peach Cobbler'),
(8,'Chicken Curry','Samosas','Gulab Jamun'),
(9,'Lobster Tail','Oysters','Key Lime Pie'),
(10,'Vegan Burger','Sweet Potato Fries','Vegan Brownie');

INSERT INTO Menus(MenuID, MenuItemID, Name, Type, Cuisine, Price)
VALUES
(1,1,'Cheese Burger','Main','Greek',10),
(2,2,'Veggie Burger','Main','Greek',9),
(3,3,'French Fries','Side','Greek',3),
(4,4,'Caesar Salad','Main','Italian',8),
(5,5,'Chicken Wings','Appetizer','Italian',6),
(6,6,'Coca Cola','Drink','Italian',2),
(7,7,'Pasta','Main','Italian',11),
(8,8,'Rice','Side','Italian',4),
(9,9,'Margarita','Drink','Turkish',5),
(10,10,'Ice Cream','Dessert','Turkish',4);

INSERT INTO Bookings(BookingID, CustomerID, TableNumber, StaffID, BookingSlot)
VALUES 
(1,1,10,1,'2023-09-01 12:00:00'),
(2,2,12,2,'2023-09-01 12:30:00'),
(3,3,14,3,'2023-09-02 13:00:00'),
(4,4,16, 4,'2023-09-02 14:00:00'),
(5,5,18,5,'2023-09-03 15:00:00'),
(6,6,20,6,'2023-09-03 16:00:00'),
(7,7,22,7,'2023-09-04 17:00:00'),
(8,8,24,8,'2023-09-04 18:00:00'),
(9,9,18,8,'2023-09-08 18:00:00'),
(10,10,28,10,'2023-09-05 20:00:00'),
(11,1,5,1,'2022-10-10 00:00:00'),
(12,3,3,2,'2022-11-12 00:00:00'),
(13,2,2,3,'2022-10-11 00:00:00'),
(14,1,2,1,'2022-10-13 00:00:00'),
(15,1,5,1,'2022-10-11 00:00:00'),
(16,1,5,2,'2022-10-10 00:00:00');

INSERT INTO Orders(OrderID, MenuID, BookingID, CustomerID, MenuItemID, StaffID, Quantity, Cost)
VALUES
(1,1,1,1,1,2,1,171),
(2,2,2,2,2,1,2,174),
(3,3,3,3,3,3,3,358),
(4,4,4,4,4,4,4,265),
(5,5,5,5,5,5,4,265),
(6,6,6,6,6,6,5,465),
(7,7,7,7,7,7,6,65),
(8,8,8,8,8,8,7,437),
(9,9,10,9,9,9,8,484),
(10,10,11,10,10,10,1,111);

INSERT INTO DeliveryStatus(DeliveryID, OrderID, Date, Status)
VALUES 
(1,1,'2023-09-01 12:15:00','Delivered'),
(2,2,'2023-09-01 12:45:00','Preparing'),
(3,3,'2023-09-02 13:15:00','Preparing'),
(4,4,'2023-09-02 14:15:00','Out for delivery'),
(5,5,'2023-09-02 15:15:00','Out for delivery'),
(6,6,'2023-09-03 16:15:00','Delivered'),
(7,7,'2023-09-04 17:15:00','Preparing'),
(8,8,'2023-09-04 18:15:00','Delivered'),
(9,9,'2023-09-05 19:15:00','Delivered'),
(10,10,'2023-09-05 20:15:00','Delivered');
