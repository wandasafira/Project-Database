--SOAL E 
--SOAL 1
/*
2440116031 - Nadzla Andrita Intan Ghayatrie 
2440109556 - Wanda Safira 
2440110886 - Vincent
*/

USE cArDorm


SELECT
	 CustomerName='Mrs. '+CustomerName, 
	 CustomerGender= UPPER(CustomerGender),
	 [TotalTransaction]= COUNT(TransactionID)
FROM MsCustomer mc
JOIN MsTransaction mt
ON mc.CustomerID=mt.CustomerID
WHERE CustomerGender = 'FEMALE' AND CustomerName LIKE '%[ ]%'
GROUP BY CustomerName,UPPER(CustomerGender)

--SOAL 2 
SELECT 
		CarID,
		CarName,
		[CarBrandName]= BrandName,
		CarPrice,
		[Total of Car That Has Been Sold]= CONCAT(SUM(Quantity),' Cars')
FROM MsCar mc
JOIN MsBrand mb
ON Mc.BrandID=mb.BrandID
JOIN MsTransaction mt
ON mt.CarSold=mc.CarID
WHERE CarPrice>300000000 AND (RIGHT(CarID,3)%2)= 1
GROUP BY CarID,CarName,BrandName,CarPrice
HAVING SUM(Quantity)>1

--SOAL 3

SELECT
	StaffID=REPLACE(ms.StaffID,'ST','Staff '),
	StaffName,
	[Total Transaction Handled]=COUNT(TransactionID),
	[Maximum Quantity in One Transaction]= SUM(Quantity)
FROM MsStaff ms
JOIN MsTransaction mt
ON ms.StaffID=mt.StaffID
JOIN MsCar mc
ON MC.CarID=mt.CarSold
WHERE MONTH(TransactionDate)= 4 AND StaffName LIKE '%[ ]%'
GROUP BY ms.StaffID,StaffName
HAVING COUNT(TransactionID)>1
ORDER BY SUM(Quantity)DESC

--SOAL 4
SELECT
	CustomerName,
	CustomerGender,
	[Total Purchase]=COUNT(TransactionID),
	[Total of Car That Has Been Purchased]= SUM(Quantity)
FROM MsCustomer mc
JOIN MsTransaction mt
ON mc.CustomerID=mt.CustomerID
WHERE CustomerEmail LIKE'%@gmail.com'
GROUP BY CustomerName,CustomerGender
HAVING SUM(Quantity)>2 

--SOAL 5
SELECT
	VendorName=REPLACE(VendorName,'PT','Peseroan Terbatas'),
	VendorPhoneNumber,
	[Purchase ID Number]=RIGHT(PurchaseID,3),
	mp.QuantityPurchase	
FROM MsVendor mv
JOIN MsPurchase mp
ON mv.VendorID=mp.VendorID,
(
	SELECT 
	Average=AVG(QuantityPurchase)
	FROM MsPurchase
)x
WHERE mp.QuantityPurchase>x.Average AND VendorName LIKE '%a%'

--SOAL 6
SELECT 
	[Name]= UPPER(BrandName+' '+CarName),
	[Price]= CONCAT('Rp. ',CAST(CarPrice AS BIGINT)),
	Stock= CONCAT(CarStock,' Stocks') 
FROM MsBrand mb
JOIN MsCar mc
ON mb.BrandID=mc.BrandID,
(	SELECT
	Average=AVG(CAST(CarPrice AS BIGINT))
	FROM MsCar
)x
WHERE CarPrice>x.Average AND CarName LIKE '%e%'

--SOAL 7 
SELECT 
	[CarID Number]=RIGHT(CarID,3),
	CarName,
	[Brand]=UPPER(BrandName),
	Price=CONCAT('Rp. ',CAST(CarPrice AS BIGINT)),
	[Total of car that has been sold]=SUM(QuantityPurchase)
FROM MsCar mc
JOIN MsBrand mb
ON mc.BrandID=mb.BrandID
JOIN MsPurchase mp
ON mp.CarPurchased=mc.CarID,
(
	SELECT 
	AVERAGE=AVG(QuantityPurchase) 
	FROM MsPurchase
)X
WHERE mp.QuantityPurchase>x.AVERAGE AND mc.CarPrice>200000000 AND mc.CarName LIKE '%o%'
GROUP BY MC.CarID,CarName,BrandName,CarPrice




--SOAL 8
SELECT	[Staff First Name]=SUBSTRING(StaffName, 0, CHARINDEX(' ', StaffName) +1),	[Staff Last Name]=SUBSTRING(StaffName, CHARINDEX(' ', StaffName)+1, LEN(StaffName) - CHARINDEX(' ', StaffName)),	[Total of Car That Has Been Sold]=SUM(QuantityPurchase)FROM MsStaff msJOIN MsPurchase mpON ms.StaffID=mp.StaffID,(	SELECT AVG(QuantityPurchase) as ave FROM MsPurchase)xWHERE StaffName LIKE '% %' AND QuantityPurchase > x.aveGROUP BY StaffName


--SOAL 9

GO
CREATE VIEW [Vendor_Transaction_Handled_and_Minimum_View]
AS
SELECT 
	VendorID=REPLACE(mv.VendorID,'VE','Vendor '),
	VendorName,
	[Total Transaction Handled]=COUNT(PurchaseID),
	[Minimum Purchases in One Transaction]=MIN(QuantityPurchase)
FROM MsVendor mv
JOIN MsPurchase mp
ON mv.VendorID=mp.VendorID
WHERE MONTH(PurchaseDate)= 5 AND VendorName LIKE '%a%'
GROUP BY REPLACE(mv.VendorID,'VE','Vendor '), VendorName


--SOAL 10
GO 
CREATE VIEW [Staff_Total_Purchase_and_Max_Car_Purchase_View]
AS
SELECT 
	ms.StaffID,
	StaffName,
	StaffEmail=UPPER(StaffEmail),
	[Total Purchase]=COUNT(PurchaseID),
	[Maximum of Car That Has Been Purchased in One Purchase]=MAX(QuantityPurchase)
FROM MsStaff ms
JOIN MsPurchase mp
ON ms.StaffID=mp.StaffID
WHERE StaffEmail LIKE '%@yahoo.com' AND StaffGender LIKE 'Female'
GROUP BY ms.StaffID,StaffName,StaffGender,UPPER(StaffEmail)