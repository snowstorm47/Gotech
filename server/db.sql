-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(1000),
    Category VARCHAR(255),
    Manufacturer VARCHAR(255),
    -- Add other relevant columns as needed
);

-- StorageMethods Table
CREATE TABLE StorageMethods (
    MethodID INT PRIMARY KEY,
    MethodName VARCHAR(255)
);

-- Conditions Table
CREATE TABLE Conditions (
    ConditionID INT PRIMARY KEY,
    ConditionName VARCHAR(255)
);

-- Locations Table
CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(255)
);

-- Warehouse Table
CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    WarehouseName VARCHAR(255),
    Location VARCHAR(255) -- You may use appropriate data type for the location
);

-- WarehouseProducts Table
CREATE TABLE WarehouseProducts (
    WarehouseProductID INT PRIMARY KEY,
    WarehouseID INT,
    ProductID INT,
    Quantity INT,
    StorageMethodID INT,
    ConditionID INT,
    LocationID INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (StorageMethodID) REFERENCES StorageMethods(MethodID),
    FOREIGN KEY (ConditionID) REFERENCES Conditions(ConditionID),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);
