--BUSINESS ANALYSIS
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--Customer Demographics
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--1.does gender influence churn rate
/*
OBJECTIVE:It analyses the customer churn across all the genders in order to identify
	      whether gender has any significant influence on the customer churn
*/ 
Select 
gender,
count(*) as total_customers,
sum(case when churn=1 then 1 else 0 end) as churned_customers,
round(sum(case when churn=1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by gender
order by churn_rate desc;

/*
INSIGHTS:If one gender has a noticeably higher churn rate, the company can investigate
		   whether specific products, pricing, or services affect that group differently.
RECOMMENDATION:In this scenario both male and female churn rate is almost the same but 
				 If a gender shows a significantly higher churn rate, conduct targeted
				 customer feedback surveys and retention campaigns for that segment.
*/
-----------------------------------------------------------------------------------------------------------------------------------
--2.senior citizens churn vs non senior citizens
/*
OBJECTIVE:Compare churn behavior between senior citizens and non-senior citizens to
			identify high-risk customer segments.
*/
select
seniorcitizen,
count(*) as total_customers,
sum(case when churn=1 then 1 else 0 end) as churned_customers,
round(sum(case when churn=1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by seniorcitizen
order by churn_rate desc;

/*
INSIGHTS:This helps identify whether senior citizens are more likely to discontinue the service.
RECOMMENDATION:We can identify that  senior citizens churn more frequently,so introduce dedicated support,
			   simpler service plans,or loyalty discounts in order to decrease their churn rate.
*/
-----------------------------------------------------------------------------------------------------------------------------------
--3.does having a partner influence churn
/*OBJECTIVE:Analyze whether customers with partners have different churn behavior compared to
            customers without partners.
*/
select
partner,
count(*) as total_customers,
sum(case when churn=1 then 1 else 0 end) as churned_customers,
round(sum(case when churn=1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by partner
order by churn_rate desc;


/*
INSIGHTS:Customers without partners may have different purchasing or cancellation patterns.
RECOMMENDATION:we analyzed that the customers without partners churn more,so
               create personalized retention offers for individual customers.
*/
-----------------------------------------------------------------------------------------------------------------------------------
--4.does having dependents affect churn
/*
OBJECTIVE:Determine whether customers with dependents have different churn behavior compared
            to customers without dependents.
*/
select
Dependents,
count(*) as total_customers,
sum(case when churn=1 then 1 else 0 end) as churned_customers,
round(sum(case when churn=1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by Dependents
order by churn_rate desc;

/*
INSIGHTS:Customers with dependents may be more loyal because they rely on consistent services
RECOMMENDATION:In this scenario we analysed that customers without dependents churn more,
               provide flexible plans or promotional offers tailored to them.
*/
-----------------------------------------------------------------------------------------------------------------------------------
--5.does the contract type affect churn
/*OBJECTIVE:analyses if any contract type is leading to increase in churn rate
*/
select
contract,
count(*) as total_customers,
sum(case when churn=1 then 1 else 0 end) as churned_customers,
round(sum(case when churn=1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by contract
order by churn_rate desc;

/*
INSIGHTS:customers with two year contract have the highest customer retention,
         we can observe that month-to-month contract has highest churn rate,
RECOMMENDATION:providing discounts on joining the yearly contract,loyality rewards,
			   free services can lead to customer retention.
*/
-----------------------------------------------------------------------------------------------------------------------------------
--6.does customer tenure affect churn
/*OBJECTIVE:Analyses duration of the customers with the respective services.
*/
select
tenure,
count(*) as total_customers,
sum(case when churn=1 then 1 else 0 end) as churned_customers,
round(sum(case when churn=1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by tenure
order by churn_rate desc;

/*
INSIGHTS:It provides which tenure gives the highest churn rate
         -customers with shorter tenure are more likely to churn 
RECOMMENDATION:Analysed that customers who have a tenure of 1 year are more likely to churn often,
               so providing them facilities like free memberships/subscriptions,free deliveries,
			   and subscription rewards may incline the customers to increase their tenure.
*/
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--Service Analysis
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--7.which internet service type has the highest churn rate
/*
OBJECTIVE:To identify which internet service has highest churn rate and recommend
          strategies to improve that particular service.
*/
select top 1 internetservice,
count(*) as total_customers,
sum(case when churn =1 then 1 else 0 end) as churned_customers,
round(sum(case when churn =1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by internetservice
order by churn_rate desc

/*
INSIGHTS:Fibre optic customers have the highest churn rate which suggests that this service is more
         likely to discontinue its service due multiple reasons
RECOMMENDATION:We can improve the service quality,review pricing strategy,strengthen customer support
               introduce retention offers and collecting customer feedback.
*/
-----------------------------------------------------------------------------------------------------------------------------------
--8.does tech support reduce customer churn
/*OBJECTIVE:To identify whether the technical support has any affect on the churn rate of the customer.
*/
select  techsupport,
count(*) as total_customers,
sum(case when churn =1 then 1 else 0 end) as churned_customers,
round(sum(case when churn =1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by techsupport
order by churn_rate desc

/*
INSIGHTS:We analysed that the customers with no technical support are more likely to churn 
           than the customer with the technical support provided
RECOMMENDATION:promote tech support with premium plans,target high-risk customers(with no tech support and having month to month contract)
               and increase awareness of tech support plans.
  */
-----------------------------------------------------------------------------------------------------------------------------------
--9.which additional services are associated with higher churn
/*
OBJECTIVE:To identify which other services are more likely to contibute in increase of the churn rate.
*/
select 
'streaming tv' as service,
streamingtv as servicestatus,
count(*) as total_customers,
sum(case when churn =1 then 1 else 0 end) as churned_customers,
round(sum(case when churn =1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by streamingtv
union all
select 
'streaming movies',
streamingmovies service,
count(*) as total_customers,
sum(case when churn =1 then 1 else 0 end) as churned_customers,
round(sum(case when churn =1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by streamingmovies
union all
select 
'device protection',
deviceprotection service,
count(*) as total_customers,
sum(case when churn =1 then 1 else 0 end) as churned_customers,
round(sum(case when churn =1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by deviceprotection
union all
select 
'online backup',
onlinebackup service,
count(*) as total_customers,
sum(case when churn =1 then 1 else 0 end) as churned_customers,
round(sum(case when churn =1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by onlinebackup

/*
INSIGHTS:We can analyse that the customers with fewer additional service( streaming tv,streaming movies,decvice protection
           and  online backup )are more likely to churn.
*/
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--contract analysis
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--11.what is the average tenure for each contract type
/*
OBJECTIVE:To identify the average no:of years associated with each contract type.
*/
select
contract,
avg(tenure) as avg_tenure_per_contract
from  customer_churn
group by contract

/*
INSIGHTS:We analysed that customers with two year contract have high average tenure compared
         to month-to-month and 1 year
*/
-----------------------------------------------------------------------------------------------------------------------------------
--12.which contract type generates the highest revenue
/*
OBJECTIVE:To identify which contract type genderate the highest amount of revenue
*/
select
contract,
round(sum(totalcharges),2) as revenue
from customer_churn
group by contract
order by revenue desc;

select
contract,
round(sum(monthlycharges),2) as revenue
from customer_churn
group by contract
order by revenue desc;



/*
INSIGHTS:Month-to-month customers genederate the highest revenue and one year customers generate the lowest revenue
*/
-----------------------------------------------------------------------------------------------------------------------------------
--13.what is the churn rate by tenure group
/*
OBJECTIVE:To identify which tenure group results in the highest churn rate
*/
select
case when tenure between 0 and 12 then '0-12'
     when tenure between 13 and 24 then '13-24'
	 when tenure between 25 and 48 then '25-49'
	 else '49+'
	 end as tenure_group,

round(sum(case when churn =1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by 
case when tenure between 0 and 12 then '0-12'
     when tenure between 13 and 24 then '13-24'
	 when tenure between 25 and 48 then '25-49'
	 else '49+'
	 end 
order by churn_rate desc

/*
INSIGHTS:customers with a tenure of 0-12 months are more likely to churn
RECOMMENDATION:Providing them with retention offers,discounts,rewards frequently and focusing on high-risk customers
               yearly benefits and customizatiuon benefits can lead the customers to extend their tenure.
*/
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--Payment Analysis
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--14.which payment method has the highest churn rate
/*
OBJECTIVE:To identify customers using the payment method that is more likely to churn.
*/
select top 1
paymentmethod,
round(sum(case when churn=1 then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customer_churn
group by paymentmethod
order by churn_rate desc

/*
INSIGHTS:Customers using electronic check payment method have the highest churn rate
RECOMMENDATION:Introduce eay and hassle free payment methods,upi transactions
               and payment methods that provide cashbacks to grab the customer attention.
*/
-----------------------------------------------------------------------------------------------------------------------------------
--15.which payment method contributes the highest revenue
/*
OBJECTIVE:To identify which Payment method contributes the highest amount of revenue
*/
select top 1
paymentmethod,
round(sum(monthlycharges),2) as total_revenue,
round(avg(monthlycharges),2) as avg_mon_charges
from customer_churn
group by paymentmethod
order by total_revenue desc

/*INSIGHTS:We analysed that customers using electronic check payment method contribute the highest of the revenue
*/
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--High-value customer analysis
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
--16.top 10 highest paying customers
/*
OBJECTIVE:identifies the top 10 highest paying customers
*/
select top 10
customerid,
monthlycharges,
totalcharges
from customer_churn
order by monthlycharges desc

-----------------------------------------------------------------------------------------------------------------------------------
--17.top 10 highest paying customers who churned
/*
OBJECTIVE:To identify top 10 highest paying customers who churned
*/
select top 10
customerid,
monthlycharges,
totalcharges
from customer_churn
where churn=1
order by monthlycharges desc

-----------------------------------------------------------------------------------------------------------------------------------
--18.classification of customers into high,medium,low risk
/*
OBJECTIVE:To classify the customers into high,medium,low risk customers based on their 
          churn,contract,tenure and tenure
*/
select 
customerid,
case 
  when 
  churn=1
  and contract='month-to-month'
  and tenure<=12
  then 'high risk'
  
  when 
  churn=0
  and contract='month-to-month'
  and tenure<=12
  then 'medium risk'

  else 
  'low risk'
  end as risk_category

  from customer_churn
  
  /*
  INSIGHTS:It enable to identify which customers are highly likely to leave and take necessary
           proactive retention efforts.
  RECOMMENDATION:Identify and prioritize high risk customers with personalized retention campaigns,
                 monitor medium risk customers and offer incentives to encourage long-term contracts,
                 reward low risk customers through loyality programs 
*/
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------