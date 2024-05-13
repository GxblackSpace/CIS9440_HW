# CIS9440_HW1 & HW2 City Wide Salary
## Analyzing Salary Differences Across Locations and Changes Over Time

**Instructor:** Weisui Xu  
**Date:** May 10, 2024  
**Course:** CIS 9440 - Data Warehousing and Analytics  

## Project Objective
To follow the Kimball Lifecycle in designing and developing a cloud-based Data Warehouse along with a functioning BI application to explore the salary differences across different locations and the salary trends over time.

## Data Sources
- [Citywide Salary Data](https://data.cityofnewyork.us/City-Government/Citywide-Payroll-Data-Fiscal-Year-/k397-673e/about_data)

## Project Tools
The tools used to construct this Data Warehouse include:

1. **Data Integration (ETL):** Python
2. **Data Warehousing:** Microsoft Azure Postgres
3. **Business Intelligence:** PowerBI

## Project Planning and Motivation
**Motivation for the project:**
Visual analysis of salary disparities across different boroughs and salary trends over time can aid governments, businesses, and individuals in better understanding salary structures, thereby facilitating informed strategy development and resource allocation.

**Issues or opportunities the project will address:**
- Assist governments and businesses in grasping salary trends for more effective fiscal planning and HR management.
- Provide individuals with salary trend information to support career development and residential location decisions.
- Reveal potential inequalities through salary data analysis, supporting the formulation of equitable policies.

**Business or organizational value of the project:**
This project will serve as a powerful tool for the New York City government to monitor and analyze the city's salary structure, aiding in the formulation of more precise and effective economic policies to optimize fiscal expenditures and enhance the quality of public services.

## Business Requirements Definition
List of Data Warehouse KPIs:

1. Average Regular Gross Salary by Borough
2. Average Base Salary by Fiscal Year and Pay Basis

## Dimensional Model
The project's dimensional model includes several fact and dimension tables to store and analyze key data such as salary figures, regional information, and time series.

## Business Intelligence Design and Development
Visualizations for each KPI:

### Visualization 1: Average Regular Gross Salary by Borough
This bar chart displays the average regular gross salary paid across five boroughs in New York City (Manhattan, Richmond, Queens, Brooklyn, Bronx). It highlights geographical disparities in income which could guide targeted fiscal policies.

### Visualization 2: Average Base Salary by Fiscal Year and Pay Basis
This line graph shows the average base salary trends over several years differentiated by the pay basis (per annum, per day, per hour, and prorated annual). This visualization provides insights into how salaries have changed over time under different employment terms and may influence strategic HR decisions.

