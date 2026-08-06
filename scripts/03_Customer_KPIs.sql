--CUSTOMER KPI's

--total customers
select 
count(*) as total_customers
from customer_churn;
--active customers
select
count(*) as active_customers
from customer_churn
where churn=0;
--what is the  gender distribution of customers
select
gender,
count(*) as total_customer
from customer_churn
group by gender
--what is the distribution of senior citizens
select
seniorcitizen,
count(*) as total_customer
from customer_churn
group by seniorcitizen
--churned customers
select count(*) as churned_customers
from customer_churn
where churn=1;
--churn rate
select
round(count(case when Churn= 1 then 1 end)*100.0/count(*),2) as churn_rate
FROM customer_churn;
--retention rate
select
round(count(case when churn=0 then 1 end)*100.0/count(*),2) as retention_rate
from customer_churn
