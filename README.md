# MBA-BDM
###### [Ezhilan Wilson - 22121128](https://github.com/EzhianWilson)
###### [Tejasvi B - 22121006](https://github.com/tejbasu)

## **Introduction:**

As a Business Analyst, I have been tasked with planning the database structure for an online shopping domain. Online shopping has become a rapidly growing industry in recent years, with more and more people choosing to shop online for the convenience it offers. Therefore, it is essential to have a well-designed and efficient database structure to ensure that the online shopping experience is seamless for customers.

## **Domain/Industry:** Online Shopping

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


## ER Diagram - ONLINE SHOPPING
![ER DIAGRAM](https://user-images.githubusercontent.com/126074324/234166650-55ba937e-c04e-4053-9aed-0cfdee67a23d.jpg)


## Table design for ER Diagram

**TABLE : CUSTOMER**

|CUSTOMER_ID| NAME          | ADDRESS       | E_MAIL                |PHONE_NO. | PAYMENT_INFO |ORDER_ID | 
|----------:| ------------- |:-------------:| ---------------------:|---------:|-------------:|---------|
|101        |   Souyma      |Bengaluru      |Souyma4@gmail.com      |7865498712|COD           |         |                    
|102        |    Karan      |Kochi          |Karankumar9@gmail.com  |9976540987|Credit Card   |         |                    
|103        |  Shaun Sabu   |Sikkim         |Sabushaun32@gmail.com  |6578943210|COD           |         |          
|104        |  Tara Singh   |Bihar          |Tarasingh67@gmail.com  |8618212489|UPI           |         |                   
|105        |  Nandhini     |Tamil Nadu     |Nandus532@gmail.com    |8763043210|Debit Card    |         |        


**TABLE : PRODUCT**

|P_ID| NAME              | DESCRIPTION   | CATEGORY              |PRICE     | BRAND        | AVAILABILITY |PROMOTION_ID | WISHLIST_ID |
|----| -------------     |:-------------:| ---------------------:|---------:|-------------:|-------------:|-------------|-------------|
|860 |Kurta              | Cotton        |Girls/ Women/Men       |599       |Westside      |Yes           |             |             |
|346 |Shoes              | Sportswear    |Girl/Boys/ Women/Men   |999       |Nike          |Yes           |             |             |
|246 |Accessories        | Lipstick      | Women                 |350       |MyGlam        |Yes           |             |             |
|098 |One Plus Nord CE2  | Phones        |ALL                    |13,000    |One Plus      |Yes           |             |             |
|346 |Water Bottle       |Brass          |ALL                    |450       |Milton        |Yes           |             |             |


**TABLE : ORDER**

| ORDER_ID  | ORDER_DATE    | TOTAL AMOUNT    |ORDER_STATUS     |PRODUCT_ID | PAYMENT_ID | SHIPPING_ID | ORDER_ITEMS_ID |
| --------- |:-------------:| ---------------:|----------------:|-----------|------------|-------------|----------------|
|23998      |2023-02-21     |450              |Shipped          |           |            |             |                | 
|98767      |2023-05-30     |599              |Out to Deliver   |           |            |             |                |          
|34569      |2023-01-28     |999              |Order Conformed  |           |            |             |                | 
|78656      |2023-03-09     |13,000           |Shipped          |           |            |             |                | 
|46759      |2023-04-01     |350              |Delivered        |           |            |             |                |

**TABLE : ORDER_ITEMS**

|ORDER_ITEMS_ID | ORDER_ITEM-UNITPRICE  | ORDER_ITEM_QTY   |
|---------------| --------------------- |:----------------:|
|863458         |450                    |2                 |
|783412         |350                    |1                 |
|428679         |13,000                 |1                 |
|897766         |599                    |5                 |
|090865         |350                    |8                 |


**TABLE : CART**

|CART_ID| DATE_CREATED |CUSTOMER_ID | TOTAL_AMOUNT |
|-------|--------------|------------|--------------|
|786    |2023-02-21    |            |599           |
|890    |2023-05-02    |            |13,000        |
|459    |2023-03-06    |            |499           |
|098    |2023-04-01    |            |350           |
|466    |2023-04-11    |            |450           |

**TABLE : PAYMENT**

|PAYMENT_ID| PAYMENT_DATE| PAYMENT_METHOD| PAYMENT_AMOUNT|
|----------|-------------|---------------|---------------|
|GZF578    |2023-02-21   |UPI            |999            |
|FA7609    |2023-05-30   |UPI            |13,000         |
|LK7679    |2023-01-28   |UPI            |599            |
|AH9098    |2023-03-09   |UPI            |450            |
|QU7511    |2023-04-01   |UPI            |350            |

**TABLE : SHIPPPING**

|SHIPPING_ID| SHIPPING_DATE | TRACKING_NUMBER | SHIPPING_ADDRESS |
|-----------|---------------|-----------------|------------------|
|GSA682879  |2023-02-25     |YGHDA56A8790A8765|PUNE              |
|GSA682879  |2023-06-04     |JKJQHS567889087GD|BHOPAL            |
|GSA682879  |2023-01-29     |BHDKN637891980914|BENGALURU         |
|GSA682879  |2023-03-15     |HGSBND09823481DKN|BIHAR             |
|GSA682879  |2023-04-06     |QIUO89346419DN234|GUJURAT           |

**TAGLE : REVIEW**

|REVIEW_ID|CUSTOMER_ID | PRODUCT_RATING | REVIEW_TEXT|
|---------|----------- |----------------|------------|
|567896   |            |3.5/5           |GOOD        |
|676899   |            |3.8/5           |BETTER      |
|096449   |            |2.0/5           |BAD         |
|096489   |            |3.6/5           |GOOD        |
|754280   |            |1.0/5           |WORST       |

**TABLE : WISHLIST**

|WISHLIST_ID | DATE_CREATED |
|------------|--------------|
|HJAH465776  |2023-02-15    |
|JHDSB09875  |2023-06-01    |
|OIUHJ98765  |2023-01-24    |
|IQWUDGH567  |2023-03-10    |
|WUYGH09861  |2023-04-04    |

**TABLE : PROMOTION**

|PROMOTION_ID | START_DATE | END_DATE | DISCOUNT_PERCENTAGE |
|-------------|------------|----------|---------------------|
|GB262772     |2021-12-09  |2020-12-12|6%                   |
|UA456885     |2019-02-21  |2021-07-04|12%                  |
|QT456895     |2015-03-19  |2019-04-01|3%                   |
|QG833790     |2019-13-13  |2023-01-04|25%                  |
|JN987648     |2017-07-01  |2021-02-05|30%                  |

