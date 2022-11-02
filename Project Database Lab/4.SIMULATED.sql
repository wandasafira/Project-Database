--SOAL D
/*
2440116031 - Nadzla Andrita Intan Ghayatrie 
2440109556 - Wanda Safira 
2440110886 - Vincent
*/

USE cArDorm

BEGIN TRAN 
INSERT INTO MsTransaction (TransactionID,CustomerID,StaffID,CarSold,TransactionDate,Quantity)
VALUES('TR030', 'CU010', 'ST002', 'CA008', '2020-10-05', 1)
SELECT * FROM MsTransaction
ROLLBACK
COMMIT 

BEGIN TRAN 
UPDATE MsCar
SET CarStock=3
WHERE Carstock=4
SELECT * FROM MsCar
ROLLBACK 
COMMIT
