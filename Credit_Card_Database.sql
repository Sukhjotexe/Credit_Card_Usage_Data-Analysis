--To create table for credit card details
CREATE TABLE credit_card_details (
 Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

--to create table for customer data
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

--Now to get data from the CSV file
--First for the credit card details

--Needed to change the date/time style as the CSV had different format
SET datestyle TO 'ISO, DMY'; 

COPY credit_card_details
FROM 'C:\ProjectFiles\Raw Data\credit_card_data.csv' 
DELIMITER ',' 
CSV HEADER;


--Now to copy data for customer's data

COPY cust_detail
FROM 'C:\ProjectFiles\Raw Data\customer_demographics.csv' 
DELIMITER ',' 
CSV HEADER;

SELECT * FROM credit_card_details

--Adding additional data for credit cards
COPY credit_card_details
FROM 'C:\ProjectFiles\Raw Data\cc_add.csv' 
DELIMITER ',' 
CSV HEADER;


--adding additional data for customers
COPY cust_detail
FROM 'C:\ProjectFiles\Raw Data\cust_add.csv' 
DELIMITER ',' 
CSV HEADER;
