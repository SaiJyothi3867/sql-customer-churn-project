--SERVICE KPIs

--customers with internet service
select
 count(*) as customer_with_internet
 from customer_churn
 where internetservice<>'No'
 --customer with phone service
 select
 count(*) as customer_with_phone
 from customer_churn
 where phoneservice=1
 --customers with tech support
  select
 count(*) as customer_tech_support
 from customer_churn
 where techsupport=1
 --customer with online security
 select
 count(*) as customer_with_online_security
 from customer_churn
 where onlinesecurity=1