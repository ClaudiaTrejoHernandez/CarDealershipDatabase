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
    vehicle_id INT NOT NULL,
    VIN VARCHAR(20) PRIMARY KEY NOT NULL,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NULL,
    color NVARCHAR(20) NULL,
    odometer INT NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    vehicle_type NVARCHAR(20) NULL,
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
    sale_ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    sale_Date DATE,
    customer_Name VARCHAR(50) NOT NULL,
    customer_Phone VARCHAR(12) NULL,
    customer_Address VARCHAR(50) NULL,
    total INT NULL,
    VIN VARCHAR(20) NOT NULL,
    dealership_ID INT NOT NULL,
    FOREIGN KEY (VIN) REFERENCES CT.vehicles(VIN),
    FOREIGN KEY (dealership_ID) REFERENCES CT.dealerships(dealership_ID)
);

--> Table 5: Lease contracts
CREATE TABLE CT.lease_contracts (
    contract_id INT PRIMARY KEY IDENTITY (1,1),
    customer_id INT NULL,
    vehicle_id INT NOT NULL,
    lease_start_date DATE NOT NULL,
    lease_end_date DATE NOT NULL,
    monthly_payment DECIMAL(10,2) NOT NULL,
    contract_signed_date DATE NOT NULL,
    remarks NVARCHAR(255),
    is_active BIT DEFAULT 1
)


--To drop a table:
--> DROP TABLE IF EXISTS CT.table_name;

