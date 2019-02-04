CREATE DATABASE OriginalCopmany;
use OriginalCopmany;

CREATE TABLE IF NOT EXISTS Customers (
    ID int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CustomerID int(11) NOT NULL,
    CustomerName varchar(50) NOT NULL,
    CustomerAddress varchar(150) NOT NULL
);

INSERT INTO Customers( CustomerID, CustomerName, CustomerAddress ) VALUES ( 139, 'Ana Trujillo','Obere Str. 57');
INSERT INTO Customers( CustomerID, CustomerName, CustomerAddress ) VALUES ( 465, 'Antonio Moreno','Avda. de la Constitución 2222');
INSERT INTO Customers( CustomerID, CustomerName, CustomerAddress ) VALUES (765,'Thomas Hardy','Mataderos 2312');
INSERT INTO Customers( CustomerID,  CustomerName, CustomerAddress ) VALUES (231,'Christina Berglund','120 Hanover Sq.');
INSERT INTO Customers( CustomerID,  CustomerName, CustomerAddress ) VALUES (468,'Hanna Moos','Berguvsvägen 8');
INSERT INTO Customers( CustomerID,  CustomerName, CustomerAddress ) VALUES (978,'Francisco Chang','Sierras de Granada 9993');
INSERT INTO Customers( CustomerID, CustomerName, CustomerAddress ) VALUES ( 487,'Yang Wang','Hauptstr. 29');
INSERT INTO Customers( CustomerID, CustomerName, CustomerAddress ) VALUES (981, 'Laurence Lebihans','12, rue des Bouchers');
INSERT INTO Customers( CustomerID,  CustomerName, CustomerAddress ) VALUES (667,'Elizabeth Lincoln','23 Tsawassen Blvd.');
INSERT INTO Customers( CustomerID, CustomerName, CustomerAddress ) VALUES (239, 'Victoria Ashworth','Fauntleroy Circus');




CREATE DATABASE CopiedCopmany;
use CopiedCopmany;

CREATE TABLE IF NOT EXISTS Customers (
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

-- Stored Proc for Copying All Customers to Another Table in Another Database.
CREATE PROC CopyAllCustomers()
AS
BEGIN
    -- Existing:
    INSERT IGNORE INTO CopiedCopmany.Customers
    SELECT * FROM OriginalCopmany.Customers
END


-- New Table:
-- CREATE TABLE Customers
-- SELECT * FROM Customers
