# CSCI41-Project

## 4.4. Final Logical ERD:
```
PERSON (Person_ID, Person_Name)
AGENT (Agent_ID, Person_ID, Customer_Count)
CUSTOMER (Customer_ID, Person_ID, Agent_ID)

ORDERS (Order_No, Agent_ID, Customer_ID, Amount_Due, Order_Date, Schedule, Delivery_Address, Gift)
ORDERED_PRODUCT (Order_No, Product_ID, Discount, Personalization, Color, Quantity, Total)
ORDER_RECIPIENT (Order_No, Person_ID)

PRODUCT (Product_ID, Category, Product_Name, Personalization_Limit, Price)
PRODUCT_FEATURES (Product_ID, Feature)
PRODUCT_PEN_ORGANIZERS (Product_ID, Slots)
PRODUCT_FOLDERS (Product_ID, Height, Length, Width)
PRODUCT_PLANNERS (Product_ID, Height, Length, Width)
PRODUCT_COLOR_STOCK (Product_ID, Color, Stock)
```
