--CONTRACT KPIs 
 --customers by contract type
 select
 contract,
 count(*) as total_customers
 from customer_churn
 group by contract
 order by total_customers desc

 --BONUS KPIs
 
 --customers by payment method
 select
 paymentmethod,
 count(*) as total_customers
 from customer_churn
 group by paymentmethod
 order by total_customers desc
 --average monthly charges by contract
 select
 contract,
round( avg(monthlycharges),2) as avg_monthly_charges
 from customer_churn
 group by contract
 order by avg_monthly_charges desc
--total revenue by  contract
select
contract,
round(sum(monthlycharges),0) as total_revenue_by_contract
from customer_churn
group by contract
order by total_revenue_by_contract desc



