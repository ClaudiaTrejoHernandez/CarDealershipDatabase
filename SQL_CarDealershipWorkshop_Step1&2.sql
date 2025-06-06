/****THE CAR DEALERSHIP DATABASE****/

--Step 2: Create your tables

--CREATE SCHEMA CT (begins the left side of: CT.table_name)


--> Table 1:Dealerships
CREATE TABLE CT.dealerships (
    dealership_id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    name VARCHAR(50) NULL,
    address VARCHAR(50) NULL,
    phone VARCHAR(12) NULL
);


--> Table 2: Vehicles
CREATE TABLE CT.vehicles (
    VIN VARCHAR(20) PRIMARY KEY NOT NULL,
    make VARCHAR(50) NULL,
    model VARCHAR(50) NULL,
    sold BIT DEFAULT 0 NULL
);


--> Table 3: Inventory (track which dealership has the vehicle)
CREATE TABLE CT.inventory (
    dealership_id INT NULL,
    VIN VARCHAR(20) NULL,
    FOREIGN KEY (dealership_id) REFERENCES CT.dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES CT.vehicles(VIN)
);


--> Table 4: Sales contracts (use foreign key (VIN) to link to the vehicle)
CREATE TABLE CT.sales_contracts (
    orderID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    orderDate DATE,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    buyerPhone VARCHAR(12) NULL,
    buyerAddress VARCHAR(50) NULL,
    total INT NULL,
    VIN VARCHAR(20) NOT NULL,
    dealership_ID INT NOT NULL,
    FOREIGN KEY (VIN) REFERENCES CT.vehicles(VIN),
    FOREIGN KEY (dealership_ID) REFERENCES CT.dealerships(dealership_ID)
);


