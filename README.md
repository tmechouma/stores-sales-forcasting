# sotres-sales-forcasting
Forcasting Stores Sales 
## Context :
  Some store managers are trying to figure out how to increase sales in their stores. They have historical sales data from various stores at their disposal.

## Dataset description :  

The dataset represents sales transactions table (2121 rows and 21 columns).

  | Column Name     | Description |
|-----------------|-------------|
| Row ID          | Unique identifier for each row in the dataset. |
| Order ID        | Unique identifier for each order placed. |
| Order Date      | Date when the order was placed. |
| Ship Date       | Date when the order was shipped. |
| Ship Mode       | Delivery method used to ship the order. |
| Customer ID     | Unique identifier for each customer. |
| Customer Name   | Full name of the customer. |
| Segment         | Customer segment. |
| Country         | Country where the order was placed. |
| City            | City where the customer is located. |
| State           | State/province where the customer is located. |
| Postal Code     | ZIP or postal code of the customer's address. |
| Region          | Geographic region. |
| Product ID      | Unique identifier for each product. |
| Category        | Main category of the product. |
| Sub-Category    | More specific classification within the product category. |
| Product Name    | Full name of the product. |
| Sales           | Total revenue generated from the sale. |
| Quantity        | Number of units sold. |
| Discount        | Discount applied to the sale. |
| Profit          | Net profit earned from the sale. |

## Question : 
How can historical sales data from multiple stores be analyzed to identify strategies for increasing sales ?

## Objective : 
Develop a Python ML approach to help store managers forecast future sales.

## Workflow :
The following workflow outlines the general process i conceived based on my experience. While we will follow it as a guideline, not all steps may be applicable to our specific case.

## 1. Data Assessment and Preparation : 

###  1.1 Data Assessment : 

####  1.1.1 Accuracy : 
-  Inspect the columns (conventional nomination of the columns)
-  Cross-check with trusted sources if possible (example we need to check TPS and TVQ using Revenu Quebec API)
-  Inspect the characters encoding (to be able to read the data and avoid information and data loss)
-  Duplicate Detection (To enhance the performance and avoid biases)
-  Outliers Detection ()
-  Spelling check for textual data

####  1.1.2 Completeness :
-  Missing Values

####  1.1.2 Coherence :


###  1.2 Data Cleaning : 

## 2. Featuring Engineering : 

## 3. ML Model Selection : 

## 4. ML Model Evaluation :

## 5. ML Model Deployment :

