CREATE DATABASE LUCKYDRAW
USE LUCKYDRAW
GO

CREATE TABLE ADMIN
(
	ID VARCHAR(12) PRIMARY KEY,
	EMAIL VARCHAR(50) NOT NULL,
	PASSWORD VARCHAR(50) NOT NULL
)

CREATE TABLE KHACHHANG
(	
	MaKhachHang VARCHAR(12) PRIMARY KEY,
	HoTenKhachHang NVARCHAR(100) NOT NULL,
	SoDienThoai VARCHAR(12) NOT NULL,
	NgaySinh DATETIME,
	ChucVu NVARCHAR(30),
	LoaiHinhKinhDoanh NVARCHAR(50),
	MatKhau VARCHAR(50) NOT NULL
)

CREATE TABLE BARCODE
(
	Code VARCHAR(15) PRIMARY KEY,
	Barcode NVARCHAR(MAX) NOT NULL,
	QRCode NVARCHAR(MAX) NOT NULL,
	CreateDate DATETIME,
	ExpiredDate DATETIME,
	ScannedDate DATETIME,
	Scanned bit,
	Active bit
)

CREATE TABLE BARCODEHISTORY
(
	Code VARCHAR(15) PRIMARY KEY,
	CreateDate DATETIME,
	ScannedDate DATETIME,
	SpinDate VARCHAR(1),
	Owner VARCHAR(50) NOT NULL,
	Scanned bit,
	UsedForSpin bit
)

CREATE TABLE GIFT
(
	GiftCode VARCHAR(15) PRIMARY KEY,
	GiftName VARCHAR(100) NOT NULL,
	CreateDate DATETIME,
	CodeUsageLimit INT,
	Used VARCHAR(1),
	Active BIT
)

CREATE TABLE RulesForGift
(
	RuleName VARCHAR(10) PRIMARY KEY,
	Gift VARCHAR(15),
	Schedule VARCHAR(100) NOT NULL,
	RulesTime VARCHAR(50),
	Quantity INT,
	Probability FLOAT,
	Active BIT
	FOREIGN KEY(Gift) REFERENCES dbo.GIFT(GiftCode)
)

CREATE TABLE GeneratedGift
(
	Code VARCHAR(15) PRIMARY KEY,
	Campaign VARCHAR(50) NOT NULL,
	CreateDate DATETIME,
	ExpiredDate DATETIME,
	Usage VARCHAR(5),
	Active BIT
)

SELECT * FROM BARCODE

INSERT INTO BARCODE(Code, Barcode, QRCode, CreateDate, ExpiredDate, ScannedDate, Scanned, Active)
VALUES('KNR2DHMAAB3E9Y', 'barcode.png', '', '03/10/2020 00:00:00', '03/27/2020 23:59:59', '03/15/2020 23:59:59', 1, 1)
INSERT INTO BARCODE(Code, Barcode, QRCode, CreateDate, ExpiredDate, ScannedDate, Scanned, Active)
VALUES('KNR2DERGH1B3WE', 'barcode.png', '', '03/10/2020 00:00:00', '03/27/2020 23:59:59', '03/15/2020 23:59:59', 1, 1)
INSERT INTO BARCODE(Code, Barcode, QRCode, CreateDate, ExpiredDate, ScannedDate, Scanned, Active)
VALUES('KNR2DQBJLYNCVSD', 'barcode.png', '', '03/10/2020 00:00:00', '03/27/2020 23:59:59', '03/15/2020 23:59:59', 1, 1)
INSERT INTO BARCODE(Code, Barcode, QRCode, CreateDate, ExpiredDate, ScannedDate, Scanned, Active)
VALUES('KNR2DDHMALMAQO', 'barcode.png', '', '03/10/2020 00:00:00', '03/27/2020 23:59:59', '03/15/2020 23:59:59', 0, 0)
INSERT INTO BARCODE(Code, Barcode, QRCode, CreateDate, ExpiredDate, ScannedDate, Scanned, Active)
VALUES('KNR2DHMANC91U', 'barcode.png', '', '03/10/2020 00:00:00', '03/27/2020 23:59:59', '03/15/2020 23:59:59', 1, 1)

SELECT * FROM BARCODEHISTORY

INSERT INTO BARCODEHISTORY(Code, CreateDate, ScannedDate, SpinDate, Owner, Scanned, UsedForSpin)
VALUES('KNR2DHMAAB3E9Y', '03/10/2020 00:00:00', '03/15/2020 10:20:00', '-', 'NGUYEN VAN A', 1, 0)
INSERT INTO BARCODEHISTORY(Code, CreateDate, ScannedDate, SpinDate, Owner, Scanned, UsedForSpin)
VALUES('KNR2DERGH1B3WE', '03/10/2020 00:00:00', '03/15/2020 10:20:00', '-', 'NGUYEN VAN B', 1, 0)
INSERT INTO BARCODEHISTORY(Code, CreateDate, ScannedDate, SpinDate, Owner, Scanned, UsedForSpin)
VALUES('KNR2DQBJLYNCVSD', '03/10/2020 00:00:00', '03/15/2020 10:20:00', '-', 'NGUYEN VAN C', 1, 0)
INSERT INTO BARCODEHISTORY(Code, CreateDate, ScannedDate, SpinDate, Owner, Scanned, UsedForSpin)
VALUES('KNR2DDHMALMAQO', '03/10/2020 00:00:00', '03/15/2020 10:20:00', '-', 'NGUYEN VAN D', 1, 0)
INSERT INTO BARCODEHISTORY(Code, CreateDate, ScannedDate, SpinDate, Owner, Scanned, UsedForSpin)
VALUES('KNR2DHMANC91U', '03/10/2020 00:00:00', '03/15/2020 10:20:00', '-', 'NGUYEN VAN E', 1, 0)