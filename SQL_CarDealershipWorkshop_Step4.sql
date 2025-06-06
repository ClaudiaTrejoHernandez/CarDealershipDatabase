/****THE CAR DEALERSHIP DATABASE****/


--Step 4: Test to verify tables have been created.

--01. Get all dealerships

SELECT *
FROM CT.dealerships


--02. Find all vehicles for a specific dealership
SELECT 
    i.dealership_id,
    i.VIN,
    v.make + ', ' + v.model AS [Make & Model]
FROM CT.inventory AS i
JOIN CT.vehicles AS v ON I.VIN = v.VIN
WHERE i.dealership_id = 1;      --change to any specific dealership


--03. Find a car by VIN
SELECT *
FROM CT.vehicles
WHERE VIN = '1FAFP404X1F123321'

--04. Find the dealership where a certain car is located by VIN
SELECT 
    i.dealership_id AS [Dealership],
    i.VIN,
    v.make + ', ' + v.model AS [Make & Model]
FROM CT.inventory AS i
JOIN CT.vehicles AS v ON I.VIN = v.VIN
WHERE i.VIN = '1HGCM82633A123456'       --Change to the VIN you're looking for


--05. Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
SELECT 
    d.name AS [Dealership],
    i.dealership_id,
    v.make + ' ' + v.model AS [Vehicle Type]
FROM CT.dealerships AS d
JOIN CT.inventory AS i ON i.dealership_id = d.dealership_id
JOIN CT.vehicles AS v ON v.VIN = i.VIN
WHERE v.model = 'Mustang'       --Change to model you're looking for



--06. Get all sales information for a specific dealer for a specific date range
SELECT 
    s.orderID,
    s.orderDate,
    s.firstName + ' ' + s.lastName AS [Buyer Name],
    s.buyerPhone,
    s.buyerAddress,
    s.total,
    s.VIN,
    d.name AS [Dealership Name]
FROM CT.sales_contracts AS s 
JOIN CT.dealerships AS d ON d.dealership_id = s.dealership_ID
WHERE s.dealership_ID = 1                                       --Change to the dealership you want
    AND orderDate BETWEEN '2025-06-03' AND '2025-06-04';        --Change order date for a specific date range