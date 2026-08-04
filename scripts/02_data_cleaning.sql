--check duplicate customer ids
select
customerID ,
count(*) as dup_count
from customer_churn
group by customerid
having count(*)>1

--check blank customer ids
select customerid 
from customer_churn
where customerid is null
or customerid='';

--check missing values in every column
--gender
select gender
from customer_churn
where gender is null 
or gender='';

--contract
select contract
from customer_churn
where contract is null 
or contract='';

--payment method
select paymentmethod
from customer_churn
where paymentmethod is null 
or paymentmethod='';

--internet service
select internetservice
from customer_churn
where internetservice is null 
or internetservice='';

--totalcharges
select totalcharges
from customer_churn
where totalcharges is null 
or totalcharges='';

--check blank total charges
select totalcharges
from customer_churn
where ltrim(rtrim(cast(Totalcharges as varchar(50))))='';

--verifying churn value
select distinct churn
from customer_churn

