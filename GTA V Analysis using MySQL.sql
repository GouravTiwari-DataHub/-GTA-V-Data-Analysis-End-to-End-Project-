-- Creating Database and Loading Dataset

create database gta_v_analysis;
use gta_v_analysis;
select * from gta_v_dataset;

-- Query 1: Total Revenue by Year

select 
  year, sum(gross_revenue_usd) as Total_Revenue 
from gta_v_dataset 
group by year 
order by year;

-- Query 2: Top 10 Countries by Units Sold

Select 
  country, sum(units_sold) as Total_Units_Sold 
from gta_v_dataset
group by country 
order by Total_Units_Sold desc 
Limit 10;

-- Query 3: Regions with Average Rating Greater Than 4.5

select
  region, avg(customer_rating) as Avg_customer_rating 
from gta_v_dataset
group by region
HAVING AVG(customer_rating) > 4.5;

-- Query 4: Year-over-Year Revenue Growth

select
  Revenue, year,
  Revenue- lag(Revenue) over (order by year) as Revnue_Growth
From
(
  select 
    sum(gross_revenue_usd) as Revenue, Year
  from gta_v_dataset group by year
)t;

-- Query 5: Rank Countries by Revenue Per Year


select
  year, country, revenue,
  rank() over (
    partition by year
    order by revenue desc
    ) as Revenue_Rank
From
(
  select
  year, country, sum(gross_revenue_usd) as Revenue
  from gta_v_dataset group by year, country
)t;


-- Query 6: Running (Cumulative) Revenue

  select 
    year, month, monthly_revenue, 
    sum(monthly_revenue) over 
    (
      order by year, month
      ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cumulative_revenue
  from
  (
  select 
  year, month , SUM(gross_revenue_usd) AS monthly_revenue
  from gta_v_dataset group by year, month 
)t;

-- Query 7: GTA Online Growth vs Story Mode Decline (CTE Analysis)

WITH yearly_players as
(
select 
  year, country,SUM(online_players) AS online_players,SUM(story_mode_players) AS story_mode_players
  from gta_v_dataset Group by country, year
),

player_growth AS
(
  select 
  year, country, online_players, story_mode_players,
  
  online_players- lag(online_players) 
  over(partition by country order by year) as Online_Growth,
  
  story_mode_players- lag(story_mode_players)
  over(partition by country order by year) as Story_Growth

  From yearly_players
)

Select 
  *
From player_growth
where online_growth > 0
AND story_growth < 0;


-- Query 8: Revenue per Capita by GDP Tier

 Select
Case
     when gdp_per_capita_usd<10000 Then 'Low GDP'
     when gdp_per_capita_usd between 10000 and 30000 Then 'Medium GDP'
     else 'High GDP'
	end as gdp_tier,
sum(gross_revenue_usd)/ sum(population_millions) as revenue_per_million_people
from gta_v_dataset group by gdp_tier;


-- Query 9: Countries Above Global Average Selling Price

select
	country, avg(average_selling_price_usd) as Country_avg_selleing_price,
    (
		select 
			avg(average_selling_price_usd)
		from gta_v_dataset
	) as Overall_avg_selling_price
from gta_v_dataset group by country
Having
Country_avg_selleing_price >
(
    select 
	avg(average_selling_price_usd)
	from gta_v_dataset
);

-- Query 10: Monetization Mix by Year

Select
	year, SUM(dlc_revenue_usd) AS dlc_revenue,
    SUM(shark_card_revenue_usd) AS shark_card_revenue,
    SUM(gross_revenue_usd) AS total_revenue
from  gta_v_dataset group by year order by year asc;

-- Based on the data, the revenue columns don't follow a standard accounting relationship. I checked the totals and found that DLC and Shark Card revenue exceed gross revenue, so I concluded that these fields represent separate metrics rather than components of the same total. Instead of making unsupported assumptions, I analyzed each revenue stream independently.


-- Query 11: Discount vs Refund Relationship

select
	major_sale_event,
    AVG(discount_percentage) AS avg_discount,
    AVG(refund_rate_percentage) AS avg_refund_rate
from  gta_v_dataset group by major_sale_event order by avg_discount desc;

