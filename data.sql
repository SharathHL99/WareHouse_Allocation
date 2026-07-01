-- =========================================================
-- data.sql
-- Sample/seed data for the Warehouse Allocation System
-- =========================================================

-- ---------------------------------------------------------
-- WAREHOUSE
-- ---------------------------------------------------------
INSERT INTO warehouse (id, name, location, capacity, status, created_at) VALUES
(1, 'Hyderabad Central Warehouse', 'Hyderabad, Telangana', 12000, 'ACTIVE', '2026-02-03 09:30:00'),
(2, 'Pune Logistics Hub', 'Pune, Maharashtra', 9000, 'ACTIVE', '2026-02-08 10:00:00'),
(3, 'Kolkata Distribution Center', 'Kolkata, West Bengal', 7000, 'ACTIVE', '2026-02-15 11:15:00'),
(4, 'Ahmedabad Storage Facility', 'Ahmedabad, Gujarat', 5500, 'INACTIVE', '2026-03-01 08:45:00');

-- ---------------------------------------------------------
-- PRODUCT
-- ---------------------------------------------------------
INSERT INTO product (id, name, sku, total_stock) VALUES
(1, 'Gaming Laptop', 'SKU-GL-2001', 750),
(2, 'Bluetooth Speaker', 'SKU-BS-2002', 1800),
(3, 'External SSD 1TB', 'SKU-ES-2003', 950),
(4, 'Smart Watch', 'SKU-SW-2004', 1300),
(5, 'Wireless Earbuds', 'SKU-WE-2005', 2200);

-- ---------------------------------------------------------
-- WAREHOUSE_INVENTORY
-- ---------------------------------------------------------
INSERT INTO warehouse_inventory (id, warehouse_id, product_id, available_quantity, version) VALUES
(1, 1, 1, 250, 0),
(2, 1, 2, 700, 0),
(3, 1, 3, 350, 0),
(4, 2, 2, 500, 0),
(5, 2, 4, 450, 0),
(6, 2, 5, 800, 0),
(7, 3, 1, 300, 0),
(8, 3, 3, 250, 0),
(9, 3, 5, 600, 0),
(10, 4, 4, 400, 0);

-- ---------------------------------------------------------
-- ALLOCATION
-- ---------------------------------------------------------
INSERT INTO allocation (id, product_id, warehouse_id, quantity, status, allocated_at) VALUES
(1, 1, 3, 40, 'ALLOCATED', '2026-04-05 09:20:00'),
(2, 4, 2, 80, 'ALLOCATED', '2026-04-08 11:10:00'),
(3, 2, 1, 120, 'ALLOCATED', '2026-04-15 14:40:00'),
(4, 5, 2, 150, 'ALLOCATED', '2026-05-02 10:30:00'),
(5, 3, 3, 25, 'CANCELLED', '2026-05-18 16:45:00');

-- ---------------------------------------------------------
-- STOCK_TRANSFER
-- ---------------------------------------------------------
INSERT INTO stock_transfer (id, source_warehouse_id, target_warehouse_id, product_id, quantity, transfer_date) VALUES
(1, 2, 3, 4, 60, '2026-04-20 12:30:00'),
(2, 3, 1, 1, 45, '2026-05-12 15:15:00'),
(3, 1, 2, 5, 90, '2026-06-01 09:50:00');