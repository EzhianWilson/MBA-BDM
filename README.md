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
3. Invoice
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

<pre>CUSTOMER_ID : VARCHAR PRIMARY KEY </pre>
<pre>NAME        : VARCHAR </pre>
<pre>EMAIL       : VARCHAR </pre>
<pre>PAYMENT_INFO: VARCHAR </pre>

EX:
|CUSTOMER_ID| NAME          | E_MAIL                |PAYMENT_INFO  |
|----------:| ------------- | ---------------------:|-------------:|
|CUST001    |John Smith     |john.smith@email.com   |VISA          |                   

<br>
<br>

**TABLE : PHONE_NO** <br>

<pre>PHONE_NO_ID  : INT PRIMARY KEY </pre>
<pre>CUSTOMER_ID  : VARCHAR </pre>
<pre>PHONE_NUMBER : VARCHAR </pre>

EX:
|PHONE_NO_ID|CUSTOMER_ID|PHONE_NUMBER|
|-----------|-----------|------------|
| 01        |CUST001    |6775424587  |

<br>
<br>

**TABLE : ADDRESS**

<pre>ADDRESS_ID                : INT PRIMARY KEY </pre>
<pre>CUSTOMER_ID               : VARCHAR FOREIGN KEY </pre>
<pre>SHIPPING_ID               : VARCHAR FOREIGN KEY </pre>
<pre>PLOT_STREET_BUILDING_NO   : VARCHAR </pre>
<pre>FIRST_LINE                : VARCHAR </pre>
<pre>SECOND_LINE               : VARCHAR </pre>
<pre>PINCODE                   : VARCHAR </pre>

EX:
|ADDRESS_ID| CUSTOMER_ID|  SHIPPING_ID| PLOT_STREET_BUILDING_NO| FIRST_LINE| SECOND_LINE| PINCODE|
|----------|------------|-------------|------------------------|-----------|------------|--------|
|   01     |CUST001     |             |       123              |  Main     |    St      |  600098|
<br>
<br>

**TABLE : PRODUCT**

<pre>PRODUCT_ID   : VARCHAR PRIMARY KEY </pre>
<pre>NAME         : VARCHAR </pre>
<pre>DESCRIPTION  : TEXT </pre>
<pre>CATEGORY     : VARCHAR </pre>
<pre>PRICE        : DECIMAL </pre>
<pre>BRAND        : VARCHAR </pre>
<pre>AVAILABLE    : BOOLEAN </pre>

EX:
|PRODUCT_ID| NAME          | DESCRIPTION                                          | CATEGORY              |PRICE     | BRAND        | AVAILABILITY |
|----------| ------------- |:--------------------------------------------------:  | ---------------------:|---------:|-------------:|-------------:|
|PROD001   |Laptop         |Thin and light laptop with long battery life          |Electronics            |899.99    |Dell          | TRUE         |

<br>
<br>

**TABLE : INVOICE**

<pre>INVOICE_NO    : VARCHAR PRIMARY KEY </pre>
<pre>ORDER_DATE    : DATE </pre>
<pre>TOTAL_AMT     : DECIMAL </pre>
<pre>STATUS        : VARCHAR </pre>
<pre>CUSTOMER_ID   : VARCHAR FOREIGN KEY </pre>

EX:
| ORDER_ID  | ORDER_DATE    | TOTAL AMOUNT    |ORDER_STATUS     |CUSTOMER_ID| 
| --------- |:-------------:| ---------------:|----------------:|-----------|
|INV001     |2022-01-01     | 129.99          |Paid             |CUST001    | 


<br>
<br>

**TABLE : ORDER_ITEMS**

<pre>ORDER_ITEM_ID : VARCHAR PRIMARY KEY </pre>
<pre>QUANTITY      : INT </pre>
<pre>UNIT_PRICE    : DECIMAL </pre>
<pre>INVOICE_NO    : VARCHAR FOREIGN KEY </pre>
<pre>PRODUCT_ID    : VARCHAR FOREIGN KEY </pre>

