/****THE CAR DEALERSHIP DATABASE****/

--Step 3: Populate each of your tables with sample data

--> Table 1:Dealerships
INSERT INTO CT.dealerships (
    name,
    address,
    phone
)
VALUES 
    ('Sunset Motors', '123 Sunset Blvd', '555-123-4567'),
    ('Evergreen Auto', '456 Forest Ln', '555-987-6543'),
    ('CityDrive Autos', '789 Main St', '555-234-7890');



--> Table 2: Vehicles
INSERT INTO CT.vehicles (
    VIN,
    make,
    model,
    sold
)
VALUES 
    ('1HGCM82633A123456', 'Honda', 'Accord', 0),
    ('2T1BURHE6JC123789', 'Toyota', 'Corolla', 1),
    ('1FAFP404X1F123321', 'Ford', 'Mustang', 0),
    ('5YJSA1E26HF123999', 'Tesla', 'Model S', 1),
    ('1C4RJFBG5EC123456', 'Jeep', 'Grand Cherokee', 0);



--> Table 3: Inventory (track which dealership has the vehicle)
INSERT INTO CT.inventory (
    dealership_id,
    VIN
)
VALUES
    (1, '1HGCM82633A123456'),
    (1, '2T1BURHE6JC123789'),
    (2, '1FAFP404X1F123321'),
    (3, '5YJSA1E26HF123999');



--> Table 4: Sales contracts (use foreign key (VIN) to link to the vehicle)
INSERT INTO CT.sales_contracts (
    orderDate,
    firstName,
    lastName,
    buyerPhone,
    buyerAddress,
    total,
    VIN,
    dealership_ID
)
VALUES  
    ('2025-06-01', 'Alex', 'Morgan', '5551234567', '123 Main St', 15000, '1HGCM82633A123456', 1),
    ('2025-06-03', 'Jamie', 'Lopez', '5559876543', '456 Oak Ave', 18000, '2T1BURHE6JC123789', 1),
    ('2025-06-04', 'Taylor', 'Nguyen', '5553332222', '789 Pine Rd', 12500, '1FAFP404X1F123321', 2);


--To drop a table:
--> DROP TABLE IF EXISTS CT.table_name;
