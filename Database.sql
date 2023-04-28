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