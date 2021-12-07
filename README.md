# CSCI41-Project

## 4.4. Final Logical ERD:
```
Person (Person_ID, First_Name, Middle_Initial, Last_Name)
Agent (Agent_ID, Person_ID, Customer_Count)
Customer (Customer_ID, Person_ID, Agent_ID)

Order (Order_No, Agent_ID, Customer_ID, Amount_Due, Order_Date, Delivery_Address, Gift, Delivery_Schedule)
Ordered_Product (Order_No, Product_ID, Personalization, Discount, Quantity, Total)
Order_Recipient (Order_ID, Person_ID)

Product (Product_ID, Category, Color, Name,  Personalization_Limit,  Price, Stock, Product_Type)
Product_Features (Product_ID, Feature)
Product_Slotted (Product_ID, Slots)
Product_Dimensional (Product_ID, Height, Length, Width)
```