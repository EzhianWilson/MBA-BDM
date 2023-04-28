create Database online_store;

use online_store;

CREATE TABLE CUSTOMER (
    CUSTOMER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(50),
    EMAIL VARCHAR(50),
    PHONE_NUMBER VARCHAR(10),
    PAYMENT_INFO VARCHAR(25)
);



CREATE TABLE PRODUCT (
    PRODUCT_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    NAME VARCHAR(50),
    DESCRIPTION TEXT,
    CATEGORY VARCHAR(50),
    PRICE DECIMAL(10,2),
    BRAND VARCHAR(50),
    AVAILABLE BOOLEAN
);


CREATE TABLE INVOICE(
    INVOICE_NO VARCHAR(10) NOT NULL PRIMARY KEY,
    ORDER_DATE DATE,
    TOTAL_AMT DECIMAL(10,2),
    STATUS VARCHAR(50),
    CUSTOMER_ID VARCHAR(10),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
);



CREATE TABLE ORDER_ITEM (
    ORDER_ITEM_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    QUANTITY INT,
    UNIT_PRICE DECIMAL(10,2),
    INVOICE_NO VARCHAR(10),
    PRODUCT_ID VARCHAR(10),
    FOREIGN KEY (INVOICE_NO) REFERENCES INVOICE(INVOICE_NO),
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);



CREATE TABLE CART (
    CART_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    DATE_CREATED DATE,
    TOTAL_AMT DECIMAL(10,2),
    CUSTOMER_ID VARCHAR(10),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
);



CREATE TABLE PAYMENT (
    PAYMENT_ID INT PRIMARY KEY,
    PAYMENT_DATE DATE,
    PAYMENT_METHOD VARCHAR(50),
    AMOUNT DECIMAL(10,2),
    INVOICE_NO VARCHAR(10),
    FOREIGN KEY (INVOICE_NO) REFERENCES INVOICE(INVOICE_NO)
);


CREATE TABLE SHIPPING (
    SHIPPING_ID INT PRIMARY KEY,
    TRACKING_NUM VARCHAR(50),
    SHIPPING_DATE DATE,
    ADDRESS VARCHAR(50),
    INVOICE_NO VARCHAR(10),
    FOREIGN KEY (INVOICE_NO) REFERENCES INVOICE(INVOICE_NO)
);


CREATE TABLE REVIEW (
    REVIEW_ID INT PRIMARY KEY,
    PRODUCT_RATING INT,
    REVIEW_TEXT TEXT,
    CUSTOMER_ID VARCHAR(10),
    PRODUCT_ID VARCHAR(10),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);


CREATE TABLE WISHLIST (
    WISHLIST_ID INT PRIMARY KEY,
    DATE_CREATED DATE,
    CUSTOMER_ID VARCHAR(10),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
);


CREATE TABLE PROMOTION (
    PROMOTION_ID INT PRIMARY KEY,
    DISCOUNT_PERCENTAGE DECIMAL(10,2),
    START_DATE DATE,
    END_DATE DATE,
    PRODUCT_ID VARCHAR(10),
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);


-- INSERTING VALUE IN CUSTOMER TABLE
INSERT INTO CUSTOMER (CUSTOMER_ID, NAME, ADDRESS, EMAIL, PHONE_NUMBER, PAYMENT_INFO)
VALUES
('CUST001', 'John Smith', '123 Main St', 'john.smith@email.com', '6775424587', 'VISA'),
('CUST002', 'Jane Doe', '456 Oak Ave', 'jane.doe@email.com', '9873451290', 'MASTERCARD'),
('CUST003', 'Bob Johnson', '789 Maple Dr', 'bob.johnson@email.com', '8760983456', 'DISCOVER'),
('CUST004', 'Sara Lee', '111 Cherry Ln', 'sara.lee@email.com', '9081232309', 'AMERICAN EXPRESS'),
('CUST005', 'David Brown', '222 Pine St', 'david.brown@email.com', '8760983412', 'VISA'),
('CUST006', 'Amy Davis', '333 Cedar Ave', 'amy.davis@email.com', '7653456409', 'MASTERCARD'),
('CUST007', 'Mark Wilson', '444 Elm St', 'mark.wilson@email.com', '7765347886', 'DISCOVER'),
('CUST008', 'Karen Taylor', '555 Birch Dr', 'karen.taylor@email.com', '9876345600', 'AMERICAN EXPRESS'),
('CUST009', 'Mike Green', '666 Oak St', 'mike.green@email.com', '8765434567', 'VISA'),
('CUST010', 'Lisa Jackson', '777 Maple Ave', 'lisa.jackson@email.com', '8762346789', 'MASTERCARD');

