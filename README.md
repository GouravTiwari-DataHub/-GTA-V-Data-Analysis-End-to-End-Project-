# GTA V Global Sales & Player Analytics (End to End Project)

A 360° data analysis project exploring 10+ years of Grand Theft Auto V sales, player engagement, and monetization data — through SQL, Excel, Python, and Power BI.

## About the Project

Grand Theft Auto V is one of the best-selling entertainment products of all time. This project simulates and analyzes a global, transaction-level dataset spanning 2013–2018+, covering revenue, units sold, GTA Online vs. Story Mode engagement, monetization streams (DLC & Shark Cards), regional economics, and customer sentiment.


Rather than sticking to a single tool, this project answers the same business questions four different ways — as a demonstration of end-to-end data analytics versatility:

### Querying — SQL: Aggregations, window functions, CTEs, and correlated subqueries

### Reporting — Excel: Pivot tables & summary dashboards for stakeholders

### Deep Dive — Python: Data cleaning, EDA, correlation analysis, and revenue forecasting

### Visualization — Power BI: Interactive, drillable business dashboard




## Key Questions Answered

* How has global revenue evolved year-over-year, and what's the cumulative growth trend?

* Which countries and regions drive the most units sold and revenue?

* Is GTA Online cannibalizing Story Mode engagement — and where?

* How much of the revenue mix comes from DLC vs. Shark Card purchases?

* How do sale events affect discount depth and refund rates?

* Does GDP per capita correlate with regional spending power?

* What does the next 12 months of revenue look like? (Prophet forecast)

# Tools & Techniques Used

### This project intentionally recreates the same analysis across four different tools to showcase versatility in the analytics toolchain.

## 1. SQL Analysis — Business Questions in Pure Query Logic


11 queries covering the full analytical spectrum:


### Query and Technique

1. Total revenue by year- GROUP BY

2. Top 10 countries by units sold- ORDER BY + LIMIT

3. Regions with avg. rating > 4.5-	HAVING

4. Year-over-year revenue growth-	LAG() window function

5. Country revenue ranking per year-	RANK() OVER (PARTITION BY)

6. Cumulative (running) revenue-	SUM() OVER with frame clause

7. GTA Online growth vs. Story Mode decline-	CTEs + LAG()

8. Revenue per capita by GDP tier-	CASE WHEN segmentation

9. Countries above global avg. selling price-	Correlated subquery

10. Monetization mix by year (DLC vs. Shark Cards)-	Multi-metric aggregation

11. Discount % vs. refund rate by sale event-	Cross-metric comparison





## 2. Excel Analysis — Stakeholder-Ready Pivots

A clean, presentation-style workbook with:


* Introduction & Conclusion sheets framing the story.

* 7 Pivot Tables covering revenue/units, country-wise sales, platform trends, player engagement, revenue sources, customer growth, and customer sentiment.

* Digital vs. Physical sales share tracked across platform generations (PS3 → PS5 / Xbox 360 → Series X|S).



## 3. Python Analysis — EDA + Forecasting

* Built with pandas, numpy, matplotlib, seaborn, and prophet:

* Data Cleaning: null handling (special_event, major_sale_event), duplicate & negative-value checks, outlier detection via boxplots

* Feature Engineering: synthetic date column from year + month for time-series work

* Correlation Heatmap: relationships between revenue, discounting, marketing spend, GDP, and internet penetration

* Segment Analysis: revenue & refund rate by sales channel, region vs. macroeconomic factors, GDP vs. revenue scatter plots

* Time-Series & Seasonality: revenue trends over time, holiday vs. non-holiday spending, platform generation transitions

* Forecasting: 12-month revenue forecast using Facebook Prophet, with confidence intervals (yhat_lower / yhat_upper)



## 4. Power BI Dashboard — Interactive Storytelling

### A drillable dashboard tying every insight above into a single interactive view — filter by year, region, platform, and sales channel to explore revenue, player base, and monetization trends visually.

## Dashboard Preview

### 1. Executive Overview
<img width="1170" height="732" alt="Dashboard 1  Executive Summery" src="https://github.com/user-attachments/assets/b5a47b75-11d1-4077-8521-15e9ef5aa1ae" />


### 2. Player Engagement
<img width="1171" height="732" alt="Dashboard 2  Player Engagement" src="https://github.com/user-attachments/assets/cc2e15ad-a0f6-4e26-8c2c-41f3ffff7d31" />

### 3. Monetization
<img width="1170" height="728" alt="Dashboard 3  Monetization" src="https://github.com/user-attachments/assets/d3dfda9c-f215-471f-82de-fe54d5c078f7" />


### 4. Market Intelligence
<img width="1172" height="732" alt="Dashboard 4  Market Intelligence" src="https://github.com/user-attachments/assets/2f5aeb89-e0b5-45fc-b3d5-7da6ada8d926" />

### 5. Sales and Performance
<img width="1170" height="727" alt="Dashboard 5  Sales Performance" src="https://github.com/user-attachments/assets/162d1f38-4907-4f67-92a1-88a50eb06e46" />



# Tech Stack

SQL · Python (Pandas, NumPy, Matplotlib, Seaborn, Prophet) · Microsoft Excel · Power BI · Jupyter Notebook



# Highlights

* 11 SQL queries spanning aggregation → window functions → CTEs → correlated subqueries

* 7 Excel pivot tables built for non-technical stakeholders

* Full Python EDA pipeline with cleaning, correlation, segmentation, and time-series forecasting

* Power BI dashboard for interactive exploration
 Multi-year, multi-country, multi-platform dataset (2013–2018+)




# 🌟 Enjoyed This?

Cool, prove it. Smash that star button — it's free, it takes half a second, and unlike GTA Online, there's no loading screen.

Not because I need the validation, but because GitHub's algorithm apparently does.

Didn't enjoy it? Also fine. Take it up with the [Issues tab](../../issues) — I promise I read those faster than Rockstar reads bug reports.

No cap, no NPCs were harmed in the making of this analysis — just my sleep schedule.



## Note: Some CSV files may not preview properly on GitHub due to formatting, but they can be downloaded and used without issues.



# 👤 Author

Gourav Tiwari — Data Analyst 📧 gouravtiwari3034@gmail.com | 🔗(https://www.linkedin.com/in/gourav-tiwari-92a43b225/?lipi=urn%3Ali%3Apage%3Ad_flagship3_notifications%3BYocoX2DYSomk2ZW0beGb6g%3D%3D)