EX:
|ORDER_ITEMS_ID | ORDER_ITEM-UNITPRICE  | ORDER_ITEM_QTY   | ORDER_ID | PRODUCT_ID |
|---------------| --------------------- |:----------------:|----------|------------|
|OI001          | 129.99                | 1                |INV001    |PROD007     |

<br>
<br>

**TABLE : CART**

<pre>CART_ID       : VARCHAR PRIMARY KEY </pre>
<pre>DATE_CREATED  : DATE </pre>
<pre>TOTAL_AMT     : DECIMAL </pre>
<pre>CUSTOMER_ID   : VARCHAR FOREIGN KEY </pre>

EX:
|CART_ID| DATE_CREATED |CUSTOMER_ID | TOTAL_AMOUNT |
|-------|--------------|------------|--------------|
|CART001|2022-01-01    | 129.99     |CUST001       |

<br>
<br>

**TABLE : PAYMENT**

<pre>PAYMENT_ID     : INT PRIMARY KEY </pre>
<pre>PAYMENT_DATE   : DATE </pre>
<pre>PAYMENT_METHOD : VARCHAR </pre>
<pre>AMOUNT         : DECIMAL </pre>
<pre>INVOICE_NO     : VARCHAR </pre>

EX:
|PAYMENT_ID| PAYMENT_DATE| PAYMENT_METHOD| PAYMENT_AMOUNT| ORDER_ID |
|----------|-------------|---------------|---------------|----------|
|1         |2022-01-15   |Credit Card    | 129.99        |INV001    |

<br>
<br>

**TABLE : SHIPPPING**

<pre>SHIPPING_ID   : VARCHAR PRIMARY KEY </pre>
<pre>TRACKING_NUM  : VARCHAR </pre>
<pre>SHIPPING_DATE : DATE </pre>
<pre>INVOICE_NO    : VARCHAR FOREIGN KEY </pre>

EX:
|SHIPPING_ID| SHIPPING_DATE | TRACKING_NUMBER | SHIPPING_ADDRESS | ORDER_ID |
|-----------|---------------|-----------------|------------------|----------|
|GSA682879  |2023-02-25     |YGHDA56A8790A8765|PUNE              |23998     |

<br>
<br>

**TAGLE : REVIEW**

<pre>REVIEW_ID INT : PRIMARY KEY </pre>
<pre>REVIEW_TEXT   : TEXT </pre>
<pre>CUSTOMER_ID   : VARCHAR FOREIGN KEY </pre>
<pre>PRODUCT_ID    : VARCHAR FOREIGN KEY </pre>

EX:
|REVIEW_ID|CUSTOMER_ID | PRODUCT_ID |PRODUCT_RATING | REVIEW_TEXT | 
|---------|----------- |------------|----------------|------------|
|567896   | 101        |  860       |3.5/5           |GOOD        |

<br>
<br>

**TABLE : WISHLIST**

<pre>WISHLIST_ID   : INT PRIMARY KEY </pre>
<pre>DATE_CREATED  : DATE </pre>
<pre>CUSTOMER_ID   : VARCHAR FOREIGN KEY </pre>

EX:
|WISHLIST_ID | DATE_CREATED |CUSTOMER_ID |
|------------|--------------|------------|
|HJAH465776  |2023-02-15    |101         |

<br>
<br>

**TABLE : PROMOTION**

<pre>PROMOTION_ID        : INT PRIMARY KEY </pre>
<pre>DISCOUNT_PERCENTAGE : DECIMAL </pre>
<pre>START_DATE          : DATE </pre>
<pre>END_DATE            : DATE </pre>
<pre>PRODUCT_ID          : VARCHAR FOREIGN KEY </pre>

EX:
|PROMOTION_ID | START_DATE | END_DATE | DISCOUNT_PERCENTAGE |PRODUCT_ID |
|-------------|------------|----------|---------------------|-----------|
|GB262772     |2021-12-09  |2020-12-12|6%                   | 860       |