-- INSERTING VALUE IN PRODUCTION TABLE
INSERT INTO PRODUCT (PRODUCT_ID, NAME, DESCRIPTION, CATEGORY, PRICE, BRAND, AVAILABLE)
VALUES
('PROD001', 'Laptop', 'Thin and light laptop with long battery life', 'Electronics', 899.99, 'Dell', TRUE),
('PROD002', 'Sneakers', 'Comfortable sneakers for everyday wear', 'Footwear', 59.99, 'Nike', TRUE),
('PROD003', 'Headphones', 'Noise-cancelling headphones with high-quality audio', 'Electronics', 249.99, 'Bose', TRUE),
('PROD004', 'T-Shirt', 'Soft and breathable cotton t-shirt with a simple design', 'Apparel', 19.99, 'H&M', TRUE),
('PROD005', 'Smartwatch', 'Smartwatch with fitness tracking and heart rate monitoring', 'Electronics', 299.99, 'Apple', FALSE),
('PROD006', 'Backpack', 'Durable backpack with multiple pockets and compartments', 'Bags', 79.99, 'North Face', TRUE),
('PROD007', 'Running Shorts', 'Lightweight and moisture-wicking shorts for running', 'Athletic Apparel', 29.99, 'Adidas', TRUE),
('PROD008', 'Blender', 'Powerful blender for making smoothies and other beverages', 'Appliances', 129.99, 'Vitamix', TRUE),
('PROD009', 'Wireless Speaker', 'Portable wireless speaker with Bluetooth connectivity', 'Electronics', 99.99, 'JBL', TRUE),
('PROD010', 'Jeans', 'Classic denim jeans with a straight fit', 'Apparel', 49.99, 'Levis', TRUE);


-- INSERTING VALUE IN INVOICE TABLE
INSERT INTO INVOICE (INVOICE_NO, ORDER_DATE, TOTAL_AMT, STATUS, CUSTOMER_ID)
VALUES
('INV001', '2022-01-01', 129.99, 'Paid', 'CUST001'),
('INV002', '2022-01-02', 49.99, 'Paid', 'CUST003'),
('INV003', '2022-01-03', 899.99, 'Paid', 'CUST005'),
('INV004', '2022-01-04', 249.99, 'Pending', 'CUST002'),
('INV005', '2022-01-05', 29.99, 'Paid', 'CUST007'),
('INV006', '2022-01-06', 59.99, 'Paid', 'CUST010'),
('INV007', '2022-01-07', 299.99, 'Pending', 'CUST008'),
('INV008', '2022-01-08', 79.99, 'Paid', 'CUST004'),
('INV009', '2022-01-09', 129.99, 'Paid', 'CUST006'),
('INV010', '2022-01-10', 99.99, 'Pending', 'CUST009');

-- INSERTING VALUE IN ORDER_ITEM TABLE
INSERT INTO ORDER_ITEM (ORDER_ITEM_ID, QUANTITY, UNIT_PRICE, INVOICE_NO, PRODUCT_ID)
VALUES
('OI001', 1, 129.99, 'INV001', 'PROD007'),
('OI002', 2, 49.99, 'INV002', 'PROD010'),
('OI003', 1, 899.99, 'INV003', 'PROD001'),
('OI004', 1, 249.99, 'INV004', 'PROD003'),
('OI005', 3, 29.99, 'INV005', 'PROD007'),
('OI006', 1, 59.99, 'INV006', 'PROD002'),
('OI007', 1, 299.99, 'INV007', 'PROD005'),
('OI008', 1, 79.99, 'INV008', 'PROD006'),
('OI009', 2, 129.99, 'INV009', 'PROD008'),
('OI010', 1, 99.99, 'INV010', 'PROD009');

-- INSERTING VALUE IN CART TABLE
INSERT INTO CART (CART_ID, DATE_CREATED, TOTAL_AMT, CUSTOMER_ID)
VALUES
('CART001', '2022-01-01', 129.99, 'CUST001'),
('CART002', '2022-01-02', 49.99, 'CUST003'),
('CART003', '2022-01-03', 899.99, 'CUST005'),
('CART004', '2022-01-04', 249.99, 'CUST002'),
('CART005', '2022-01-05', 29.99, 'CUST007'),
('CART006', '2022-01-06', 59.99, 'CUST010'),
('CART007', '2022-01-07', 299.99, 'CUST008'),
('CART008', '2022-01-08', 79.99, 'CUST004'),
('CART009', '2022-01-09', 129.99, 'CUST006'),
('CART010', '2022-01-10', 99.99, 'CUST009');

