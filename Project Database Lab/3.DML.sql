--SOAL C
--3 DML Insertion

/*
2440116031 - Nadzla Andrita Intan Ghayatrie 
2440109556 - Wanda Safira 
2440110886 - Vincent
*/

USE cArDorm
GO


INSERT INTO MsStaff VALUES
('ST001', 'Reza Fauzan', 'Male','rezafauzan@gmail.com', '0813452783912', 'Jl.Bulgarian no 27', 9500000),
('ST002', 'Bagas Pradana', 'Male', 'bagaspradana@yahoo.com', '085437599000', 'Jl. Flaminggo no 17', 6500000),
('ST003', 'Aina Zahran', 'Female', 'ainazahran@yahoo.com', '0813452783219', 'Jl. Bulgarian no 27', 9000000),
('ST004', 'Arsen Daniswara', 'Male', 'arsendaniswara@yahoo.com', '089123666700', 'Jl. Rose Empera no 90', 10000000),
('ST005', 'Anindya Metha', 'Female', 'methanindiya@yahoo.com', '08912366800', 'Jl. Rose Empera no 90', 6000000),
('ST006', 'Aditya Mahya', 'Male', 'aditya.mahya@gmail.com', '081324555562', 'Jl. Rose Empera no 80', 6700000),
('ST007', 'Nabila Milena', 'Female', 'nabilamilena@gmail.com', '081324555572', 'Jl. Rose Empera no 80', 8000000),
('ST008', 'Mahesa Putra', 'Male', 'mahesaaa13@gmail.com', '085554321111', 'Jl. Abu Dwabi no 8', 10000000),
('ST009', 'Damar Anggara', 'Male', 'damar@yahoo.com', '081324555567', 'Jl. Abu Dwabi no 1', 8000000),
('ST010', 'Agra Sabian','Male','agrasabia@gmail.com', '081355577789', 'Jl. Flaminggo no 1', 9000000)

SELECT * FROM MsStaff

INSERT INTO MsCustomer VALUES
('CU001', 'Delio Erlangga', 'Male', 'Jl. Omicrona Elite no 001 A', '08111558885', 'delioerlangga@gmail.com'),
('CU002', 'Delia Erlangga', 'Female', 'Jl. Variants n0 123 A', '08555557800', 'delia.erlangga13@gmail.com'),
('CU003', 'Tamara', 'Female', 'Jl. Bimaya Anabu no 12', '081315686262', 'maratamara@gmail.com'),
('CU004', 'Lanaya Nadhine', 'Female', 'Jl. Century Park no 13', '081368152626', 'nayanadhine@yahoo.com'),
('CU005', 'Zelan Athallah', 'Male', 'Jl. Century Park no 13', '081368152266', 'zelanathallah@yahoo.com'),
('CU006', 'Larasati Kiona', 'Female', 'Jl. Joglo-Jawa no 4', '08221113535', 'kiona_larasati@gmail.com'),
('CU007', 'Yoshi Lee', 'Male', 'Jl. Joglo-Jawa no 4', '08221113555', 'lee_yoshi@gmail.com'),
('CU008', 'Hana Farhanah', 'Female', 'Jl. Ketapang no 6', '085177879001', 'hanafara@yahoo.com'),
('CU009', 'Kayla Mira', 'Female', 'Jl. Oslo Lavender no 56', '08771583688', 'kaylamira@gmail.com'),
('CU010', 'Tania Jasmine Hardiningrat', 'Female', 'Jl. Keistimewaan Yogya no 1 A', '0811805599', 'taniahadinigrat@gmail.com')

SELECT * FROM MsCustomer

INSERT INTO MsVendor VALUES
('VE001', 'Tayato', 'tayatobusiness@gmail.com', '02182613366', 'Jl. Lumburawa no 15B'),
('VE002', 'Dihatsu Indonesia', 'dihatsu.indonesia@gmail.com', '02182616666', 'Jl. Bengawan Solo no 11A'),
('VE003', 'Nassin Indonesia', 'nassinindo@yahoo.com', '02182625555', 'Jl. Kuala Lumpur no 3C'),
('VE004', 'Mutsibushu', 'mutsibushuindonesia@gmail.com', '02182664434', 'Jl. Lumpunesia no 99'),
('VE005', 'Uadi', 'uadibusiness@gmail.com', '02182617878', 'Jl. Negosiasi Indo no 4H'),
('VE006', 'Chovrelot Indonesia', 'chovrelotindonesia@yahoo.com', '02182612323', 'Jl. Leksia Alexa no 52'),
('VE007', 'Vilvi', 'vilviindonesia@gmail.com', '02182615544', 'Jl. Diponegoro no 13B'),
('VE008', 'Masdah', 'masdah@gmail.com', '02182615477', 'Jl. Ibu Kartini no 123'),
('VE009', 'Kai Indonesia', 'kaIndonesia@gmail.com', '02182617788', 'Jl. Lumburawa Baru no 1AA'),
('VE010', 'Luxes','uxes@gmail.com', '02182619990', 'Jl. Lembayung Biru no 3')

SELECT * FROM MsVendor

