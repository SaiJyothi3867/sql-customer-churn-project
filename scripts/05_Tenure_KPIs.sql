--CUSTOMER BEHAVIOR/TENURE KPIs

--average tenure
select 
avg(tenure) as avg_tenure
from customer_churn
--maximum tenure
select
max(tenure) as max_tenure
from customer_churn
--minimum tenure
select
min(tenure) as min_tenure
from customer_churn
--average tenure of churned customers
select 
avg(tenure) as avg_tenure_churned
from customer_churn
where churn=1;
--average tenure of active customers
select 
avg(tenure) as avg_tenure_active
from customer_churn
where churn=0;
