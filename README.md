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
![ER DIAGRAM](https://user-images.githubusercontent.com/126074324/234166650-55ba937e-c04e-4053-9aed-0cfdee67a23d.jpg)


## Table design for ER Diagram

**TABLE : CUSTOMER**

|CUSTOMER_ID| NAME          | ADDRESS       | E_MAIL                |PHONE_NO. | PAYMENT_INFO |
|----------:| ------------- |:-------------:| ---------------------:|---------:|-------------:|
|CUS001     |John Smith     |123 Main St    |john.smith@email.com   |6775424587|VISA          |                   
|CUS002     |Jane Doe       |456 Oak Ave    |jane.doe@email.com     |9873451290|MASTERCARD    |                 
|CUS003     |Bob Johnson    |789 Maple Dr   |bob.johnson@email.com  |8760983456|DISCOVER      |
|CUS004     |Sara Lee       |111 Cherry Ln  |sara.lee@email.com     |9081232309|AMERICAEXPRESS|                    
|CUS005     |David Brown    |222 Pine St    |david.brown@email.com  |8760983412|VISA          |       


**TABLE : PRODUCT**

|PRODUCT_ID| NAME          | DESCRIPTION                                             | CATEGORY              |PRICE     | BRAND        | AVAILABILITY |
|----------| ------------- |:--------------------------------------------------:     | ---------------------:|---------:|-------------:|-------------:|
|PROD001   |Laptop         |Thin and light laptop with long battery life             |Electronics            |899.99    |Dell          | TRUE         |
|PROD002   |Sneakers       |Comfortable sneakers for everyday wear                   |Footwear               | 59.99    |Nike          |TRUE          |  
|PROD003   |Headphones     |Noise-cancelling headphones with high-quality audi       |Electronics            | 249.99   |Bose          | TRUE         |      
|PROD004   |T-Shirt        |Soft and breathable cotton t-shirt with a simple design  |Apparel                | 19.99    |H&M           | TRUE         |
|PROD005   |Smartwatch     |Smartwatch with fitness tracking and heart rate monitoring|Electronics           |299.99    |Apple         | FALSE        |


**TABLE : ORDER_TABLE**

| ORDER_ID  | ORDER_DATE    | TOTAL AMOUNT    |ORDER_STATUS     |CUSTOMER_ID| 
| --------- |:-------------:| ---------------:|----------------:|-----------|
|INV001     |2022-01-01     | 129.99          |Paid             |CUST001    | 
|INV002     |2022-01-02     | 49.99           |Paid             |CUST003    |          
|INV003     |2022-01-03     |899.99           |Paid             |CUST005    | 
|INV004     |2022-01-04     |249.99           |Pending          |CUST002    | 
|INV005     |2022-01-05     |29.99            |Paid             |CUST007    | 

**TABLE : ORDER_ITEMS**

|ORDER_ITEMS_ID | ORDER_ITEM-UNITPRICE  | ORDER_ITEM_QTY   | ORDER_ID | PRODUCT_ID |
|---------------| --------------------- |:----------------:|----------|------------|
|OI001          | 129.99                | 1                |INV001    |PROD007     |
|OI002          | 49.99                 | 2                |INV002    |PROD010     |
|OI003          | 899.99                | 1                |INV003    |PROD001     |
|OI003          |899.99                 | 1                |INV003    |PROD001     |
|OI005          |29.99                  | 3                |INV005    |PROD007     |


**TABLE : CART**

|CART_ID| DATE_CREATED |CUSTOMER_ID | TOTAL_AMOUNT |
|-------|--------------|------------|--------------|
|CART001|2022-01-01    | 129.99     |CUST001       |
|CART002|2022-01-02    | 49.99      |CUST003       |
|CART003|2022-01-03    | 899.99     |CUST005       |
|CART004|2022-01-04    | 249.99     |CUST002       |
|CART005|2022-01-05    | 29.99      |CUST007       |

**TABLE : PAYMENT**

|PAYMENT_ID| PAYMENT_DATE| PAYMENT_METHOD| PAYMENT_AMOUNT| ORDER_ID |
|----------|-------------|---------------|---------------|----------|
|1         |2022-01-15   |Credit Card    | 129.99        |INV001    |
|2         |2022-01-16   |PayPal         | 49.99         |INV002    |
|3         |2022-01-17   |Credit Card    | 899.99        |INV003    |
|4         |2022-01-18   |PayPal         | 249.99        |INV004    |
|5         |2022-01-19   |Credit Card    | 89.97         |INV005    |

**TABLE : SHIPPPING**

|SHIPPING_ID| SHIPPING_DATE | TRACKING_NUMBER | SHIPPING_ADDRESS | ORDER_ID |
|-----------|---------------|-----------------|------------------|----------|
|GSA682879  |2023-02-25     |YGHDA56A8790A8765|PUNE              |23998     |
|BKL890879  |2023-06-04     |JKJQHS567889087GD|BHOPAL            |98767     |
|WET678979  |2023-01-29     |BHDKN637891980914|BENGALURU         |34569     |
|HJJ098765  |2023-03-15     |HGSBND09823481DKN|BIHAR             |78656     |
|ETY986590  |2023-04-06     |QIUO89346419DN234|GUJURAT           |46759     |

**TAGLE : REVIEW**

|REVIEW_ID|CUSTOMER_ID | PRODUCT_ID |PRODUCT_RATING | REVIEW_TEXT | 
|---------|----------- |------------|----------------|------------|
|567896   | 101        |  860       |3.5/5           |GOOD        |
|676899   | 102        |  346       |3.8/5           |BETTER      |
|096449   | 103        |  246       |2.0/5           |BAD         |
|096489   | 104        |  098       |3.6/5           |GOOD        |
|754280   | 104        |  346       |1.0/5           |WORST       |

**TABLE : WISHLIST**

|WISHLIST_ID | DATE_CREATED |CUSTOMER_ID |
|------------|--------------|------------|
|HJAH465776  |2023-02-15    ||101        |
|JHDSB09875  |2023-06-01    |102         |
|OIUHJ98765  |2023-01-24    |103         |
|IQWUDGH567  |2023-03-10    |104         |
|WUYGH09861  |2023-04-04    |105         |

**TABLE : PROMOTION**

|PROMOTION_ID | START_DATE | END_DATE | DISCOUNT_PERCENTAGE |PRODUCT_ID |
|-------------|------------|----------|---------------------|-----------|
|GB262772     |2021-12-09  |2020-12-12|6%                   | 860       |
|UA456885     |2019-02-21  |2021-07-04|12%                  | 346       |
|QT456895     |2015-03-19  |2019-04-01|3%                   | 246       |
|QG833790     |2019-13-13  |2023-01-04|25%                  | 104       |
|JN987648     |2017-07-01  |2021-02-05|30%                  | 105       |

