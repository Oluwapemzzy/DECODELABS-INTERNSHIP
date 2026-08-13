# DECODELABS-INTERNSHIP
A month internship program that ran from 15th July 2026 to 15th August.


## PROJECT 1 - DATA CLEANING USING EXCEL by Oluwapelumi Adedolapo Oluwalana

### Project Overview
Data is only valuable when it can be trusted and translated into actionable business decisions. This project demonstrates my end-to-end analytics workflow using Microsoft Excel/WPS Spreadsheet, beginning with raw transactional data and ending with an interactive executive dashboard.
Rather than treating the dataset as a collection of numbers, I approached it as a real business scenario. My objective was not only to summarize sales performance but also to evaluate the quality of the data, validate key business metrics, identify operational inefficiencies, and uncover insights that could support strategic decision-making.
Throughout the analysis, I deliberately questioned the dataset instead of accepting every value at face value. This included validating revenue calculations, confirming Pivot Table outputs against the raw data, distinguishing between gross sales and realized revenue, and ensuring that every conclusion was supported by the data.
The final deliverable is an interactive dashboard that enables stakeholders to monitor sales performance, customer behavior, marketing effectiveness, and order fulfillment through meaningful KPIs and visualizations.


### Business Problem
An e-commerce business generates thousands of transactions across multiple products, payment methods, and marketing channels. While transactional data is readily available, it does not automatically answer critical business questions such as:
a .Which products generate the highest demand? 
b. Which marketing channel delivers the greatest business value? 
c. How effective is the company's order fulfillment process? 
d. Are reported sales actually translating into completed deliveries? 
e. Which operational issues are reducing revenue? 

The objective of this project was to transform raw transactional records into business intelligence that answers these questions.


### Project Objectives
The objectives of this analysis were to:
- Evaluate the quality and integrity of the dataset before analysis.
- Clean and prepare the data for accurate reporting.
- Validate key business metrics rather than assuming their correctness.
- Measure product performance.
- Compare gross sales with realized revenue.
- Evaluate customer acquisition channels.
- Assess operational performance through order fulfillment metrics.
- Build an interactive dashboard suitable for executive reporting.


### Dataset Overview
The dataset contains 1,200 e-commerce transactions recorded between January 2023 and June 2025.
Each transaction includes customer information, product purchased, quantity ordered, pricing details, payment method, marketing source, shipping information, and order status.

The datasets contains the following fields:
- Order ID 
- Date
- Customer ID
- Product
- Quantity
- Unit Price
- Shipping Address
- Payment Method
- Order Status
- Tracking Number
- Items in Cart
- Coupon Code
- Referral Source
- Total Price

### Data Cleaning Process

**1. Duplicate and Missing Value Assessment:**
Before performing any analysis, I conducted a structured data quality assessment to ensure that the dataset was reliable. The first validation step was to examine the dataset for duplicate records.
Since Order ID uniquely identifies each transaction, I verified that there were no duplicate Order IDs.
I also evaluated the Customer ID column to determine the number of repeat customers versus unique customers. During this process, I discovered a discrepancy between different counting methods. Instead of accepting the initial result, I investigated further by comparing COUNT(), Pivot Table distinct counts, and duplicate highlighting until the inconsistency was resolved.
This additional validation increased confidence in the integrity of the customer data before proceeding with the analysis.

**Missing Values**

Each column was inspected for blank values.
The only column containing missing values was Coupon Code.
Rather than treating these blanks as data quality issues, I considered the business context. Since customers are not required to apply coupons during checkout, the missing values represented legitimate non-usage rather than incomplete data.
For this reason, no imputation or deletion was performed.


**2. Data Format Inspection:**
Each column was reviewed to ensure values followed the appropriate format.
This included verifying:
- Date fields were stored in a consistent date format.
- Numeric fields contained valid numerical values.
- Text fields maintained consistent formatting throughout the dataset.


**3. Total Price Validation:**
Instead of assuming that the pricing information was accurate, I independently verified the relationship between Quantity, Unit Price, and Total Price.
A calculated column was created using:

**Quantity × Unit Price**

The calculated result was then compared against the recorded Total Price using the IF() function.
This validation confirmed that pricing calculations were consistent throughout the dataset.

**4. Data Type Verification:** The dataset was reviewed to ensure every column contained the appropriate data type.
Examples include:
- Dates stored as Date values.
- Quantity, Unit Price, Items in Cart, and Total Price stored as numeric values.
- Customer and product information stored as text.
- Any inconsistencies identified during this process were corrected.

**5. Standardization of Categorical Values:** Categorical fields were standardized to eliminate inconsistencies caused by variations in text formatting.
The following columns were reviewed and standardized:
- Payment Method
- Order Status
- Referral Source
- Product
This ensured that identical values were represented consistently across the dataset.

**6. Removal of Leading and Trailing Spaces**
The TRIM() function was applied to relevant text columns to remove unnecessary leading and trailing spaces that could affect filtering, grouping, and analysis.

**7. Validation of Numeric Fields**
Numeric columns were reviewed for invalid or inconsistent values.
The following fields were validated:
- Quantity
- Unit Price
- Items in Cart
- Total Price
- 
Checks included identifying negative values, unexpected zeros, and other inconsistencies that could impact analytical accuracy.

**8. Final Quality Assurance:** A final review of the dataset was conducted to confirm that:
- No duplicate Order IDs existed.
- Missing values had been appropriately handled.
- Data types were consistent across all columns.
- Text values were standardized.
- Numeric values had been validated.
- The dataset was clean, accurate, and ready for analysis.








