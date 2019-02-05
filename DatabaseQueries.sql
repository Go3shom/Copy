/* 
-- Requirements Update_2:
** Renaming Databases Names. (Failed) "Droping the Existing & Recreate a new ones"
** Renaming Tables Names.
** Changing Stored Procedure to Parametrized
** Adding a "LogDb" & "LogTable"
** 
*/

DROP DATABASE OriginalCopmany;
DROP DATABASE CopiedCopmany;

CREATE DATABASE sourceDB;

CREATE TABLE IF NOT EXISTS Customers (
    ID int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CustomerID int(11) NOT NULL,
    CustomerName varchar(50) NOT NULL,
    CustomerAddress varchar(150) NOT NULL
);

CREATE DATABASE TargetDB;

CREATE TABLE IF NOT EXISTS Clients (
    ID int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ClientID int(11) NOT NULL,
    ClientName varchar(50) NOT NULL,
    ClientAddress varchar(150) NOT NULL
);


CREATE TABLE IF NOT EXISTS LogData (
    ProcessID int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Process varchar(100) NOT NULL,
    ProcessStartTime TIMESTAMP NOT NULL,
    ProcessEndTime TIMESTAMP NOT NULL
);


/*
CopyNewData parameters are 
 
Query should look like 
Get new datarows 

Select id from sourcetable 
Minus 
Select id from target

Get all new records and inset it into target table.

*/

CREATE PROC CopyNewData()
@sourcedatabase, 
@targetdatabase,
@sourcetablename,
@targettablename,
@sourcetableIDfield,
@targettableidfiled
AS
BEGIN
    -- Existing:
    INSERT IGNORE INTO CopiedCopmany.Customers
    SELECT * FROM OriginalCopmany.Customers
END




/* 
-- Requirements Update_1:
** Adding "TechnicalID" column separated from "BusinessID".
*/
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


-- Requirements
CREATE DATABASE OriginalCopmany;
use OriginalCopmany;

CREATE TABLE IF NOT EXISTS Customers (
    CustomerID int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CustomerName varchar(50) NOT NULL,
    CustomerAddress varchar(150) NOT NULL
);

INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Ana Trujillo','Obere Str. 57');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Antonio Moreno','Avda. de la Constitución 2222');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Thomas Hardy','Mataderos 2312');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Christina Berglund','120 Hanover Sq.');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Hanna Moos','Berguvsvägen 8');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Francisco Chang','Sierras de Granada 9993');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Yang Wang','Hauptstr. 29');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Laurence Lebihans','12, rue des Bouchers');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Elizabeth Lincoln','23 Tsawassen Blvd.');
INSERT INTO Customers( CustomerName, CustomerAddress ) VALUES ( 'Victoria Ashworth','Fauntleroy Circus');


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
    SELECT * FROM `customers` WHERE 1;
END

-- Stored Proc for Copying All Customers to Another Table in Another Database.
CREATE PROC CopyAllCustomers()
AS
BEGIN
    -- Existing:
    INSERT IGNORE INTO CopiedCopmany.Customers
    SELECT * FROM OriginalCopmany.Customers
END
