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
    vehicle_id,
    VIN,
    make,
    model,
    year,
    color,
    odometer,
    price,
    vehicle_type,
    sold
)
VALUES 
    (501,'1HGCM82633A123456', 'Honda', 'Accord', 2022, 'Silver', 2500, 9000, 'Hatchback', 1),
    (502, '2T1BURHE6JC123789', 'Toyota', 'Corolla', 2015, 'White', 41000, 1500, 'Sedan', 0),
    (503, '1FAFP404X1F123321', 'Ford', 'Mustang', 1990, 'Black', 27500, 8900, 'Convertible', 1),
    (504, '2EBEQ505Y1G234532', 'Chevrolet', 'Corvette', 2025, 'Blue', 8000, 65000, 'Convertible', 0);




--> Table 3: Inventory (track which dealership has the vehicle)
INSERT INTO CT.inventory (
    dealership_id,
    VIN
)
VALUES
    (1, '1FAFP404X1F123321'),
    (1, '1HGCM82633A123456'),
    (2, '2T1BURHE6JC123789'),
    (3, '2EBEQ505Y1G234532');


--> Table 4: Sales contracts (use foreign key (VIN) to link to the vehicle)
INSERT INTO CT.sales_contracts (
    sale_Date,
    customer_Name,
    customer_Phone,
    customer_Address,
    total,
    VIN,
    dealership_ID
)
VALUES  
    ('2025-05-01', 'Alex Morgan', '555-123-4567', '123 Main St', 8900, '1FAFP404X1F123321', 1),
    ('2025-06-03', 'Jamie Lopez', '444-987-6543', '456 Oak Ave', 9000, '1HGCM82633A123456', 1);

--> Table 5: Lease contracts
INSERT INTO CT.lease_contracts (
    customer_id,
    vehicle_id,
    lease_start_date,
    lease_end_date,
    monthly_payment,
    contract_signed_date,
    remarks
)
VALUES
    --Fully registered lease contract
    --(101, 501, '2025-06-01', '2028-06-01', 499.99,'2025-05-25', 'Private lease including maintenance'),
    --Lease conract without linked customer (e.g. demo or reservation)
    (NULL, 502, '2025-07-01', '2027-07-01', 475.00, '2025-06-15', 'Demo contract - no customer linked yet'),
    --Business lease
    --(102, 503, '2025-05-15', '2028-05-15', 525.00, '2025-05-10', 'Business lease - 25,000 miles/year'),
    --Short-term lease
    (103, 504, '2025-06-01', '2026-06-01', 399.00, '2025-05-28', NULL)





