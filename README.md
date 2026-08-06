# 📊 Customer Churn Analysis using SQL

End-to-end SQL customer churn analysis that includes solving real-world telecom business problems using SQL by analyzing telecom customer churn,
uncovering customer behavior , customer segmentation ,churn drivers , and actionable business insights.
---

# 📑 Table of Contents

- 📊 Project Overview
- 🎯 Business Problem
- 🎯 Project Objectives
- 📂 Dataset Information
- 🛠 Tools Used
- 🔄 Project Workflow
- 🧹 Data Validation & Cleaning
- 📈 Key Performance Indicators (KPIs)
- 📊 Business Analysis
- 💻 Advanced SQL Concepts Used
- 🔍 Key Insights
- 💡 Business Recommendations
- 🏁 Conclusion
- 📁 Repository Structure
- 📸 Project Screenshots
- 🚀 Future Enhancements
- 📄 License
- 👩‍💻 Author


---
## 📌 Project Overview


This project analyzes customer churn for a telecom company using **SQL Server** to identify the key factors influencing customer attrition and provide data-driven business recommendations.

The analysis was performed on the **IBM Telco Customer Churn** dataset containing **7,043 customer records** and **21 business attributes**, including customer demographics, service subscriptions, contract types, payment methods, tenure, monthly charges, total charges, and churn status.

### Project Highlights

- 📊 Analyzed **7,043** customer records
- 📋 Examined **21** customer attributes
- 📉 Identified **1,869 churned customers** and **5,174 retained customers**
- 📈 Calculated an overall churn rate of **26.54%**
- 💰 Analyzed over **$456,116.60** in monthly recurring revenue
- 💵 Average monthly charge: **$64.76**
- ⏳ Average customer tenure: **32.37 months**
- 📊 Developed **26 Key Performance Indicators (KPIs)**
- 🔍 Answered more than **20 business-critical analytical questions**
- 💻 Applied advanced SQL concepts including **CTEs, CASE statements, Window Functions, Subqueries, and Views**
- 💡 Delivered actionable insights and business recommendations to improve customer retention and reduce churn.
---
## 🎯 Business Problem

The telecom company is experiencing customer churn, resulting in revenue loss and reduced customer lifetime value.

The business wants to answer questions such as:

- Which customers are most likely to churn?
- Which contract types have the highest churn?
- Does Tech Support reduce churn?
- Which payment methods contribute the highest revenue?
- Which customers are considered high-risk?
- How can churn be reduced through data-driven decisions?
---
## 🎯 Project Objectives

The objectives of this project are:

- Analyze customer churn behavior.
- Identify factors contributing to customer churn.
- Measure business performance using KPIs.
- Perform customer segmentation based on churn risk.
- Apply advanced SQL concepts to solve real-world business problems.
- Provide actionable recommendations to improve customer retention.
---
## 📂 Dataset Information

- Dataset Name: IBM Telco Customer Churn Dataset
- Total Records: 7,043
- Total Columns: 21

### Dataset Features

- Customer Demographics
- Internet Services
- Phone Services
- Contract Information
- Payment Methods
- Monthly Charges
- Total Charges
- Customer Tenure
- Churn Status
---

## 🛠 Tools Used

- SQL Server Management Studio (SSMS)
- Microsoft SQL Server
- SQL
- GitHub
---
## 💻 SQL Concepts Used

### Basic SQL

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- ROUND()

### Intermediate SQL

- CASE WHEN
- Aggregate Functions
- Subqueries
- Common Table Expressions (CTEs)

### Advanced SQL

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- CREATE VIEW
- Window Functions
---
## 🔄 Project Workflow

1. Database Creation
2. Data Validation
3. Data Cleaning
4. KPI Analysis
5. Business Analysis
6. Advanced SQL Analysis
7. Customer Risk Segmentation
8. Business Insights
9. Business Recommendations
---
# 📄 Executive Summary

Customer churn is one of the most significant challenges faced by subscription-based businesses, directly impacting revenue, customer lifetime value, and business growth. This project analyzes customer churn using the IBM Telco Customer Churn dataset to identify the major factors contributing to customer attrition and provide actionable recommendations to improve customer retention.

The analysis was conducted on
**7,043 customer records** with 
**21 business attributes** using 
**SQL Server**.
The project includes data validation, data cleaning, KPI analysis, business analysis, customer segmentation, and advanced SQL techniques such as CASE statements, Common Table Expressions (CTEs), Window Functions, Subqueries, and Views.

A total of **25 Key Performance Indicators (KPIs)** and **20 business questions** were analyzed to understand customer behavior across demographics, service subscriptions, contract types, payment methods, tenure groups, and revenue.