INSERT INTO MsBrand VALUES
('CB001', 'Tayato'), ('CB002', 'Dihatsu'), ('CB003', 'Nassin'), ('CB004', 'Mutsibushu'), ('CB005', 'Uadi'), ('CB006', 'Chovrelot'), ('CB007', 'Vilvi'), ('CB008', 'Masdah'), ('CB009', 'Kai'), ('CB010', 'Luxes')

SELECT * FROM MsBrand

INSERT INTO MsCar VALUES
('CA001', 'CB010', 'KX7', 750000000, 50),
('CA002', 'CB005', 'B-Glass', 1200000000, 8),
('CA003', 'CB003', 'Juge', 850000000, 9),
('CA004', 'CB001', 'Abanza', 500000000, 20),
('CA005', 'CB007', 'Z3', 678000000, 7),
('CA006', 'CB009', 'Aly4', 100000000, 10),
('CA007', 'CB002', 'XBander', 299700000, 18),
('CA008', 'CB008', 'Kompas', 615000000, 4),
('CA009', 'CB004', 'Coupe 4', 1400000000, 2),
('CA010', 'CB006', 'Ja-az', 543000000, 24)

SELECT * FROM MsCar


INSERT INTO MsTransaction VALUES
('TR001', 'CU002', 'ST001', 'CA005', '2020-09-13', 2),
('TR002', 'CU005', 'ST001', 'CA001', '2019-12-25', 1),
('TR003', 'CU001', 'ST010', 'CA008', '2020-02-13', 1),
('TR004', 'CU003', 'ST003', 'CA003', '2020-05-08', 1),
('TR005', 'CU003', 'ST003', 'CA001', '2020-05-08', 1),
('TR006', 'CU004', 'ST010', 'CA007', '2020-05-09', 4),
('TR007', 'CU002', 'ST010', 'CA002', '2020-05-09', 6),
('TR008', 'CU008', 'ST004', 'CA009', '2020-05-10', 2),
('TR009', 'CU008', 'ST009', 'CA005', '2020-05-15', 1),
('TR010', 'CU006', 'ST006', 'CA006', '2020-02-06', 1),
('TR011', 'CU006', 'ST006', 'CA008', '2020-02-06', 1),
('TR012', 'CU009', 'ST002', 'CA010', '2019-11-16', 1),
('TR013', 'CU007', 'ST002', 'CA008', '2020-11-16', 1),
('TR014', 'CU010', 'ST005', 'CA005', '2020-09-12', 1),
('TR015', 'CU010', 'ST005', 'CA004', '2020-09-12', 1),
('TR016', 'CU010', 'ST005', 'CA008', '2020-04-12', 3),
('TR017', 'CU008', 'ST007', 'CA001', '2020-04-01', 2),
('TR018', 'CU001', 'ST007', 'CA001', '2020-04-01', 5),
('TR019', 'CU003', 'ST009', 'CA003', '2021-01-01', 1),
('TR020', 'CU002', 'ST009', 'CA005', '2021-04-01', 7),
('TR021', 'CU009', 'ST009', 'CA010', '2021-04-01', 5),
('TR022', 'CU003', 'ST003', 'CA003', '2021-06-06', 1),
('TR023', 'CU002', 'ST002', 'CA002', '2020-02-02', 1),
('TR024', 'CU001', 'ST001', 'CA005', '2021-01-02', 1),
('TR025', 'CU006', 'ST003', 'CA004', '2020-04-04', 4),
('TR026', 'CU009', 'ST005', 'CA003', '2020-03-15', 2),
('TR027', 'CU006', 'ST003', 'CA009', '2019-08-25', 1),
('TR028', 'CU008', 'ST003', 'CA008', '2019-08-25', 1),
('TR029', 'CU004', 'ST005', 'CA001', '2020-10-05', 1)

SELECT * FROM MsTransaction


INSERT INTO MsPurchase VALUES
('PU001', 'ST001', 'VE003', 'CA003', '2021-05-07', 5),
('PU002', 'ST001', 'VE001', 'CA004', '2021-04-05', 20),
('PU003', 'ST001', 'VE005', 'CA002', '2021-05-04', 15),
('PU004', 'ST003', 'VE002', 'CA007', '2021-04-01', 8),
('PU005', 'ST003', 'VE009', 'CA006', '2021-05-01', 10),
('PU006', 'ST005', 'VE004', 'CA009', '2021-04-29', 12),
('PU007', 'ST006', 'VE008', 'CA008', '2021-05-11', 5),
('PU008', 'ST005', 'VE010', 'CA001', '2021-05-01', 8),
('PU009', 'ST002', 'VE006', 'CA010', '2021-05-24', 8),
('PU010', 'ST006', 'VE007', 'CA005', '2021-04-01', 10),
('PU011', 'ST004', 'VE003', 'CA003', '2021-04-04', 5),
('PU012', 'ST008', 'VE008', 'CA008', '2021-05-23', 7),
('PU013', 'ST008', 'VE002', 'CA007', '2021-05-14', 10),
('PU014', 'ST010', 'VE006', 'CA010', '2021-05-01', 5),
('PU015', 'ST010', 'VE004', 'CA009', '2021-05-13', 10)

SELECT * FROM MsPurchase
















