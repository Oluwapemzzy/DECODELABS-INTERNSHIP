# DECODELABS-INTERNSHIP
A month internship program that ran from 15th July 2026 to 15th August.

# OUTLINE
- [PROJECT 1](#PROJECT-1---DATA-CLEANING-USING-EXCEL-by-Oluwapelumi-Adedolapo-Oluwalana)
- [PROJECT 2](#PROJECT-2---EXPLORATORY-DATA-ANALYSIS-(EDA)-USING-EXCEL)
- [PROJECT 3](#PROJECT-3---E---COMMERCE-SALES-ANALYSIS-USING-SQL)

   
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
  
Checks included identifying negative values, unexpected zeros, and other inconsistencies that could impact analytical accuracy.

**8. Final Quality Assurance:** A final review of the dataset was conducted to confirm that:
- No duplicate Order IDs existed.
- Missing values had been appropriately handled.
- Data types were consistent across all columns.
- Text values were standardized.
- Numeric values had been validated.
- The dataset was clean, accurate, and ready for analysis.

#### CONCLUSION

The data cleaning process successfully transformed the raw dataset into a structured and reliable dataset suitable for analysis. By validating data integrity, correcting formatting issues, standardizing categorical values, and verifying calculations, the dataset now provides a dependable foundation for generating accurate insights and supporting data-driven decision-making.

---

## PROJECT 2 - EXPLORATORY DATA ANALYSIS (EDA) USING EXCEL 

Rather than simply summarizing the dataset, the exploratory analysis was designed to answer specific business questions.
Each analysis focuses on a practical business objective and concludes with actionable recommendations.

**1. Product Sales Analysis**

*Business Question:* Which products generated the highest customer demand?

Instead of measuring performance using revenue alone, I first analyzed sales volume to understand customer purchasing behavior.
Sales volume often reveals demand patterns that revenue cannot, particularly when products vary in price.

| Product | Quantity Sold |
|---------| --------------|
| Chair | 562 |
| Printer | 542 |
| Laptop | 535 |
| Desk | 508 |
| Tablet | 497 |
| Monitor | 480 |
| Phone | 411 |

**Validation**

Before accepting the Pivot Table results, I manually filtered the raw dataset and recalculated product quantities to verify the totals.
During this process, I initially observed discrepancies between my manual calculations and the Pivot Table. After reviewing the calculations, I discovered that the differences were caused by incorrect calculator inputs rather than errors in the dataset.
This additional validation strengthened confidence in the analytical results.

**Insights**

- Chairs recorded the highest sales volume, indicating strong customer demand.
- Phones recorded the lowest quantity sold, suggesting comparatively weaker demand.

Although Chairs led in unit sales, this analysis alone does not indicate revenue performance, making further analysis necessary.

**Business Recommendation**

Maintain adequate inventory levels for high-demand products while investigating factors contributing to the relatively lower demand for Phones.

**2. Gross Sales vs Realized Revenue**

This became the most important analytical decision in the project. Initially, I considered analyzing Total Price as revenue.
However, after reviewing the Order Status field, I recognized that treating cancelled and returned orders as realized revenue would overstate business performance.

To address this, I introduced two revenue metrics throughout the project:

*Gross Sales :* Represents the total value of all recorded orders regardless of fulfillment status.
*Realized Revenue:* Represents revenue generated only from successfully delivered orders.

Separating these two metrics provides a more realistic measure of financial performance.

**Gross Sales vs Realized Revenue**

|Price |	Gross Sales |	Realized Revenue |
|------| ------------|-------------------|
| Chair	| 195620.11 |	31465.83 |
| Printer |	195612.61 | 38054.73
|Laptop | 192126.56 | 40714.43
|Desk | 167459.93|	24225.78|
|Tablet|	186568.95| 31794.52	|
|Monitor |	175651.41|	35999.62	|
|Phone |	151722.39| 	40345.41 |	

**3. Order Status Analysis**

*Business Question:* How effectively is the company converting customer orders into completed deliveries?

**Objective**

The objective of this analysis was to evaluate the efficiency of the order fulfillment process by examining the distribution of orders across different order statuses.
Unlike sales analysis, which focuses on revenue generation, order status analysis measures operational performance. It helps identify potential inefficiencies within the fulfillment process that may negatively impact customer satisfaction and overall business profitability.

**Methodology**

A Pivot Table was created using the cleaned dataset with the following configuration:

*Rows:* Order Status

*Values:* Count of Order ID

To provide additional business context, two operational KPIs were calculated:
- Delivery Rate
- Cancellation Rate

The Delivery Rate was calculated as:

**(Delivered Orders ÷ Total Orders) × 100**

The Cancellation Rate was calculated as:

**(Cancelled Orders ÷ Total Orders) × 100**

Results

| Order Status | Number of Orders|
|--------------|-----------------|
|Cancelled |	250 |
| Returned|	247|
|Pending|	237|
| Shipped|	235|
|Delivered|	231|
|Total Orders	|1,200|

🔑 Key Performance Indicators

Delivery Rate: **19.25%**

Cancellation Rate: **20.83%**

**Analysis and Interpretation:**
The analysis reveals that only 231 out of 1,200 orders were successfully delivered, resulting in a delivery rate of 19.25%.
Conversely, 250 orders were cancelled, representing 20.83% of all transactions. This means that cancelled orders slightly exceeded successfully delivered orders.
Additionally, 247 orders were returned, while 237 orders remained pending and 235 orders had been shipped but not yet marked as delivered.
Rather than observing a sales problem, these findings point towards an operational challenge. A large proportion of customer orders failed to progress through the complete fulfillment cycle.
The relatively even distribution across all order statuses also suggests that inefficiencies may exist throughout multiple stages of the order fulfillment process rather than at a single point.

**Business Insights:**
One of the most significant findings from this project is that high sales activity does not necessarily translate into successful business outcomes.
Although the company generated substantial order activity, fewer than one in five orders reached the final delivery stage.
This operational inefficiency directly explains the considerable gap observed between Gross Sales and Realized Revenue in the previous analysis.
Improving delivery performance therefore represents one of the greatest opportunities for increasing realized revenue without necessarily increasing customer acquisition.

**Business Recommendations:**
Based on these findings, the following recommendations are proposed:
- Investigate the primary causes of order cancellations and implement corrective measures.
- Review logistics and delivery operations to improve order completion rates.
- Monitor pending orders to reduce fulfillment delays.
- Analyze returned orders to identify recurring product quality or customer satisfaction issues.
- Introduce operational KPIs such as Delivery Rate, Return Rate, and Cancellation Rate into regular management reporting.

**4. Payment Method Analysis**

*Business Question:* Which payment methods are most preferred by customers?

**Objective**
The objective of this analysis was to understand customer payment preferences and determine whether any payment method significantly influences purchasing behaviour.
Understanding payment preferences enables businesses to optimize payment options, improve customer convenience, and prioritize investments in digital payment infrastructure.

**Methodology**
A Pivot Table was created using:

*Rows:* Payment Method
*Values:* Count of Order ID

The frequency of each payment method was then compared.

**Results**
|Payment   Method	| Number of Orders
|------------------|-----------------|
| Online	 |            258 |
|Cash	  |             246 |
| Credit Card	|         234 |
| Debit Card |          232 |
| Gift Card    |        230 |
|Total	     |         1,200 |

**Analysis and Interpretation:**
Customer payment preferences were relatively balanced across all available payment methods.
Online payments recorded the highest number of transactions (258 orders), while Gift Cards recorded the lowest (230 orders).
However, the differences between payment methods were relatively small, suggesting that customers are comfortable using multiple payment options.
No payment method demonstrated overwhelming dominance.
This indicates that the company's payment ecosystem is well diversified and currently accommodates a wide range of customer preferences.

**Business Insights:**
The findings suggest that payment method is unlikely to be a major barrier to customer purchases.
The popularity of Online payments reflects the growing adoption of digital payment solutions and highlights the importance of maintaining reliable electronic payment systems.
At the same time, the continued use of Cash, Debit Cards, Credit Cards, and Gift Cards demonstrates the value of providing multiple payment alternatives.

**Business Recommendations:**
- Continue supporting multiple payment options to accommodate diverse customer preferences.
- Invest in improving the speed, reliability, and security of online payment systems.
- Consider offering promotional incentives for digital payment methods where appropriate.
- Periodically review payment trends to identify changes in customer behaviour.


**5. Referral Source Performance Analysis**

*Business Question:* Which marketing channels generate the greatest business value?

**Objective:**
The objective of this analysis was to evaluate the effectiveness of each referral source in terms of:
- Customer acquisition
- Gross Sales
- Realized Revenue

Rather than relying on a single performance metric, multiple measures were analyzed to provide a more comprehensive assessment of marketing effectiveness.

**Methodology:**
Three separate Pivot Tables were developed.

*Analysis 1:*
Orders by Referral Source
**Rows:** Referral Source
**Values:** Count of Order ID

*Analysis 2:*
Gross Sales by Referral Source
*Rows:* Referral Source
*Values:* Sum of Total Price

*Analysis 3*
Realized Revenue

A filter was applied:
Order Status = Delivered

*Rows:*
Referral Source

*Values:*
Sum of Total Price

Comparing these three analyses enabled a deeper understanding of customer acquisition quality rather than simply acquisition quantity.

**Results**

*Orders*
|Referral Source|	     Orders|
|---------------|-------------|
|Instagram|259|
|Email |               	250|
|Google	|              241|
|Facebook	   |         228|
|Referral	           | 222|

*Gross Sales*
|Referral Source	|      Gross Sales|
|-----------------|-----------------|
|Instagram	  |          $275,285.45|
|Email|$261,808.55|
|Google	       |       $250,441.48|
|Facebook	   |         $250,410.90|
|Referral	        |    $226,815.58|

*Realized Revenue*
|Referral Source	|      Realized Revenue|
|-----------------|----------------------|
|Email	   |               $64,553.52|
|Facebook	          |    $52,149.38|
|Instagram	        |      $51,299.56|
|Google	        |        $41,406.25|
|Referral	    |          $33,191.61|

**Analysis and Interpretation:**
Instagram generated the highest number of customer orders and the highest Gross Sales, making it the strongest acquisition channel based on initial transaction activity.
However, a different picture emerged when the analysis focused on Realized Revenue.
Email marketing generated the highest revenue from successfully delivered orders, outperforming Instagram despite acquiring fewer customers.

This suggests that customers acquired through Email campaigns were more likely to complete the purchasing journey successfully, while a larger proportion of Instagram-generated sales did not ultimately convert into realized revenue.
The Referral channel consistently recorded the lowest performance across all three measures, indicating comparatively lower marketing effectiveness.

**Business Insights:**
One of the most valuable findings from this analysis is that the channel generating the highest number of orders is not necessarily the channel generating the greatest business value.
If management relied solely on customer acquisition numbers, Instagram would appear to be the strongest marketing channel.
However, incorporating Realized Revenue into the analysis reveals that Email marketing delivers higher-quality conversions.
This reinforces the importance of evaluating marketing performance using both acquisition and fulfillment outcomes rather than acquisition metrics alone.

**Business Recommendations**
- Continue leveraging Instagram as a high-performing customer acquisition channel while investigating the reasons for lower realized revenue.
- Study the characteristics of Email campaigns to understand why they achieve higher delivery completion and revenue realization.
- Reassess investment in the Referral channel and identify opportunities to improve its performance.
- Incorporate Realized Revenue into marketing performance reporting to measure campaign effectiveness more accurately.

**6. Monthly Sales Trend Analysis**

*Business Question:* How did sales performance change over time during the reporting period?

**Objective:**
The objective of this analysis was to identify sales trends over time, highlight periods of exceptional performance, and provide insights that could support future forecasting and strategic planning.

**Methodology**
A Pivot Table was created using:

*Rows:* Date (Grouped by Year and Month)
*Values:* Sum of Total Price

The Date field was grouped into Years and Months to improve trend visualization and facilitate comparisons across reporting periods.

During the analysis, I deliberately considered the completeness of the data before drawing conclusions. Since the dataset only contains transactions from January to June 2025, I avoided making direct year-over-year comparisons between 2025 and the previous full calendar years.

**Results**
|Annual |  Gross Sales|
|--------|-------------|
|Year	 |  Gross Sales|
|2023	|   $552,643.24|
|2024	 |  $480,235.87|
|2025  |   $231,882.85|
**(Jan-Jun)**	

The highest monthly sales occurred in June 2024, with $68,068.54, while the lowest monthly sales were recorded in April 2023, with $27,751.71.

**Analysis and Interpretation:**
Sales fluctuated throughout the reporting period, with noticeable month-to-month variations rather than a consistent upward or downward trend.
The strong performance recorded in June 2024 may indicate the influence of seasonal demand, promotional campaigns, or other business activities that drove increased customer purchases during that period.
Although 2025 recorded lower cumulative sales than previous years, this observation should be interpreted with caution because the dataset covers only the first six months of the year. Comparing this partial-year data with complete annual figures would produce misleading conclusions.
By acknowledging this limitation, the analysis remains objective and avoids overstating trends that are not fully supported by the available data.

**Business Insights:**
The analysis demonstrates the importance of considering data completeness before making strategic comparisons. Rather than concluding that sales declined in 2025, the findings indicate that additional data is required before evaluating the year's overall performance.
The peak observed in June 2024 presents an opportunity for further investigation to determine which business activities contributed to the increase in sales. Understanding these factors may help replicate similar performance in future periods.

**Business Recommendations:**
- Investigate the business initiatives, promotional campaigns, or market conditions that contributed to the strong performance in June 2024.
- Continue monitoring monthly sales trends to support demand forecasting and inventory planning.
- Avoid making annual performance comparisons using incomplete datasets.
- Incorporate rolling monthly trend analysis into future reporting to provide a more timely view of business performance.


#### OVERALL EDA SUMMARY
The exploratory data analysis extended beyond descriptive reporting by examining customer demand, operational efficiency, marketing performance, and revenue realization from multiple perspectives
A recurring theme throughout the analysis was the distinction between Gross Sales and Realized Revenue, which provided a more accurate representation of business performance than total sales alone.

The findings revealed that strong customer acquisition and high order volumes do not necessarily translate into realized business value.
Operational factors such as cancellations, returns, and delivery completion significantly influenced the organization's ability to convert sales into revenue.
By combining product analysis, order fulfillment metrics, marketing channel evaluation, payment preferences, and sales trends,
the analysis offers a holistic view of business performance and highlights actionable opportunities to improve operational efficiency, marketing effectiveness, and revenue realization.

---
## DASHBOARD

#### Dashboard Overview

Following the completion of the exploratory data analysis, I developed an interactive dashboard to present the findings in a concise and visually intuitive format. The dashboard was designed to transform detailed analytical outputs into an executive-level reporting tool that enables stakeholders to monitor business performance at a glance.

Rather than displaying large volumes of raw data, the dashboard consolidates key performance indicators (KPIs), charts, and trend analyses into a single interface. This allows decision-makers to quickly identify patterns, evaluate performance, and make informed business decisions without navigating multiple worksheets.

The dashboard was built using Microsoft Excel/WPS Spreadsheet and leverages Pivot Tables, Pivot Charts, linked KPI cards, and dynamic references to ensure that updates to the underlying dataset are reflected automatically throughout the dashboard.

#### Dashboard Objectives
The dashboard was designed to achieve the following objectives:
- Provide a high-level overview of business performance.
- Present key performance indicators in an easily interpretable format.
- Visualize sales trends and product performance.
- Compare Gross Sales with Realized Revenue.
- Monitor operational performance using order status metrics.
- Evaluate marketing channel effectiveness.
- Support data-driven decision-making through interactive visual reporting.

#### Dashboard Components

The dashboard consists of six KPI cards and six supporting visualizations.

**Key Performance Indicators (KPIs):**

To provide an immediate overview of business performance, six KPI cards were developed.

*Total Orders:*

Displays the total number of customer orders recorded during the reporting period.

Value: 1,200 Orders

This KPI represents overall business activity and provides context for interpreting the remaining performance metrics.

*Unique Customers*

Displays the number of distinct customers who placed orders.

Value: 1,189 Customers

This metric differentiates total transactions from individual customer activity and helps assess customer reach.


*Gross Sales*

Displays the total monetary value of all recorded transactions.

Value: $1,264,761.96

Gross Sales represent the potential revenue generated before considering order completion or fulfillment status.


*Realized Revenue*

Displays revenue generated exclusively from successfully delivered orders.

Value: $242,600.32

Unlike Gross Sales, this KPI reflects actual revenue earned and provides a more realistic measure of business performance.

*Delivery Rate*

Displays the percentage of total orders that were successfully delivered.

Value: 19.25%

This KPI measures fulfillment efficiency and serves as an operational performance indicator.

*Cancellation Rate*

Displays the percentage of orders that were cancelled.

Value: 20.83%

Monitoring cancellations enables management to identify potential operational or customer experience challenges.


#### Dashboard Visualizations
The dashboard includes six visualizations designed to complement the KPI cards.

**A. Product Sales Analysis**

A horizontal bar chart displays the total quantity sold for each product.
This visualization quickly identifies the highest and lowest performing products based on customer demand.
The chart highlights Chairs as the highest-selling product and Phones as the lowest-selling product during the reporting period.

<img width="361" height="289" alt="image" src="https://github.com/user-attachments/assets/1cd9dcd4-1a37-414d-9e26-8320458e4b78" />


**B. Gross Sales vs. Realized Revenue by Product**

A clustered bar chart compares Gross Sales against Realized Revenue for each product category.
This visualization was intentionally included because Gross Sales alone can overstate business performance.
Comparing the two metrics reveals the extent to which operational challenges, such as cancellations, returns, and incomplete deliveries, reduce realized business income.
This chart provides one of the most important insights within the dashboard.

<img width="403" height="289" alt="image" src="https://github.com/user-attachments/assets/e982198a-b476-41a9-8250-3a6c1a4ed597" />


**C. Order Status Distribution**

A column chart illustrates the number of orders across each order status.
The visualization highlights the imbalance between completed deliveries and other order outcomes, including cancellations, returns, pending orders, and shipped orders.
This chart enables stakeholders to monitor operational efficiency and identify fulfillment bottlenecks.

<img width="376" height="289" alt="image" src="https://github.com/user-attachments/assets/dd78bce8-bc5c-4acd-b7aa-af7f77aa4d97" />


**D. Payment Method Distribution**

A bar chart summarizes customer payment preferences across the available payment methods.
The visualization demonstrates that customer preferences are relatively balanced, with Online payments recording the highest usage.
This insight supports decisions relating to payment infrastructure and customer convenience.

<img width="613" height="289" alt="image" src="https://github.com/user-attachments/assets/c9f83550-a8cd-47f8-aa96-08a682502c49" />


**E. Referral Source Performance**

A column chart compares marketing channels based on either order volume or realized revenue.
The visualization demonstrates that although Instagram generated the highest number of customer orders, Email produced the highest Realized Revenue.
This finding emphasizes the importance of evaluating marketing effectiveness using revenue quality rather than customer acquisition volume alone.

<img width="561" height="289" alt="image" src="https://github.com/user-attachments/assets/99eda647-b282-4177-a1ce-77c3904a0f1b" />


**F. Monthly Sales Trend**

A line chart illustrates monthly sales performance across the reporting period.
Grouping transactions by Year and Month allows stakeholders to identify sales patterns, seasonal fluctuations, and periods of exceptional performance.
The chart also provides valuable input for forecasting future sales and planning marketing campaigns.

<img width="1197" height="356" alt="image" src="https://github.com/user-attachments/assets/d8c241c3-0251-484f-bbd6-5b3ab279ed2b" />



**Dashboard Design Considerations**

Several design principles were applied during dashboard development to improve readability and user experience.

These include:
- A clean and uncluttered layout that prioritizes essential business information.
- Consistent color schemes to improve visual recognition.
- Clearly labelled charts and KPI cards for quick interpretation.
- Logical placement of dashboard components, beginning with summary KPIs followed by detailed analytical visualizations.
- Dynamic links between Pivot Tables and dashboard elements to ensure automatic updates whenever the source data changes.

These design decisions enhance usability while maintaining a professional appearance suitable for executive reporting.

**Business Value of the Dashboard**

The dashboard transforms raw transactional data into an interactive decision-support tool.
Rather than manually reviewing thousands of transaction records, stakeholders can immediately identify:

**Overall sales performance.**

- Customer purchasing patterns.
- Product demand.
- Marketing channel effectiveness.
- Operational inefficiencies.
- Revenue realization.
- Monthly sales trends.

The inclusion of both Gross Sales and Realized Revenue provides a more comprehensive assessment of business performance
and prevents misleading interpretations based solely on total transaction value.


#### CONCLUSION
The dashboard serves as the final output of the analytics process by consolidating key findings from the exploratory data analysis into a single interactive interface.
It enables stakeholders to monitor performance, identify emerging trends, and make informed business decisions based on reliable and well-presented data.
By combining dynamic KPI cards with carefully selected visualizations, the dashboard provides a clear and comprehensive overview of the organization's sales, marketing, customer behaviour, and operational performance.
The emphasis on Realized Revenue alongside Gross Sales further strengthens the dashboard's value by presenting a more accurate representation of financial outcomes, 
ensuring that strategic decisions are grounded in meaningful business metrics rather than transactional volume alone.


## PROJECT 3 - E-COMMERCE SALES ANALYSIS USING SQL

After completing my initial analysis in Excel, I used MySQL Workbench to perform additional business-focused analysis.

I used SQL to validate and extend some of the findings from my Excel analysis.

Some of the main SQL concepts I applied included:

- SELECT
- COUNT()
- COUNT(DISTINCT)
- SUM()
- MAX()
- ROUND()
- CASE WHEN
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- YEAR()
- MONTH()
- MONTHNAME()

I also learned how to combine multiple SQL functions to calculate business metrics rather than simply retrieve individual records.

#### Key SQL Findings

**Unique Customers**

I used COUNT(DISTINCT Customer_ID) to determine the number of unique customers.

I found:

1,189 unique customers

from 1,200 orders.

**Repeat Customers**

I used GROUP BY Customer_ID together with HAVING COUNT(*) > 1 to identify customers who had placed multiple orders.

I found 11 customers with repeat orders, with each of these customers placing two orders.

This indicated relatively limited repeat purchasing within the dataset.

#### Highest-Value Order

I used the **MAX() function** on Total_Price to identify the highest individual order value.

The highest order was:

**₦3,456.40**

This helped me understand the upper end of individual transaction values in the dataset.


#### Product Performance Analysis

I created a combined SQL analysis to evaluate products using several metrics at once.

|Product |	Revenue|	Orders |	AOV | Cancellation Rate |	Return Rate |
|--------|---------|--------|------|------------------|--------------|
|Chair|	₦195,620.11	|178|	₦1,098.99 |25.28% |	15.73%|
|Printer |	₦195,612.61	|181	|₦1,080.73|	19.34%|	20.99%|
|Laptop |	₦192,126.56	|173 |	₦1,110.56 | 20.23% |	22.54%|
|Tablet |	₦186,568.95|	179 |	₦1,042.28|	18.99%	|24.02% |
|Monitor|	₦175,651.41	|163|	₦1,077.62|	21.47%	|22.09%|
|Desk|	₦167,459.93	|170	|₦985.06|	20.59%	|18.82%|
|Phone|	₦151,722.39|	156	|₦972.58|	19.87%|	19.87%|

This was one of the most useful parts of my SQL analysis because it allowed me to evaluate financial performance and operational performance together.

#### Major Business Insights

Based on my combined Excel, dashboard, and SQL analysis, I identified several key findings.

**1. Chair is the highest-revenue product but has a high cancellation risk**

Chair generated the highest revenue at ₦195,620.11.

However, it also had the highest cancellation rate at 25.28%.

At the same time, it had the lowest return rate at 15.73%.

I therefore identified cancellation as the main area requiring attention for this product.

**2. Tablet has the highest return rate**

Tablet recorded the lowest cancellation rate at 18.99%, but the highest return rate at 24.02%.

This suggests that Tablet orders were less likely to be cancelled but more likely to be returned.

I would therefore recommend investigating the reasons behind Tablet returns.

**3. Laptop has the highest AOV**

Laptop had the highest average order value at ₦1,110.56.

This indicates that Laptop transactions generated the highest average revenue per order among the products.

However, its return rate of 22.54% means that its strong transaction value should be considered alongside its post-purchase performance.

**4. Phone has the weakest revenue performance**

Phone recorded the lowest:

Total revenue: ₦151,722.39

Total orders: 156

Average order value: ₦972.58

Its cancellation and return rates were both 19.87%.

This suggests that Phone may require further investigation from a sales-performance perspective.

**5. Credit Card has the highest cancellation rate**

Credit Card transactions had the highest cancellation rate at 23.08%.

I would investigate the customer journey and payment process associated with these transactions before drawing conclusions about the cause.

**6. Cash has the highest return rate**

Cash transactions recorded the highest return rate at 23.17%.

This could be an area for further investigation, particularly around the circumstances surrounding cash-based orders and returns.

**7. Instagram is the strongest referral source by revenue**

Instagram generated the highest revenue among the referral sources at:

₦275,285.45

It also recorded 259 orders, the highest order count among the referral sources analyzed.

This suggests that Instagram was an important acquisition channel within the dataset.


### SQL Analysis

#### SQL Analysis Approach

After completing my exploratory analysis in Excel, I used MySQL Workbench to investigate specific business questions and validate key findings from my earlier analysis.

I focused on using SQL to answer practical business questions rather than simply demonstrating SQL syntax. I used aggregation, filtering, grouping, conditional logic, and date functions to examine customer behaviour, product performance, order outcomes, payment methods, referral sources, and revenue trends.

**SQL techniques I applied**

|SQL Technique	| How I used it|
|--------------|---------------|
|COUNT()	|Counted orders and records|
|COUNT(DISTINCT)|	Identified unique customers|
|SUM()|	Calculated total revenue|
|MAX()|	Identified the highest-value order|
|ROUND()|	Rounded calculated values|
|CASE WHEN |	Calculated cancellation and return rates |
|WHERE|	Filtered specific order statuses|
|GROUP BY|	Summarized data by product, payment method, referral source, etc.|
|HAVING|	Identified customers with multiple orders|
|ORDER BY	|Ranked results|
|YEAR()	|Analyzed annual revenue|
|MONTH()	|Analyzed monthly revenue|
|MONTHNAME()|	Displayed month names|

**Key SQL Queries**

**1. Order Status Analysis**

I first examined the distribution of orders across different order statuses.

```SQL
SELECT 
    Order_Status,
    COUNT(*) AS Order_Count
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Order_Status;
```

This showed me how many orders were shipped, cancelled, returned, delivered, and pending.


**2. Revenue by Product**

I used SUM() to compare total revenue generated by each product.

```SQL
SELECT
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Total_Revenue DESC;
```

Chair generated the highest revenue at ₦195,620.11.

**3. Cancellation Rate**

I used CASE WHEN to identify cancelled orders and COUNT(*) to determine the total number of orders within each group.

```SQL
SELECT
    Product,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Cancellation_Rate DESC;
```

This showed that Chair had the highest cancellation rate at 25.28%.

**4. Return Rate**

I used the same conditional logic to calculate the return rate for each product.

```SQL
SELECT
    Product,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Returned' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Return_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Return_Rate DESC;
```

I found that Tablet had the highest return rate at 24.02%.

**5. Unique Customers**

I used COUNT(DISTINCT) to avoid counting the same customer more than once.

```SQL
SELECT
    COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;
```

This returned 1,189 unique customers from 1,200 orders.

**6. Repeat Customers**

I used GROUP BY and HAVING to identify customers who had placed more than one order.

``` SQL
SELECT
    Customer_ID,
    COUNT(*) AS Order_Count
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Customer_ID
HAVING COUNT(*) > 1
ORDER BY Order_Count DESC;
```

I identified 11 customers with more than one order, with each having two orders.

**7. Highest-Value Order**

I used MAX() to identify the largest individual order.

```SQL
SELECT
    MAX(Total_Price) AS Highest_Order_Value
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;
```

The highest individual order was ₦3,456.40.

**8. Payment Method and Order Status**

I grouped the data by both payment method and order status.

```SQL
SELECT
    Payment_Method,
    Order_Status,
    COUNT(*) AS Order_Count
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Payment_Method, Order_Status
ORDER BY Payment_Method, Order_Count DESC;
```

I then calculated cancellation and return rates by payment method to make the comparison fair.

**9. Final Product Performance Query**

I combined several metrics into one query to create a more complete view of product performance.

```SQL
SELECT
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Price) / COUNT(*), 2) AS Average_Order_Value,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Returned' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Return_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Total_Revenue DESC;
```

This became my main product-performance analysis because it allowed me to evaluate revenue, order volume, average order value, cancellation risk, and return risk together.

#### SQL Learning Outcome

Through this stage of the project, I moved from having little practical knowledge of SQL to being able to write queries that answer real business questions.

I learned that SQL is not just about retrieving data. I can use it to filter, summarize, compare, calculate, rank, and investigate patterns in business data.

I also learned the importance of choosing the right metric. For example, simply identifying the product with the most cancelled orders could be misleading because products have different order volumes. Calculating the cancellation rate provided a fairer comparison.

#### SQL Section Conclusion

My SQL analysis provided additional evidence for the findings from my Excel analysis while also allowing me to investigate customer behaviour, payment methods, and product-level operational risks in greater detail.

The most important findings from this stage were:

- I identified 1,189 unique customers from 1,200 orders.
- I found 11 customers with repeat purchases.
- The highest individual order was ₦3,456.40.
- Chair generated the highest product revenue at ₦195,620.11.
- Chair had the highest cancellation rate at 25.28%.
- Tablet had the highest return rate at 24.02%.
- Laptop had the highest average order value at ₦1,110.56.
- Credit Card had the highest cancellation rate among payment methods at 23.08%.
- Cash had the highest return rate among payment methods at 23.17%.
- Instagram generated the highest referral-source revenue at ₦275,285.45.


### PROJECT 4 - POWERBI


This completed my SQL analysis phase.
