# MBA-BDM
###### [Ezhilan Wilson - 22121128](https://github.com/EzhianWilson)
###### [Tejasvi B - 22121006](https://github.com/tejbasu)

### **Introduction:**

As a Business Analyst, I have been tasked with planning the database structure for an online shopping domain. Online shopping has become a rapidly growing industry in recent years, with more and more people choosing to shop online for the convenience it offers. Therefore, it is essential to have a well-designed and efficient database structure to ensure that the online shopping experience is seamless for customers.

### **Domain/Industry:** Online Shopping

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


### ER DIAGRAM - ONLINE SHOPPING
![ER DIAGRAM](https://user-images.githubusercontent.com/126074324/234166650-55ba937e-c04e-4053-9aed-0cfdee67a23d.jpg)


### Here is the Table design of the ER DIAGRAM

**TABLE : CUSTOMER**

|C_ID| NAME          | ADDRESS       | E_MAIL                |PHONE_NO. | PAYMENT_INFO |
|---:| ------------- |:-------------:| ---------------------:|---------:|-------------:|
|101 |   Souyma      |Bengaluru      |Souyma4@gmail.com      |7865498712|  COD         |         
|102 |    Karan      |Kochi          |Karankumar9@gmail.com  |9976540987| Credit Card  |
|103 |  Shaun Sabu   |Sikkim         |Sabushaun32@gmail.com  |6578943210|COD           |
|104 |  Tara Singh   |Bihar          |Tarasingh67@gmail.com  |8618212489|UPI           |
|105 |  Nandhini     |Tamil Nadu     |Nandus532@gmail.com    |8763043210|Debit Card    |


**TABLE : PRODUCT**

| NAME              | DESCRIPTION   | CATEGORY              |PRICE     | BRAND        | AVAILABILITY |
| -------------     |:-------------:| ---------------------:|---------:|-------------:|-------------:|
|Kurta              | Cotton        |Girls/ Women/Men       |599       |Westside      |Yes           |
|Shoes              | Sportswear    |Girl/Boys/ Women/Men   |999       |Nike          |Yes           |
|Accessories        | Lipstick      | Women                 |350       |MyGlam        |Yes           |
|One Plus Nord CE2  | Phones        |ALL                    |13,000    |One Plus      |Yes           |
|Water Bottle       |Brass          |ALL                    |450       |Milton        |Yes           |


**TABLE : ORDER**

| O_ID  | ORDER_DATE    | TOTAL AMOUNT    |ORDER_STATUS     |
| ----- |:-------------:| ---------------:|----------------:|
|23998  |2023-02-21     |450              |Shipped          |
|98767  |2023-05-30     |599              |Out to Deliver   |
|34569  |2023-01-28     |999              |Order Conformed  |
|78656  |2023-03-09     |13,000           |Shipped          |
|46759  |2023-04-01     |350              |Delivered        |

**TABLE : ORDER_ITEMS**

|OI_ID | ORDER_ITEM-UNITPRICE  | ORDER_ITEM_QTY   |
|------| --------------------- |:----------------:|
|863458|450                    |2                 |
|783412|350                    |1                 |
|428679|13,000                 |1                 |
|897766|599                    |5                 |
|090865|350                    |8                 |


**TABLE : CART**

|CART_ID| DATE_CREATED | TOTAL_AMOUNT |
|-------|--------------|--------------|


**TABLE : PAYMENT**

|PAYMENT_ID| PAYMENT_DATE| PAYMENT_METHOD| PAYMENT_AMOUNT|
|----------|-------------|---------------|---------------|


**TABLE : SHIPPPING**

|SHIPPING_ID| SHIPPING_DATE | TRACKING_NUMBER | SHIPPING_ADDRESS |
|-----------|---------------|-----------------|------------------|


**TAGLE : REVIEW**

|REVIEW_ID| 
