CREATE DATABASE OriginalCopmany;
use OriginalCopmany;

CREATE TABLE [IF NOT EXISTS] Customers (
    CustomerID int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CustomerName varchar(50) NOT NULL,
    CustomerAddress varchar(150) NOT NULL
);

INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Ana Trujillo','Obere Str. 57');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Antonio Moreno','Avda. de la Constitución 2222');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Thomas Hardy','Mataderos 2312');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Christina Berglund','120 Hanover Sq.');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Hanna Moos','Berguvsvägen 8');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Francisco Chang','Sierras de Granada 9993');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Yang Wang','Hauptstr. 29');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Laurence Lebihans','12, rue des Bouchers');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Elizabeth Lincoln','23 Tsawassen Blvd.');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ('Victoria Ashworth','Fauntleroy Circus');


CREATE DATABASE CopiedCopmany;
use CopiedCopmany;

CREATE TABLE [IF NOT EXISTS] Customers (
    CustomerID int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CustomerName varchar(50) NOT NULL,
    CustomerAddress varchar(150) NOT NULL
);


-- Stored Proc for Getting All Customers.
CREATE PROC SelectAllCustomers()
AS
BEGIN
    SELECT * FROM `customers` WHERE 1
END

-- Stored Proc for Getting All Customers.
CREATE PROC CopyAllCustomers()
AS
BEGIN
    -- Existing:
    INSERT [IGNORE] INTO CopiedCopmany.Customers
    SELECT * FROM OriginalCopmany.Customers
END


-- New Table:
-- CREATE TABLE Customers
-- SELECT * FROM Customers