-- INSERTING VALUE IN PAYMENT TABLE
INSERT INTO PAYMENT (PAYMENT_ID, PAYMENT_DATE, PAYMENT_METHOD, AMOUNT, INVOICE_NO)
VALUES
(1, '2022-01-15', 'Credit Card', 129.99, 'INV001'),
(2, '2022-01-16', 'PayPal', 49.99, 'INV002'),
(3, '2022-01-17', 'Credit Card', 899.99, 'INV003'),
(4, '2022-01-18', 'Debit Card', 249.99, 'INV004'),
(5, '2022-01-19', 'PayPal', 89.97, 'INV005'),
(6, '2022-01-20', 'Credit Card', 59.99, 'INV006'),
(7, '2022-01-21', 'Debit Card', 299.99, 'INV007'),
(8, '2022-01-22', 'Credit Card', 79.99, 'INV008'),
(9, '2022-01-23', 'PayPal', 259.98, 'INV009'),
(10, '2022-01-24', 'Credit Card', 99.99, 'INV010');

-- INSERTING VALUE IN SHIPPING TABLE
INSERT INTO SHIPPING (SHIPPING_ID, TRACKING_NUM, SHIPPING_DATE, ADDRESS, INVOICE_NO)
VALUES
(1, '123456789', '2022-01-20', '123 Main St, Anytown, USA', 'INV001'),
(2, '234567890', '2022-01-21', '456 Elm St, Anytown, USA', 'INV002'),
(3, '345678901', '2022-01-22', '789 Oak St, Anytown, USA', 'INV003'),
(4, '456789012', '2022-01-23', '987 Pine St, Anytown, USA', 'INV004'),
(5, '567890123', '2022-01-24', '321 Maple St, Anytown, USA', 'INV005'),
(6, '678901234', '2022-01-25', '654 Cedar St, Anytown, USA', 'INV006'),
(7, '789012345', '2022-01-26', '987 Elm St, Anytown, USA', 'INV007'),
(8, '890123456', '2022-01-27', '432 Oak St, Anytown, USA', 'INV008'),
(9, '901234567', '2022-01-28', '765 Pine St, Anytown, USA', 'INV009'),
(10, '012345678', '2022-01-29', '321 Birch St, Anytown, USA', 'INV010');

-- INSERTING VALUE IN REVIEW TABLE
INSERT INTO REVIEW (REVIEW_ID, PRODUCT_RATING, REVIEW_TEXT, CUSTOMER_ID, PRODUCT_ID)
VALUES
(1, 4, 'This product is great! It exceeded my expectations.', 'CUST001', 'PROD001'),
(2, 3, 'Decent product for the price.', 'CUST002', 'PROD002'),
(3, 5, 'Absolutely love this product! It is exactly what I was looking for.', 'CUST003', 'PROD003'),
(4, 2, 'Not happy with this product. It arrived damaged and did not work properly.', 'CUST004', 'PROD004'),
(5, 4, 'This product is of good quality and works well.', 'CUST005', 'PROD005'),
(6, 5, 'I would highly recommend this product to anyone! It is amazing!', 'CUST006', 'PROD006'),
(7, 3, 'It is an okay product, nothing special.', 'CUST007', 'PROD007'),
(8, 4, 'I am happy with my purchase. This product is exactly what I needed.', 'CUST008', 'PROD008'),
(9, 1, 'Terrible product. Do not waste your money on it.', 'CUST009', 'PROD009'),
(10, 5, 'This product is a game changer! It has improved my life in so many ways.', 'CUST010', 'PROD010');

-- INSERTING VALUE IN WISHLIST TABLE
INSERT INTO WISHLIST ( WISHLIST_ID, DATE_CREATED, CUSTOMER_ID)
VALUES
(1, '2022-01-15', 'CUST001'),
(2, '2022-02-01', 'CUST002'),
(3, '2022-02-10', 'CUST003'),
(4, '2022-03-05', 'CUST004'),
(5, '2022-03-10', 'CUST005'),
(6, '2022-04-01', 'CUST001'),
(7, '2022-04-15', 'CUST002'),
(8, '2022-05-01', 'CUST003'),
(9, '2022-05-10', 'CUST004'),
(10, '2022-06-01', 'CUST005');

-- INSERTING VALUE IN PROMOTION TABLE
INSERT INTO PROMOTION ( PROMOTION_ID,  DISCOUNT_PERCENTAGE, START_DATE, END_DATE, PRODUCT_ID)
VALUES
(1, 10.00, '2022-01-01', '2022-01-31', 'PROD001'),
(2, 5.00, '2022-02-01', '2022-02-28', 'PROD002'),
(3, 15.00, '2022-03-01', '2022-03-31', 'PROD003'),
(4, 20.00, '2022-04-01', '2022-04-30', 'PROD004'),
(5, 8.00, '2022-05-01', '2022-05-31', 'PROD005'),
(6, 12.50, '2022-06-01', '2022-06-30', 'PROD006'),
(7, 7.00, '2022-07-01', '2022-07-31', 'PROD007'),
(8, 18.00, '2022-08-01', '2022-08-31', 'PROD008'),
(9, 25.00, '2022-09-01', '2022-09-30', 'PROD009'),
(10, 30.00, '2022-10-01', '2022-10-31', 'PROD010');
