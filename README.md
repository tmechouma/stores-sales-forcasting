# stores-sales-forcasting
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
The following workflow outlines the general process i conceived based on my experience. While we will follow it as a guideline, not all steps may be applicable to our specific case. It can be considered as a checklist.

  1. **Data Assessment and Preparation**  
  2. **Feature Engineering**  
  3. **ML Model Selection**  
  4. **ML Model Evaluation**  
  5. **ML Model Deployment**  


## 1. Data Assessment and Preparation : 

###  1.1 Data Assessment : 

Data assessment is a fundamental responsibility in a data scientist's workflow. Ensuring data is accurate, complete, and semantically coherent is essential—otherwise, machine learning models risk becoming biased, overfitted, or fundamentally flawed. As the saying goes: Garbage in, garbage out. High-quality inputs are non-negotiable for reliable, actionable outcomes. This step ends with a report that allows to have a clear idea about the quality of our data.

####  1.1.1 Accuracy : 
-  Inspect the columns (conventional nomination of the columns)
-  Cross-check with trusted sources if possible (example we need to check TPS and TVQ using Revenu Quebec API)
-  Inspect the characters encoding latin-1, UTF-8 etc (to be able to read the data and avoid information and data loss)
-  Type conversion (data, time, money, etc)
-  Duplicate Detection (To enhance the performance and avoid biases)
-  Outliers Detection (Z-Score, IQR)
-  Spell check for textual data 
-  Class Distribution to detect harmful imbalacing that may cause biases : Oversampling (SMOTE, ADASYN, random duplication) - Undersampling (random, Tomek links, cluster centroids) etc.

####  1.1.2 Completeness :
-  Identify columns with missing values
-  Determine percentage of missing values per feature
-  Decide on strategy (imputation, deletion, flagging) 
-  Visualization of Missing Values( missingno, seaborn, heatmaps, barres)

####  1.1.3 Coherence :
- Business rules integrity check 
- Modeling Logic integrity check (foreign keys, primary keys, Unique ID, etc)
- Temporal logic integrity (data of birth can't before transaction date )
- Spacial logic integrity 

###  1.2 Data Cleaning and Preparation: 
This step applies corrective measures from the data quality report to clean and prepare the raw data.
-  Remove special caracters, formatting, uncapitalization  of letters and remove space, etc.
-  Rename columns for columns matching purposes (if needed) 
-  Handle missing values (imputation, conditional removal etc) (imputation : Median, Average, k-NN etc)
-  Correction based on the cross-check with trusted sources (trusted dataset)
-  Convert types (data, time, money, etc)
-  Remove duplicated rows
-  Remove, replace or impute outliers
-  Correct the text based on Spell check
-  Correction class Distribution using oversampling, undersampling and Class weighting
-  Missing values imputation or conditional removal
-  Correction based on the business rules 
-  Correction based on the modeling logic 
-  Correction based on the temporal logic 
-  Correction based on the spacial logic 

## 2. Featuring Engineering : 

- Data normalization and standardisation
- Variables transformation if needed (log, binning)
- Target variable determination
- Encoding categorical variables (One-Hot, Label Encoding).
- Split dataset (Train-Validation-Test)
- Remove low-variance features
- Features categorization 
- Creating new features from existing ones
- Evaluate need for dimensionality reduction (PCA, umap, t-SNE)
- Check for highly correlated features
- Features selection

## 3. ML Model Selection : 

- Clarify the Business Objective : What decision/action do we want to support with the model ? In our case: increase sales.
- Identification of the target variable: in our case sales and its continuous 
- Identification of the possible sub-objectives: Identify high-performing products/customers - Recommend product promotions - Detect patterns in high/low sales performance
- Define the Nature of the Learning Problem (induction, deduction or abduction) : Regression (Forecasting future sales) - Classification (Flag products needing promotion ) - Clustering (Segment customers/products
) - Causal inference (Determine if discount causes more sales) - Association rules (	Cross-sell products)

## 4. ML Model Evaluation :

- Define Evaluation Metrics : (Regression: MAE, MSE, RMSE, R²) - (Classification: Accuracy, Precision, Recall, F1-Score, AUC-ROC) - (Clustering: Silhouette Score, Davies-Bouldin Index)
- Cross-Validation (K-Fold Cross-Validation, Stratified K-Fold (for imbalanced datasets), Time Series CV if applicable)  to ensure reliability and generalizability.
- Compare Model Performance : Baseline vs. Trained Models)  - Different Algorithms like Random Forest and XGBoost etc.
- Error Analysis : Confusion Matrix (Classification) -  Residual Plots (Regression) - Feature Importance Analysis.
- Bias-Variance Tradeoff Check :Underfitting = High Bias → Improve model complexity / Overfitting = High Variance → Regularization, More Data.
- Final Validation on Test Set : Unseen data evaluation - Ensure generalization capability.
- Document Results : Log metrics for reproducibility - Compare against business objectives.
  
## 5. ML Model Deployment :

-  Model Packaging : Save the trained model in joblib, pickle, or ONNX format -  Include preprocessing dependencies.
-  Dockerization : Create dockerfile - Build and test locally.
-  Cloud Service Selection : AWS - GCP - Azure - Serverless AWS Lambda etc.
-  API Development : FastAPI or Flask etc.
-  CI/CD Pipeline : GitHub Actions / AWS CodePipeline
-  Monitoring & Scaling : Logging: Track predictions/errors CloudWatch, etc - Scaling : Kubernetes (EKS/GKE), etc. - Drift Detection: Monitor data/model performance decay.

