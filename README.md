# MBA-BDM
###### [Ezhilan Wilson - 22121128](https://github.com/EzhianWilson)
###### [Tejasvi B - 22121006](https://github.com/tejbasu)

## **Introduction:**

As a Business Analyst, I have been tasked with planning the database structure for an online shopping domain. Online shopping has become a rapidly growing industry in recent years, with more and more people choosing to shop online for the convenience it offers. Therefore, it is essential to have a well-designed and efficient database structure to ensure that the online shopping experience is seamless for customers.

## **Domain/Industry:** Online Shopping

#### **Attributes:**

* **Customer:** name, address, email, phone number, payment information
* **Product:** name, description, category, price, brand, availability
* **Order:** order number, order date, total amount, status
* **Order Item:** quantity, unit price
* **Cart:** cart ID, date created, total amount
* **Payment:** payment ID, payment date, payment method, amount
* **Shipping:** shipping ID, tracking number, shipping date, address
* **Review:** review ID, product rating, review text
* **Wishlist:** wishlist ID, date created
* **Promotion:** promotion ID, discount percentage, start and end date


#### **Entities:**

1. Customer
2. Product
3. Order
4. Order Item
5. Cart
6. Payment
7. Shipping
8. Review
9. Wishlist
10. Promotion




## ER Diagram - ONLINE SHOPPING
![ER DIAGRA, drawio (1)](https://user-images.githubusercontent.com/125994880/235347923-ec282fd2-329a-45f9-90f0-dd4b9a98c1ea.png)


## Table design for ER Diagram

**TABLE : CUSTOMER** <br>
EX: <br>

CUSTOMER_ID : VARCHAR PRIMARY KEY <br>
NAME        : VARCHAR <br>
EMAIL       : VARCHAR <br>
PAYMENT_INFO: VARCHAR <br>

|CUSTOMER_ID| NAME          | E_MAIL                |PAYMENT_INFO  |
|----------:| ------------- | ---------------------:|-------------:|
||    |           |   |                   

<br>
<br>

**TABLE : PHONE_NO** <br>
EX: <br>

PHONE_NO_ID  : INT PRIMARY KEY <br>
CUSTOMER_ID  : VARCHAR <br>
PHONE_NUMBER : VARCHAR <br>

|PHONE_NO_ID|CUSTOMER_ID|PHONE_NUMBER|
|-----------|-----------|------------|
|        || |

<br>
<br>

**TABLE : ADDRESS**

ADDRESS_ID                : INT PRIMARY KEY <br>
CUSTOMER_ID               : VARCHAR FOREIGN KEY <br>
SHIPPING_ID               : VARCHAR FOREIGN KEY <br>
PLOT_STREET_BUILDING_NO   : VARCHAR <br>
FIRST_LINE                : VARCHAR <br>
SECOND_LINE               : VARCHAR <br>
PINCODE                   : VARCHAR <br>

EX:
|ADDRESS_ID| CUSTOMER_ID|  SHIPPING_ID| PLOT_STREET_BUILDING_NO| FIRST_LINE| SECOND_LINE| PINCODE|
|           |       |         |         |         |          |        |

<br>
<br>

**TABLE : PRODUCT**

PRODUCT_ID   : VARCHAR PRIMARY KEY <br>
NAME         : VARCHAR <br>
DESCRIPTION  : TEXT <br>
CATEGORY     : VARCHAR <br>
PRICE        : DECIMAL <br>
BRAND        : VARCHAR <br>
AVAILABLE    : BOOLEAN <br>

EX:
|PRODUCT_ID| NAME          | DESCRIPTION                                             | CATEGORY              |PRICE     | BRAND        | AVAILABILITY |
|----------| ------------- |:--------------------------------------------------:     | ---------------------:|---------:|-------------:|-------------:|
|PROD001   |Laptop         |Thin and light laptop with long battery life             |Electronics            |899.99    |Dell          | TRUE         |

<br>
<br>

**TABLE : INVOICE**

INVOICE_NO    : VARCHAR PRIMARY KEY <br>
ORDER_DATE    : DATE <br>
TOTAL_AMT     : DECIMAL <br>
STATUS        : VARCHAR <br>
CUSTOMER_ID   : VARCHAR FOREIGN KEY <br>

EX:
| ORDER_ID  | ORDER_DATE    | TOTAL AMOUNT    |ORDER_STATUS     |CUSTOMER_ID| 
| --------- |:-------------:| ---------------:|----------------:|-----------|
|INV001     |2022-01-01     | 129.99          |Paid             |CUST001    | 


<br>
<br>

**TABLE : ORDER_ITEMS**

ORDER_ITEM_ID : VARCHAR PRIMARY KEY <br>
QUANTITY      : INT <br>
UNIT_PRICE    : DECIMAL <br>
INVOICE_NO    : VARCHAR FOREIGN KEY <br>
PRODUCT_ID    : VARCHAR FOREIGN KEY <br>

EX:
|ORDER_ITEMS_ID | ORDER_ITEM-UNITPRICE  | ORDER_ITEM_QTY   | ORDER_ID | PRODUCT_ID |
|---------------| --------------------- |:----------------:|----------|------------|
|OI001          | 129.99                | 1                |INV001    |PROD007     |

<br>
<br>

**TABLE : CART**

CART_ID       : VARCHAR PRIMARY KEY <br>
DATE_CREATED  : DATE <br>
TOTAL_AMT     : DECIMAL <br>
CUSTOMER_ID   : VARCHAR FOREIGN KEY <br>

EX:
|CART_ID| DATE_CREATED |CUSTOMER_ID | TOTAL_AMOUNT |
|-------|--------------|------------|--------------|
|CART001|2022-01-01    | 129.99     |CUST001       |

<br>
<br>

**TABLE : PAYMENT**

PAYMENT_ID     : INT PRIMARY KEY <br> 
PAYMENT_DATE   : DATE <br> 
PAYMENT_METHOD : VARCHAR <br> 
AMOUNT         : DECIMAL <br>
INVOICE_NO     : VARCHAR <br>

EX:
|PAYMENT_ID| PAYMENT_DATE| PAYMENT_METHOD| PAYMENT_AMOUNT| ORDER_ID |
|----------|-------------|---------------|---------------|----------|
|1         |2022-01-15   |Credit Card    | 129.99        |INV001    |

<br>
<br>

**TABLE : SHIPPPING**

SHIPPING_ID   : VARCHAR PRIMARY KEY <br>
TRACKING_NUM  : VARCHAR <br>
SHIPPING_DATE : DATE <br>
INVOICE_NO    : VARCHAR FOREIGN KEY <br>

EX:
|SHIPPING_ID| SHIPPING_DATE | TRACKING_NUMBER | SHIPPING_ADDRESS | ORDER_ID |
|-----------|---------------|-----------------|------------------|----------|
|GSA682879  |2023-02-25     |YGHDA56A8790A8765|PUNE              |23998     |

<br>
<br>

**TAGLE : REVIEW**

REVIEW_ID INT : PRIMARY KEY <br>
REVIEW_TEXT   : TEXT <br>
CUSTOMER_ID   : VARCHAR FOREIGN KEY <br>
PRODUCT_ID    : VARCHAR FOREIGN KEY <br>

EX:
|REVIEW_ID|CUSTOMER_ID | PRODUCT_ID |PRODUCT_RATING | REVIEW_TEXT | 
|---------|----------- |------------|----------------|------------|
|567896   | 101        |  860       |3.5/5           |GOOD        |

<br>
<br>

**TABLE : WISHLIST**

WISHLIST_ID   : INT PRIMARY KEY <br>
DATE_CREATED  : DATE <br> 
CUSTOMER_ID   : VARCHAR FOREIGN KEY <br> 

EX:
|WISHLIST_ID | DATE_CREATED |CUSTOMER_ID |
|------------|--------------|------------|
|HJAH465776  |2023-02-15    |101         |

<br>
<br>

**TABLE : PROMOTION**

PROMOTION_ID        : INT PRIMARY KEY <br>
DISCOUNT_PERCENTAGE : DECIMAL <br>
START_DATE          : DATE <br>
END_DATE            : DATE <br>
PRODUCT_ID          : VARCHAR FOREIGN KEY <br>

EX:
|PROMOTION_ID | START_DATE | END_DATE | DISCOUNT_PERCENTAGE |PRODUCT_ID |
|-------------|------------|----------|---------------------|-----------|
|GB262772     |2021-12-09  |2020-12-12|6%                   | 860       |


