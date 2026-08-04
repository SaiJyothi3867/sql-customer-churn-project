--REVENUE KPIs

--Total monthly revenue
select
round(sum(monthlycharges),2) as total_monthlu_revenue 
from customer_churn;
--average monthly charges
select
round(avg(monthlycharges),2) as avg_monthly_charges
from customer_churn
--averahe total charges
select
round(avg(totalcharges),2) as avg_total_charges
from customer_churn;
--revenue lost due to churn
select
round(sum(monthlycharges),2) as revenue_lost
from customer_churn
where churn=1;
--average revenue per customer
select
round(avg(monthlycharges)/count(*),2) as avg_revenue_per_customer
from customer_churn
