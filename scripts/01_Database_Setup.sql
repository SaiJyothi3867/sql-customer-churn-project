CREATE DATABASE CustomerChurn;  --Creation of database
GO
USE CustomerChurn;         --uses the database
GO

select * from dbo.Customer_Churn; --returns the whole table

select count(*) as totalrows  --returns the no of rows
from dbo.Customer_Churn;

select column_name            --returns the names of all the columns of the table
from information_schema.columns
where table_name='Customer_Churn';

select top 10 *          --returns the top 10 rows of the table
from Customer_Churn;

