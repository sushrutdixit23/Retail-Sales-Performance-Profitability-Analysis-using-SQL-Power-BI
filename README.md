# Retail Sales Performance & Profitability Analysis

**SQL + Power BI Portfolio Project**

## Overview

This project analyzes multi-year retail sales data to evaluate revenue growth, profitability, customer segment performance, regional trends, and the impact of discounting on profit margins. The objective is to simulate a real-world **business analyst / data analyst engagement** similar to projects handled at Big-4 consulting firms.

The project uses **SQL for data preparation and analysis** and **Power BI for data modeling, DAX calculations, and dashboard visualization**.

## Business Problem

Retail leadership lacks clear visibility into:

* Revenue and profit trends over time
* Regional profitability differences
* Customer segment contribution to profit
* Profit erosion caused by discounting strategies

Without structured analysis, decision-making around pricing, product mix, and regional focus remains inefficient.

## Objectives

* Analyze total revenue and profit trends across time
* Identify high-performing and underperforming regions
* Compare profitability across customer segments
* Evaluate the relationship between discounts and profit
* Deliver actionable insights through an executive dashboard

## Dataset

* **Source:** Retail transactional dataset (Global Superstore–style data)
* **Time Period:** 2012–2015
* **Key Fields:**

  * Order Date
  * Region
  * Customer Segment
  * Product Name
  * Sales
  * Profit
  * Discount

## Tools & Technologies

* **SQL (MySQL / DBeaver)** – Data cleaning, aggregation, analytical queries
* **Power BI Desktop** – Data modeling, DAX, dashboard creation
* **DAX** – Time intelligence and KPI calculations
* **Excel / CSV** – Source data format

## SQL Analysis Highlights

* Revenue and profit aggregation by month and year
* Profit margin calculation at product level
* Discount vs profit impact analysis
* Regional profitability comparison

Example:

SELECT
    region,
    SUM(profit) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_profit DESC;

## Power BI Data Model

* **Fact Table:** Sales transactions
* **Dimension Tables:** Date, Region, Customer Segment, Product
* **Schema:** Star schema for performance and clarity

## Key DAX Measures

* Total Revenue
* Total Profit
* Profit Margin %
* 12-Month Moving Average Revenue

These measures enable trend analysis and executive-level reporting.

## Dashboard Pages

### 1. Executive Overview

* Total Revenue, Total Profit, Profit Margin
* Revenue trend with 12-month moving average
* Profit by region

### 2. Product & Discount Analysis

* Product-level revenue and margin
* Identification of loss-making products
* Discount vs profit visualization

### 3. Customer Segment Analysis

* Revenue and profit by customer segment
* Segment comparison using interactive filters

## Key Insights

* Revenue shows seasonal fluctuations with long-term growth
* Certain products generate revenue but consistently lose money
* High discount levels strongly correlate with profit erosion
* Consumer segment contributes the highest absolute profit
* Asian and European regions lead in profitability

## Business Recommendations

* Re-evaluate discount strategies for low-margin products
* Rationalize or redesign loss-making product lines
* Focus growth initiatives on high-profit regions
* Apply segment-based pricing and promotional strategies

## Outcome

This project demonstrates end-to-end **business analytics capability**, combining SQL, Power BI, and business storytelling. It reflects the type of analytical work expected in **Big-4 consulting and analytics roles**.


## Author

**Sushrut Dixit**
Aspiring Business Analyst | SQL | Power BI | Analytics
