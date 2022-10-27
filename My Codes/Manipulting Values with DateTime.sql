-- Manipulting Values DateTime
SELECT 
GETDATE() As DateTimeseries,
DueDate,
ShipDate,
DATEDIFF(DAY,Shipdate,DueDate) AS DaysShppedAndDueDate,
DATEDIFF(HOUR,Shipdate,DueDate) AS HoursShppedAndDueDate,
DATEADD(DAY,10,DueDate) AS DueDatePlus10Days
FROM
FactInternetSales