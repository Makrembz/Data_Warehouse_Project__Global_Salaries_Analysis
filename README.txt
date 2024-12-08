# Data Warehouse Project: Global Salaries Analysis

## **Project Overview**
This project focuses on analyzing global IT job market trends, with an emphasis on salaries, skills, and employment rates. The primary goal was to create a comprehensive **data warehouse** and an **interactive Power BI dashboard** to provide actionable insights into global IT job metrics and a detailed comparison with the Tunisian IT market.

---

## **Features**
- **Data Warehouse:** 
  - Star schema design for efficient querying and analysis.
  - Fact and dimension tables for salaries, skills, roles, and employment rates.
  - Scalable structure supporting diverse analytical use cases.
  
- **ETL Process:**
  - Extracted data from various sources, including AIJobs.net, Hugging Face, and OECD.
  - Transformed and cleaned data using SQL Server Integration Services (SSIS) and Python.
  - Loaded data into a SQL Server data warehouse.

- **Interactive Dashboards:**
  - Created with Power BI for real-time analysis.
  - Key visualizations include:
    - Salary comparisons by country, role, and experience level.
    - In-demand skills and their distribution across roles.
    - Employment trends and remote work insights.

---

## **Tools and Technologies**
- **Database:** Microsoft SQL Server
- **ETL Tool:** SQL Server Integration Services (SSIS)
- **Programming Language:** Python
- **Dashboard Tool:** Microsoft Power BI
- **Datasets:** AIJobs.net, Hugging Face, OECD, and custom datasets.

---

## **Methodology**
1. **Data Collection:**
   - Gathered datasets on salaries, skills, employment rates, country codes, and exchange rates from various reliable sources.
   
2. **Conceptual Design:**
   - Designed a star schema with:
     - Fact tables for salaries, skills, and employment rates.
     - Dimension tables for jobs, roles, employees, locations, currencies, and time.

3. **Data Warehouse Implementation:**
   - Created physical tables and relationships in SQL Server.
   - Used SSIS for data cleaning, transformation, and loading.

4. **Dashboard Development:**
   - Designed dashboards for:
     - Global IT market trends.
     - Tunisian IT market insights.
     - Skills and employment analysis.

---

## **Dashboards**
1. **IT Market Overview:**
   - Average salaries by country and employment type.
   - Salary trends over time by role and experience level.

2. **Global Comparison:**
   - Salary insights for remote work and company size.
   - Top countries with the highest average salaries.

3. **Tunisian IT Market:**
   - Local salary trends and employment rates.
   - Skill distribution for top roles like software engineers and data scientists.

4. **Skills Insights:**
   - Global demand for technical skills.
   - Employment trends in key IT regions.

---
