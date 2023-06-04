/* Preparing dataset */
CREATE TABLE data_sales (
    Retailer TEXT,
	Retailer_ID TEXT,
	Invoice_Date DATE,
	Region TEXT,
	State TEXT,
	City TEXT,
	Product	TEXT,
    Price_per_unit INT,	
    Units_sold	INT,
    Total_Sales INT,
	Operating_Profit INT,
	Operating_Margin INT,
	Sales_Method TEXT);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Adidas US Sales Datasets.csv'
INTO TABLE data_sales
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from data_sales;

/* Data Analysis */

/* Retailer with most selling item */
select Retailer, sum(Units_sold) as total_unit_sold from data_sales group by retailer order by total_unit_sold desc;
/* Retailer with most selling item is West Gear */

/* The most sold item from West Gear Retailer */
select Product, sum(Units_sold) as total_unit_sold_wg 
from data_sales where Retailer = "West Gear" 
group by product order by total_unit_sold_wg desc;