The analysis revealed that contract type, customer tenure, payment method, internet services, and value-added services significantly influence customer churn. Based on these findings, strategic recommendations were developed to help reduce churn, improve customer satisfaction, and increase long-term customer retention.
---
# 📈 KPI Summary

| KPI | Value |
|------|------:|
| Total Customers | 7,043 |
| Active Customers | 5,174 |
| Churned Customers | 1,869 |
| Overall Churn Rate | 26.54% |
| Retention Rate | 73.46% |
| Average Monthly Charges | $64.76 |
| Average Customer Tenure | 32.37 Months |
| Total Monthly Revenue | $456,116.60 |
---
# 🔍 Key Business Insights

1. The overall customer churn rate is **26.54%**, indicating that approximately one out of every four customers has discontinued the service.

2. Customers with **Month-to-Month contracts** exhibit the highest churn rate, making contract type one of the strongest predictors of churn.

3. Customers with **Two-Year contracts** demonstrate the lowest churn rate, suggesting that long-term contracts significantly improve customer retention.

4. Customers with **shorter tenure (0–12 months)** are considerably more likely to churn than long-term customers.

5. Customers without **Tech Support** experience substantially higher churn rates compared to those who subscribe to technical support services.

6. Customers without **Online Security** are more likely to leave the company, indicating that additional service offerings contribute to customer retention.

7. **Electronic Check** is associated with the highest customer churn among payment methods.

8. Customers using **Fiber Optic Internet Service** show higher churn compared to DSL customers.

9. High-paying customers contribute a significant portion of monthly recurring revenue, making their retention critical for business growth.

10. Customer risk segmentation identified a group of high-risk customers who should be prioritized for proactive retention campaigns.
---
# 💡 Business Recommendations

Based on the analysis, the following recommendations are proposed:

1. Encourage customers on Month-to-Month contracts to upgrade to One-Year or Two-Year contracts through promotional discounts.

2. Improve the onboarding experience during the first 12 months, as new customers have the highest likelihood of churn.

3. Bundle Tech Support and Online Security with internet plans to improve customer satisfaction and reduce churn.

4. Develop targeted retention campaigns for customers identified as High Risk through customer segmentation.

5. Encourage customers using Electronic Check to switch to automatic payment methods by offering incentives.

6. Provide exclusive loyalty rewards and personalized offers for high-value customers to improve retention.

7. Continuously monitor churn trends using SQL dashboards and periodic customer behavior analysis.
---
# 🏁 Conclusion

This project demonstrates how SQL can be used to solve real-world business problems by transforming raw customer data into meaningful business insights.

Through comprehensive data validation, cleaning, KPI analysis, business analysis, and advanced SQL techniques, the project successfully identified the major drivers of customer churn and proposed practical recommendations to improve customer retention.

The project highlights the importance of data-driven decision-making and showcases the application of SQL in solving business challenges faced by subscription-based organizations.
---
Customer-Churn-SQL/
│
├── 📂 Dataset
│   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
│
├── 📂 SQL
│   ├── 01_Database_Setup.sql
│   ├── 02_Data_Cleaning.sql
│   ├── 03_Customer_KPIs.sql
│   ├── 04_Revenue_KPIs.sql
│   ├── 05_Tenure_KPIs.sql
│   ├── 06_Service_KPIs.sql
│   ├── 07_Contract_KPIs.sql
│   ├── 08_Business_Analysis.sql
│   └── 09_Advanced_SQL.sql
│
├── 📂 Screenshots
│   ├── Database_Import.png
│   ├── KPI_Results.png
│   ├── Business_Analysis.png
│   ├── Advanced_SQL.png
│   └── Views.png
│
├── README.md
└── LICENSE

---

# 📄 License

This project is licensed under the MIT License.

---


# 👩‍💻 About Me

Hi, I'm **Sai Jyothi**, a Computer Science undergraduate with a strong interest in **Aalyticss**. I enjoy building data solutions that transform raw data into meaningful business insights through well-designed ETL pipelines and analytical data models.

This project reflects my hands-on experience with SQL Server, datasets,sql topics,advanced sql. topics I continuously work on improving my technical skills by building practical, real-world projects.

I'm always open to learning, collaborating, and exploring opportunities in **Data Engineering**, **Data Analytics**, and **Business Intelligence**.

---
## 📬 Connect with Me

- 💼 LinkedIn: https://www.linkedin.com/in/venkata-sai-jyothi-ponnada-296999334
- 💻 GitHub: https://github.com/SaiJyothi3867

---
