🎮 GTA V Global Sales & Player Analytics

A 360° data analysis project exploring 10+ years of Grand Theft Auto V sales, player engagement, and monetization data — through SQL, Excel, Python, and Power BI.

About the Project

Grand Theft Auto V is one of the best-selling entertainment products of all time. This project simulates and analyzes a global, transaction-level dataset spanning 2013–2018+, covering revenue, units sold, GTA Online vs. Story Mode engagement, monetization streams (DLC & Shark Cards), regional economics, and customer sentiment.


Rather than sticking to a single tool, this project answers the same business questions four different ways — as a demonstration of end-to-end data analytics versatility:

Querying — SQL: Aggregations, window functions, CTEs, and correlated subqueries

Reporting — Excel: Pivot tables & summary dashboards for stakeholders

Deep Dive — Python: Data cleaning, EDA, correlation analysis, and revenue forecasting

Visualization — Power BI: Interactive, drillable business dashboard


Key Questions Answered

💰 How has global revenue evolved year-over-year, and what's the cumulative growth trend?

🌍 Which countries and regions drive the most units sold and revenue?

🎮 Is GTA Online cannibalizing Story Mode engagement — and where?

💳 How much of the revenue mix comes from DLC vs. Shark Card purchases?

🏆 How do sale events affect discount depth and refund rates?

📉 Does GDP per capita correlate with regional spending power?

🔮 What does the next 12 months of revenue look like? (Prophet forecast)







Repository Structure

GTA-V-Sales-Analytics/
├── README.md
├── data/
│   └── GTA_V_Raw_Dataset.csv          # Source dataset (transaction-level)
├── sql/
│   └── GTA_V_SQL_analysis.sql         # 11 analytical SQL queries
├── excel/
│   └── GTA_V_Excel_Analysis.xlsx      # Pivot tables & summary dashboard
├── python/
│   └── GTA_V_Python_Analysis.ipynb    # EDA, correlation, forecasting
├── powerbi/
│   └── GTA_V_Power_BI_Analysis.pbix   # Interactive dashboard
└── assets/
    └── screenshots/                    # Dashboard & chart previews







1. SQL Analysis — Business Questions in Pure Query Logic


11 queries covering the full analytical spectrum:
#	Query and Technique

1	Total revenue by year- GROUP BY

2	Top 10 countries by units sold- ORDER BY + LIMIT

3	Regions with avg. rating > 4.5-	HAVING

4	Year-over-year revenue growth-	LAG() window function

5	Country revenue ranking per year-	RANK() OVER (PARTITION BY)

6	Cumulative (running) revenue-	SUM() OVER with frame clause

7	GTA Online growth vs. Story Mode decline-	CTEs + LAG()

8	Revenue per capita by GDP tier-	CASE WHEN segmentation

9	Countries above global avg. selling price-	Correlated subquery

10	Monetization mix by year (DLC vs. Shark Cards)-	Multi-metric aggregation

11	Discount % vs. refund rate by sale event-	Cross-metric comparison





2. Excel Analysis — Stakeholder-Ready Pivots

A clean, presentation-style workbook with:


Introduction & Conclusion sheets framing the story


7 Pivot Tables covering revenue/units, country-wise sales, platform trends, player engagement, revenue sources, customer growth, and customer sentiment


Digital vs. Physical sales share tracked across platform generations (PS3 → PS5 / Xbox 360 → Series X|S)



3. Python Analysis — EDA + Forecasting

Built with pandas, numpy, matplotlib, seaborn, and prophet:


✅ Data Cleaning: null handling (special_event, major_sale_event), duplicate & negative-value checks, outlier detection via boxplots

📅 Feature Engineering: synthetic date column from year + month for time-series work

🔥 Correlation Heatmap: relationships between revenue, discounting, marketing spend, GDP, and internet penetration

🧩 Segment Analysis: revenue & refund rate by sales channel, region vs. macroeconomic factors, GDP vs. revenue scatter plots

⏳ Time-Series & Seasonality: revenue trends over time, holiday vs. non-holiday spending, platform generation transitions

🔮 Forecasting: 12-month revenue forecast using Facebook Prophet, with confidence intervals (yhat_lower / yhat_upper)



4. Power BI Dashboard — Interactive Storytelling

A drillable dashboard tying every insight above into a single interactive view — filter by year, region, platform, and sales channel to explore revenue, player base, and monetization trends visually.

📊 Dashboard Preview

Executive Overview
<img width="1168" height="733" alt="Screenshot 2026-07-28 121824" src="https://github.com/user-attachments/assets/c4d63ae1-98bb-4433-96d7-0f775705e781" />

Player Engagement
<img width="1167" height="731" alt="Screenshot 2026-07-28 121848" src="https://github.com/user-attachments/assets/66ae1f36-4926-450c-a044-26c54017b9d9" />

Monetization
<img width="1168" height="732" alt="Screenshot 2026-07-28 122707" src="https://github.com/user-attachments/assets/caf495a5-369f-4c77-8a9a-6331119bd2bb" />

Market Intelligence
<img width="1170" height="730" alt="Screenshot 2026-07-28 121922" src="https://github.com/user-attachments/assets/760e9547-f6cb-4b0a-b03d-84a01e34de14" />

Sales and Performance
<img width="1166" height="728" alt="Screenshot 2026-07-28 122300" src="https://github.com/user-attachments/assets/44013a51-c321-4ab1-adbe-9b81bab035f7" />



Tech Stack

SQL · Python (Pandas, NumPy, Matplotlib, Seaborn, Prophet) · Microsoft Excel · Power BI · Jupyter Notebook



Highlights

🔢 11 SQL queries spanning aggregation → window functions → CTEs → correlated subqueries

📊 7 Excel pivot tables built for non-technical stakeholders

🐍 Full Python EDA pipeline with cleaning, correlation, segmentation, and time-series forecasting

📈 Power BI dashboard for interactive exploration

🌐 Multi-year, multi-country, multi-platform dataset (2013–2018+)



👤 Author

Gourav Tiwari — Data Analyst 📧 gouravtiwari3034@gmail.com | 🔗(https://www.linkedin.com/in/gourav-tiwari-92a43b225/?lipi=urn%3Ali%3Apage%3Ad_flagship3_notifications%3BYocoX2DYSomk2ZW0beGb6g%3D%3D)
