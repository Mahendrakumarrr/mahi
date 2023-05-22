create database bank;
use bank;


#01Bank_Account_Details and bank_account_transaction for all the transactions occurred during march, 2020 and april, 2020

select * from bank_account_details;
select * from bank_account_transaction;
SELECT b_d.customer_id, b_d.account_number, b_d.balance_amount, ba_t.transaction_amount
FROM Bank_Account_Details b_d
JOIN bank_account_transaction ba_t ON b_d.account_number = ba_t.account_number
WHERE ba_t.transaction_date BETWEEN '2020-03-01' AND '2020-04-30';

#07Write a query to determine the Nth (Say N=5) highest purch_amt from Orders table.
select * from orders;
SELECT DISTINCT purch_amt 
FROM Orders 
ORDER BY purch_amt DESC 
LIMIT 1 OFFSET 4;

#12Insert five rows into the cast table where the ids for movie should be 936,939,942,930,941 and their respective roles should be Darth Vader, Sarah Connor, Ethan Hunt, Travis Bickle, Antoine Doinel & their actor ids should be set up as 126,140,135,131,144.
select * from cast;
INSERT INTO cast (mov_id, role, act_id)
VALUES (936, 'Darth Vader', 126),
       (939, 'Sarah Connor', 140),
       (942, 'Ethan Hunt', 135),
       (930, 'Travis Bickle', 131),
       (941, 'Antoine Doinel', 144);

select * from cast;



