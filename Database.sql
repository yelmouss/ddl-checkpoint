-- Creating the PRODUCT table
CREATE TABLE PRODUCT (
    Product_Id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

-- Adding the Category column to the PRODUCT table
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

-- Creating the CUSTOMER table
CREATE TABLE CUSTOMER (
    Customer_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER NOT NULL
);

-- Creating the ORDERS table
CREATE TABLE ORDERS (
    Order_Id VARCHAR2(20) PRIMARY KEY,
    Customer_Id VARCHAR2(20) NOT NULL,
    Product_Id VARCHAR2(20) NOT NULL,
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY (Customer_Id) REFERENCES CUSTOMER(Customer_Id),
    FOREIGN KEY (Product_Id) REFERENCES PRODUCT(Product_Id)
);

-- Adding the OrderDate column to the ORDERS table with SYSDATE as the default value
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;