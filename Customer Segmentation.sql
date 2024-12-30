CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    location VARCHAR(100),
    join_date DATE
);

INSERT INTO Customers (customer_id, name, age, gender, location, join_date) VALUES
(1, 'Alice Johnson', 29, 'F', 'New York', '2022-01-15'),
(2, 'Bob Smith', 35, 'M', 'Los Angeles', '2021-05-22'),
(3, 'Carol White', 42, 'F', 'Chicago', '2020-10-30'),
(4, 'David Brown', 31, 'M', 'Houston', '2022-07-19'),
(5, 'Eve Davis', 26, 'F', 'Phoenix', '2022-08-02'),
(6, 'Frank Harris', 45, 'M', 'Philadelphia', '2020-03-11'),
(7, 'Grace Lee', 33, 'F', 'San Antonio', '2023-06-14'),
(8, 'Henry Walker', 29, 'M', 'Dallas', '2021-09-29'),
(9, 'Ivy Young', 37, 'F', 'San Diego', '2022-11-21'),
(10, 'Jack King', 40, 'M', 'San Jose', '2023-01-12'),
(11, 'Kate Lewis', 28, 'F', 'Austin', '2020-12-24'),
(12, 'Liam Martinez', 34, 'M', 'Jacksonville', '2021-08-05'),
(13, 'Mia Clark', 38, 'F', 'Fort Worth', '2021-02-18'),
(14, 'Noah Allen', 32, 'M', 'Columbus', '2022-03-27'),
(15, 'Olivia Hill', 27, 'F', 'Charlotte', '2022-09-03'),
(16, 'Peter Scott', 36, 'M', 'Indianapolis', '2023-05-07'),
(17, 'Quinn Adams', 30, 'F', 'San Francisco', '2022-04-12'),
(18, 'Ryan Baker', 41, 'M', 'Seattle', '2020-07-16'),
(19, 'Sophia Nelson', 29, 'F', 'Denver', '2021-01-25'),
(20, 'Tyler Carter', 33, 'M', 'Washington', '2021-06-02'),
(21, 'Uma Collins', 44, 'F', 'Boston', '2022-11-19'),
(22, 'Victor Reed', 35, 'M', 'El Paso', '2023-02-22'),
(23, 'Wendy Howard', 31, 'F', 'Nashville', '2023-04-18'),
(24, 'Xander Murphy', 39, 'M', 'Detroit', '2020-08-09'),
(25, 'Yara Stewart', 27, 'F', 'Memphis', '2021-03-14'),
(26, 'Zachary Roberts', 32, 'M', 'Portland', '2021-09-08'),
(27, 'Amelia Thompson', 26, 'F', 'Oklahoma City', '2022-05-23'),
(28, 'Benjamin Lee', 34, 'M', 'Las Vegas', '2020-10-02'),
(29, 'Charlotte Turner', 38, 'F', 'Baltimore', '2023-06-29'),
(30, 'Daniel Wright', 30, 'M', 'Louisville', '2022-12-01'),
(31, 'Ella Green', 29, 'F', 'Milwaukee', '2023-03-05'),
(32, 'Felix Hall', 41, 'M', 'Albuquerque', '2021-04-09'),
(33, 'Grace Adams', 33, 'F', 'Tucson', '2022-08-15'),
(34, 'Harry Young', 37, 'M', 'Fresno', '2023-05-28'),
(35, 'Isla Nelson', 28, 'F', 'Sacramento', '2021-11-17'),
(36, 'Jack Carter', 40, 'M', 'Kansas City', '2022-10-26'),
(37, 'Kylie Edwards', 31, 'F', 'Mesa', '2023-04-03'),
(38, 'Liam Barnes', 34, 'M', 'Atlanta', '2020-06-19'),
(39, 'Maya Mitchell', 26, 'F', 'Omaha', '2021-12-22'),
(40, 'Nathan Phillips', 35, 'M', 'Raleigh', '2021-07-27'),
(41, 'Olivia Parker', 42, 'F', 'Miami', '2022-02-14'),
(42, 'Paul James', 30, 'M', 'Cleveland', '2023-01-09'),
(43, 'Quinn Harris', 32, 'F', 'Virginia Beach', '2020-09-13'),
(44, 'Ryan Brooks', 29, 'M', 'Long Beach', '2021-02-07'),
(45, 'Sophia Bell', 31, 'F', 'Oakland', '2021-10-15'),
(46, 'Tyler Hughes', 33, 'M', 'Minneapolis', '2023-05-04'),
(47, 'Uma Wallace', 27, 'F', 'Tulsa', '2021-11-09'),
(48, 'Victor Morris', 44, 'M', 'Arlington', '2022-04-22'),
(49, 'Wendy Hughes', 26, 'F', 'New Orleans', '2022-09-26'),
(50, 'Zoe Lee', 33, 'F', 'San Diego', '2023-02-28');


CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    transaction_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Transactions (transaction_id, customer_id, product_id, transaction_date, quantity, total_amount) VALUES
(1, 1, 101, '2024-01-10', 2, 50.00),
(2, 2, 102, '2024-01-12', 1, 30.00),
(3, 3, 103, '2024-01-15', 4, 80.00),
(4, 4, 101, '2024-01-18', 1, 25.00),
(5, 5, 104, '2024-01-20', 3, 60.00),
(6, 6, 105, '2024-01-25', 1, 50.00),
(7, 7, 106, '2024-01-28', 2, 40.00),
(8, 8, 107, '2024-01-30', 1, 20.00),
(9, 9, 108, '2024-02-02', 3, 45.00),
(10, 10, 109, '2024-02-05', 1, 15.00),
(11, 11, 110, '2024-02-07', 2, 30.00),
(12, 12, 111, '2024-02-10', 1, 25.00),
(13, 13, 112, '2024-02-12', 4, 100.00),
(14, 14, 113, '2024-02-14', 2, 40.00),
(15, 15, 114, '2024-02-16', 1, 35.00),
(16, 16, 115, '2024-02-18', 3, 60.00),
(17, 17, 116, '2024-02-20', 1, 20.00),
(18, 18, 117, '2024-02-22', 2, 45.00),
(19, 19, 118, '2024-02-24', 3, 55.00),
(20, 20, 119, '2024-02-26', 4, 120.00),
(21, 21, 120, '2024-02-28', 2, 55.00),
(22, 22, 101, '2024-03-01', 1, 25.00),
(23, 23, 102, '2024-03-03', 3, 90.00),
(24, 24, 103, '2024-03-05', 2, 40.00),
(25, 25, 104, '2024-03-07', 1, 20.00),
(26, 26, 105, '2024-03-09', 2, 60.00),
(27, 27, 106, '2024-03-11', 3, 45.00),
(28, 28, 107, '2024-03-13', 1, 20.00),
(29, 29, 108, '2024-03-15', 2, 40.00),
(30, 30, 109, '2024-03-17', 3, 60.00),
(31, 31, 110, '2024-03-19', 1, 15.00),
(32, 32, 111, '2024-03-21', 2, 35.00),
(33, 33, 112, '2024-03-23', 4, 90.00),
(34, 34, 113, '2024-03-25', 1, 25.00),
(35, 35, 114, '2024-03-27', 3, 70.00),
(36, 36, 115, '2024-03-29', 1, 25.00),
(37, 37, 116, '2024-03-31', 2, 50.00),
(38, 38, 117, '2024-04-02', 3, 60.00),
(39, 39, 118, '2024-04-04', 1, 20.00),
(40, 40, 119, '2024-04-06', 2, 50.00),
(41, 41, 120, '2024-04-08', 3, 75.00),
(42, 42, 101, '2024-04-10', 1, 25.00),
(43, 43, 102, '2024-04-12', 2, 55.00),
(44, 44, 103, '2024-04-14', 3, 60.00),
(45, 45, 104, '2024-04-16', 4, 80.00),
(46, 46, 105, '2024-04-18', 2, 50.00),
(47, 47, 106, '2024-04-20', 1, 20.00),
(48, 48, 107, '2024-04-22', 3, 60.00),
(49, 49, 108, '2024-04-24', 2, 45.00),
(50, 50, 109, '2024-04-26', 1, 15.00);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO Products (product_id, product_name, category, price) VALUES
(101, 'Widget A', 'Widgets', 25.00),
(102, 'Widget B', 'Widgets', 30.00),
(103, 'Gadget X', 'Gadgets', 20.00),
(104, 'Gadget Y', 'Gadgets', 20.00),
(105, 'Tool C', 'Tools', 50.00),
(106, 'Tool D', 'Tools', 55.00),
(107, 'Device E', 'Devices', 20.00),
(108, 'Device F', 'Devices', 25.00),
(109, 'Item G', 'Items', 15.00),
(110, 'Item H', 'Items', 30.00),
(111, 'Product I', 'Products', 25.00),
(112, 'Product J', 'Products', 35.00),
(113, 'Gizmo K', 'Gizmos', 40.00),
(114, 'Gizmo L', 'Gizmos', 45.00),
(115, 'Accessory M', 'Accessories', 30.00),
(116, 'Accessory N', 'Accessories', 20.00),
(117, 'Equipment O', 'Equipment', 50.00),
(118, 'Equipment P', 'Equipment', 55.00),
(119, 'Supply Q', 'Supplies', 60.00),
(120, 'Supply R', 'Supplies', 55.00);


CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    sale_amount DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Sales (sale_id, product_id, sale_date, sale_amount) VALUES
(1, 101, '2024-01-05', 25.00),
(2, 102, '2024-01-10', 30.00),
(3, 103, '2024-01-15', 80.00),
(4, 104, '2024-01-20', 60.00),
(5, 105, '2024-01-25', 50.00),
(6, 106, '2024-01-30', 55.00),
(7, 107, '2024-02-05', 20.00),
(8, 108, '2024-02-10', 45.00),
(9, 109, '2024-02-15', 15.00),
(10, 110, '2024-02-20', 30.00),
(11, 111, '2024-02-25', 25.00),
(12, 112, '2024-03-01', 100.00),
(13, 113, '2024-03-05', 40.00),
(14, 114, '2024-03-10', 35.00),
(15, 115, '2024-03-15', 60.00),
(16, 116, '2024-03-20', 20.00),
(17, 117, '2024-03-25', 45.00),
(18, 118, '2024-03-30', 55.00),
(19, 119, '2024-04-05', 120.00),
(20, 120, '2024-04-10', 55.00),
(21, 101, '2024-04-15', 25.00),
(22, 102, '2024-04-20', 90.00),
(23, 103, '2024-04-25', 40.00),
(24, 104, '2024-04-30', 20.00),
(25, 105, '2024-05-05', 60.00),
(26, 106, '2024-05-10', 45.00),
(27, 107, '2024-05-15', 20.00),
(28, 108, '2024-05-20', 40.00),
(29, 109, '2024-05-25', 60.00),
(30, 110, '2024-05-30', 15.00),
(31, 111, '2024-06-05', 35.00),
(32, 112, '2024-06-10', 90.00),
(33, 113, '2024-06-15', 25.00),
(34, 114, '2024-06-20', 70.00),
(35, 115, '2024-06-25', 25.00),
(36, 116, '2024-06-30', 50.00),
(37, 117, '2024-07-05', 60.00),
(38, 118, '2024-07-10', 20.00),
(39, 119, '2024-07-15', 50.00),
(40, 120, '2024-07-20', 75.00),
(41, 101, '2024-07-25', 25.00),
(42, 102, '2024-07-30', 55.00),
(43, 103, '2024-08-05', 60.00),
(44, 104, '2024-08-10', 80.00),
(45, 105, '2024-08-15', 50.00),
(46, 106, '2024-08-20', 20.00),
(47, 107, '2024-08-25', 60.00),
(48, 108, '2024-08-30', 45.00),
(49, 109, '2024-09-05', 15.00),
(50, 110, '2024-09-10', 30.00);



select * from customers

select * from products

select * from sales

select * from transactions

---Write a query to find the average age of customers grouped by location. Use the HAVING clause to filter out locations where the average age is less than 30--

select location, avg(age) as average_age
from customers
group by location
having avg(age)<30

---Write a query to calculate the total quantity of products purchased by each customer.---
---Group the results by customer_id and use the HAVING clause to show only those customers---
---who have purchased more than 5 items in total.---

select sum(quantity), customer_id 
from transactions
group by customer_id
having sum(quantity)>2


---Write a query to find the count of product id in each category.---
---Group the results by category and use the HAVING clause to show only those---
---categories that have more than 1 products.---


select count(product_id), category
from products
group by category
having count(product_id)>1

---Write a query to determine the total sales amount for each product id.---
---Group the results by product_id and use the HAVING clause to show only those ---
---products with a total sales amount greater than $100.---
select * from sales

select product_id, sum(sale_amount) as "total_sales_amount"
from sales
group by product_id
having sum(sale_amount)>100
order by total_sales_amount desc

	
---Which location has the most customers?---
select * from customers

SELECT location, COUNT(customer_id) AS num_customers
FROM Customers
GROUP BY location
ORDER BY num_customers DESC
LIMIT 1;


select * from transactions

--- What is the total amount spent by each customer?---

select c.name, sum(tr.total_amount) as "total amount spent by each customer"
from transactions as tr
join customers as c
on c.customer_id = tr.customer_id
group by c.name
order by sum(tr.total_amount) desc



--- What is the total amount spent on each product?---

select p.product_name, sum(tr.total_amount) as "total_amount_spent"
from transactions as tr
join products as p
on tr.product_id=p.product_id
group by p.product_name
order by sum(tr.total_amount) desc


--- Which product has the highest total sale amount?---

select * from sales

select p.product_name, sum(s.sale_amount) as "total_sale_amount"
from sales as s
join products as p
on p.product_id=s.product_id
group by p.product_name 
order by sum (sale_amount) desc
limit 1

select * from products

--- How many products are in each category?---
select category, count(*)
from products
group by category

--- What is the average price of products in each category?---

select category, round(avg(price),0)
from products
group by category
order by round(avg(price),0) desc
limit 1

select * from customers

select * from products

select * from sales

select * from transactions

---Write a query to get a list of customer names and their corresponding transactions ---
---(i.e., customer name and transaction details) using an INNER JOIN.---

select c.name, t.total_amount
from customers as c
left join transactions as t 
on c.customer_id = t.customer_id

---Write a query to show the total amount of transactions made by each customer.---

select c.name, sum(t.total_amount) as "amount_of_transactions"
from customers as c
inner join transactions as t
on c.customer_id=t.customer_id
group by c.name
order by sum(t.total_amount) desc

---Write a query to get customer names, transaction dates,sale amount and the product names---
---they bought using a join across Customers, Transactions, and Products tables.---

select * from products
select * from transactions

select c.name, t.transaction_date, p.product_name, s.sale_amount
from customers as c
inner join transactions as t
on c.customer_id=t.customer_id
inner join products as p
on t.product_id=p.product_id
inner join sales as s 
on s.product_id=p.product_id

---Write a query to get customer names, average of transaction's total amount, ---
---average of product's price and average of sales's sale amount they bought using a join across Customers, Transactions,---
---and Products tables where average of total amount greater than 100, ---
---average of product price greater than 35 and average of sale amount greater than 20.---

select c.name, avg(t.total_amount) as "average of transaction's total amount", avg(p.price) as "average of product's price",avg(s.sale_amount) as "average of sales's sale amount"
from customers as c
inner join transactions as t
on c.customer_id=t.customer_id
inner join products as p
on t.product_id=p.product_id
inner join sales as s
on s.product_id=p.product_id
group by c.name
having avg(t.total_amount)>100 and avg(p.price)>35 and avg(s.sale_amount)>20
order by c.name desc, avg(t.total_amount) desc, avg(p.price) desc, avg(s.sale_amount) desc



select * from customers
select * from products
select * from sales
select * from transactions

---Find the total transaction amount for each customer who has made purchases of ---
---more than 2 different products in 2024. The result should include the customer's ID,---
---name, and the total transaction amount. Only include customers who have made purchases---
--worth more than $100 in total.---

select * from transactions
	
select c.customer_id, c.name, t.total_amount, t.transaction_date
from customers as c
inner join transactions as t
on c.customer_id=t.customer_id
where t.quantity>2 and t.total_amount>100 and t.transaction_date>'2023-12-31'

---Write a query to find the names of customers who made transactions involving more 
---than 3 products and spent more than $100 in total.---

select c.name,sum(t.total_amount)
from customers as c
inner join transactions as t
on c.customer_id=t.customer_id
where t.quantity>3
group by c.name
having sum(t.total_amount)>100 


---How would you use a self join to find all customers who have the same age?---
	
select c_1.name, c_1.age 
from customers as c_1
join customers as c_2
on c_1.age =c_2.age and c_1.customer_id <>c_2.customer_id


---How can you use a self join to retrieve customers who share the same location,---
---but with different gender?---

select * from customers

select c_1.name, c_2.location, c_1.gender
from customers as c_1
join customers as c_2
on c_1.location=c_2.location and c_1.gender != c_2.gender


---Create a query using a self join to list all products that have a higher price than---
---another product from the same category.---

select * from products

select p_1.product_name,p_2.product_name, p_1.category,p_2.category
from products as p_1
join products as p_2
on p_1.price >p_2.price and p_1.category =p_2.category

---How can you find pairs of customers who joined within the same year but are from---
---different locations using a self join?---


select * from customers

select  c_1.name 
from customers as c_1
join customers as c_2
on c_1.join_date=c_2.join_date and c_1.location != c_2.location


---Using a self join, how would you identify customers with the same name, ---
---but from different locations?---

select  c_1.name 
from customers as c_1
join customers as c_2
on c_1.name=c_2.name and c_1.location != c_2.location

---Write a query to display transactions where the total amount of one transaction ---
---is higher than another for the same customer.---

select * from transactions

select t_1.transaction_id 
from transactions as t_1
join transactions as t_2
on t_1.total_amount>t_2.total_amount and t_1.customer_id=t_2.customer_id

----How can a self join be used to find customers who have the same gender and ---
---age but joined the company at different times?---

select * from customers

select  c_1.name 
from customers as c_1
join customers as c_2
on c_1.gender=c_2.gender and c_1.join_date <> c_2.join_date


---sub querry---

select * from customers

select * from products

select * from sales

select * from transactions

select * from transactions
where total_amount>(select avg(total_amount)from transactions)

select customer_id, name from customers
where customer_id in (select customer_id from transactions where total_amount > 100)

select product_id, product_name from products
where product_id in (select product_id from transactions where total_amount > 100)

---Write a query to find the names of customers who have made transactions ---
---involving a product that belongs to the "Gadgets" category.---


select name 
from customers 
where customer_id in (select customer_id from transactions 
					where product_id in (select product_id from transactions
											where product_id in (select product_id from products
																   where category='Gadgets')))

---Write a query to find the name of the product that has the highest price.---
select * from products

SELECT product_name
FROM Products
WHERE price = (
    SELECT MAX(price)
    FROM Products
);


---Write a query to find the names of customers who have made a purchase---
--greater than the average transaction amount.---

select name from customers 
where customer_id in(
    select customer_id from transactions 
where total_amount > 
(select avg(total_amount) from transactions));

---Find the names of products that have been sold more than ---
---the average quantity of all products sold.---
select * from customers
select * from products
select * from transactions
select * from sales

select product_name from products where product_id in 
(select product_id from sales where sale_amount > (select avg(sale_amount) from sales))

---Find the names of customers who have never purchased a product from the 'Tools' category.---

select name 
from customers
where customer_id in
(select customer_id from transactions
where product_id in
(select product_id from products
where category!='Tools'))

select * from transactions

---Window Function---

---Aggregate Function--

select category, price,
sum(price) over (partition by category order by price desc) as "Total_price_amount",
max(price) over (partition by category order by price desc) as "Maximum_price_amount",
min(price) over (partition by category order by price desc) as "Minimum_price_amount",
Avg(price) over (partition by category order by price desc) as "Average_price_amount",
count(price) over (partition by category order by price desc) as "Count_price_amount"
from products

select category, price,
sum(price) over (order by price rows between unbounded preceding and unbounded following) as "Total_price_amount",
max(price) over (order by price rows between unbounded preceding and unbounded following) as "Maximum_price_amount",
min(price) over (order by price rows between unbounded preceding and unbounded following) as "Minimum_price_amount",
Avg(price) over (order by price rows between unbounded preceding and unbounded following) as "Average_price_amount",
count(price) over (order by price rows between unbounded preceding and unbounded following) as "Count_price_amount"
from products


---Ranking Function--
select * from  transactions

select product_id,
row_number() over (order by product_id) as "row_number",
rank() over (order by product_id) as "rank",
dense_rank() over (order by product_id) as "dense_rank",
PERCENT_RANK() over (order by product_id) as "percent_rank_no"
from transactions


select category, price,
row_number() over (partition by category order by price desc) as "Total_price_amount",
rank() over (partition by category order by price desc) as "Maximum_price_amount",
dense_rank() over (partition by category order by price desc) as "Minimum_price_amount",
percent_rank() over (partition by category order by price desc) as "Average_price_amount"
from products

---Analytical Function---
select * from sales

select sale_amount,
first_value (sale_amount) over (order by sale_amount) as "First value",
last_value (sale_amount) over (order by sale_amount) as "Last value",
lead (sale_amount) over (order by sale_amount) as "Lead",
lag (sale_amount) over (order by sale_amount) as "Lag"
from sales

select sale_amount,sale_id,
first_value (sale_amount) over (partition by sale_id order by sale_amount) as "First value",
last_value (sale_amount) over (partition by sale_id order by sale_amount) as "Last value",
lead (sale_amount) over (partition by sale_id order by sale_amount) as "Lead",
lag (sale_amount) over (partition by sale_id order by sale_amount) as "Lag"
from sales

select * from customers

select age,
first_value (age) over (order by age) as "First value",
last_value (age) over (order by age) as "Last value",
lead (age,2) over (order by age) as "Lead",
lag (age,2) over (order by age) as "Lag"
from customers

select * from products

select * from transactions

select p.product_name, t.total_amount,
sum(t.total_amount) over (partition by p.product_name order by t.total_amount) as "Total amount",
max(t.total_amount) over (partition by p.product_name order by t.total_amount) as "Maximum Total amount",
min(t.total_amount) over (partition by p.product_name order by t.total_amount) as "Minimum Total amount",
avg(t.total_amount) over (partition by p.product_name order by t.total_amount) as "Average Total amount",
count(t.total_amount) over (partition by p.product_name order by t.total_amount) as "Count Total amount"
from products as p
join transactions as t
on p.product_id=t.product_id



select * from customers

select * from products

select * from sales

select * from transactions


---case statement---
select * from products

select c.name, p.price, t.total_amount, s.sale_amount,
	case when p.price <=20 then 'lesser than 20'
	 	 when p.price <=25 then 'lesser than 25'
	     when s.sale_amount <=30 then 'lesser than 30'
 	 	 when p.price <=35 then 'lesser than 35'
     	 when p.price <=40 then 'lesser than 40'
 	 	 when p.price <=45 then 'lesser than 45'
     	 when p.price >=50 and t.total_amount >=50 then 'greater than 50'
     	 when p.price <55 then 'lesser than 55'
	 	 else 'it is 60'
	end as "reviews"
from customers as c
inner join transactions as t
on c.customer_id=t.customer_id
inner join products as p
on t.product_id=p.product_id
inner join sales as s
on s.product_id=p.product_id

select quantity, total_amount,
CASE quantity
	when 1 then '1kg'
	when 2 then '2kg'
	when 3 then '3kg'
	else '4 kg'
end as "Quantity_Status"
from transactions 

select * from customers

select * from products

select * from sales

select * from transactions

--CTE--
	
with my_cte as(
	select c.name, avg(t.total_amount) as "average amount" 
	from customers as c
	join transactions as t 
	on c.customer_id=t.customer_id
	group by c.name
)
select * from my_cte
where "average amount" >80


---Find the top 5 customers who spent the most in transactions.---

with my_cte as (
	select c.name, max(t.total_amount) 
	from customers as c
	join transactions as t
	on c.customer_id=t.customer_id
	group by c.name
	order by max(t.total_amount) desc
	limit 5
)
select * from my_cte


---Calculate the average spending per customer for each product category.---

with my_cte as (
select c.name, p.category, round(avg(p.price),0)
from customers as c
join transactions as t
on c.customer_id=t.customer_id
join products as p
on p.product_id=t.product_id
group by c.name, p.category
)
select * from my_cte

---Find customers who have purchased products from more than one category.---

with cte as (
    select distinct c.name, count(p.category) as categories, p.price
	from customers as c 
	join transactions as t 
    on c.customer_id = t.customer_id
    join products as p
    on t.product_id = p.product_id
    group by c.name, p.price
    having count(p.category) > 1
)
select * from cte;

---Identify products that have not been sold in the last 6 months.---

with my_cte as (
select p.product_name, s.sale_date
from products as p
join sales as s
on p.product_id=s.product_id
order by s.sale_date asc
)
select * from my_cte
where sale_date <'2024-03-01'

--alternate method--
with cte as(
    select product_name, sale_date from products p join sales s 
    on p.product_id = s.product_id
    where sale_date < CURRENT_DATE - INTERVAL '6' MONTH
)
select * FROM cte;



---Find customers who bought 'Widget A' and the quantity they purchased.---

with my_cte as (
select c.name, p.product_name, t.quantity
from customers as c
join  transactions as t
on c.customer_id=t.customer_id
join products as p
on p.product_id=t.product_id
)
select * from my_cte
where product_name='Widget A' 

---Find the most recent transaction for each customer.---

with my_cte as(
select c.name, t.total_amount,t.transaction_date
from customers as c
join transactions as t
on c.customer_id=t.customer_id
order by t.transaction_date desc
)
select * from my_cte


---Find customers who made at least 1 transactions and the total amount they spent.---
with cte as(
    select c.customer_id, count(t.transaction_id) as total from customers c join transactions t on c.customer_id = t.customer_id
    group by c.customer_id
    having count(t.transaction_id) >= 1
),
cte1 as(
    select customer_id, sum(t.total_amount) as totalsum from transactions t
    GROUP BY customer_id
)
select * from cte , cte1 

---Find the customers who bought 'Widget A' and their total spending across all products.---
with cte as (
select c.name, p.product_name, t.total_amount
from customers as c
join transactions as t
on c.customer_id=t.customer_id
join products as p
on p.product_id=t.product_id
)
select * from cte
where product_name='Widget A'

---alternate---

with cte_1 as (
select t.customer_id, p.product_name
from transactions as t
join products as p 
on t.product_id=p.product_id 
where product_name='Widget A'
), cte_2  as (
select c.name, t.total_amount, c.customer_id
from transactions as t
join customers as c
on t.customer_id=c.customer_id 
)
select *
from cte_1 ,cte_2


select * from customers

select * from products

select * from sales

select * from transactions

---Q1: Retrieve all the customers who are from the city 'New York'---

select name from customers where location='New York'

---Q2: Find all transactions where the total amount is greater than 50.---

select * from transactionswhere total_amount >50

---Q3: Retrieve all transactions made after '2024-03-01'.---
select * from transactions where transaction_date > '2024-03-01'

---Q4: Retrieve all products where the price is not 25.00---
select * from products where price !=25.00

---Q5: Find all products with a price less than 30 and belonging to the 'Widgets' category.---
select * from products where price <30 and category ='Widgets'

---Q6:Get the number of transactions for each product where the total amount spent is more than---
---100, and limit the results to the top 5 products.---

select count (transaction_id) as "number of transactions", product_id, sum(total_amount) as "total amount spent" 
from transactions 
group by product_id
having sum(total_amount)>100
order by sum(total_amount) desc
limit 5


---Q7: Find the average amount spent by customers who have made more than 3 transactions,---
---and sort it in ascending order.---

select count(*) as "no_of_transactions", customer_id, avg(total_amount) as "average amount"
from transactions
group by customer_id
having  count(*)>3

---Q8: Find customers who spent more than 200 in total, grouped by customer ID,---
---and display only the top 5 customers with the highest total spending.---

select customer_id, sum(total_amount) as "highest total spending"
from transactions 
group by customer_id
having sum(total_amount)>200
order by sum(total_amount) desc
limit 5

---Q9: Find the product categories that have a total sales amount greater than 300,---
---and sort by the total sales amount in ascending order.

select category, sum(price) as "total sales amount " 
from products
group by category
having sum(price)>300
order by sum(price) asc

---Q10: Find the names of customers who made a purchase along with the product name and transaction amount.---
select c.name, p.product_name, t.total_amount
from customers as c
join transactions as t
on t.customer_id=c.customer_id
join products as p
on p.product_id=t.product_id

---Q11: Write a query to find the total sales amount for each product category.---
---Display the product category and the total sales amount, but only include ---
---categories with total sales greater than 250. Order the results by total ---
---sales in descending order and limit the result to the top 5 categories.---
select sum(s.sale_amount) as "total_sales",p.category
from sales as s
join products as p
on p.product_id=s.product_id
group by p.category
having sum(s.sale_amount)>250
order by total_sales desc
limit 5

---Write a query to find the average transaction amount for each customer. ---
---Display the customer name and average transaction amount. ---
---Only include customers whose average transaction amount is greater than 50. ---
---Order the result by average transaction amount in descending order.---

select avg(t.total_amount) as "average transaction", c.name 
from transactions as t
join customers as c
on c.customer_id=t.customer_id
group by c.name
having avg(t.total_amount)>50
order by "average transaction" desc


---Find the products that have been purchased more than 2 times. ---
---Display the product name and the number of times it was sold.---
---Order the results by the number of sales in descending order and ---
---limit the output to the top 10 products.---
select p.product_name, count(s.sale_id) as "no_of_product_sold"
from products as p
join sales as s
on s.product_id=p.product_id
group by p.product_name
having count(s.sale_id)>2
order by "no_of_product_sold" desc
limit 10

select * from customers
select * from sales
select * from products
select * from transactions
	
select c.name, p.product_name, round(avg(s.sale_amount),0) as "average sale amount", round(avg(t.total_amount),0) as "average total amount"
from customers as c
join transactions as t
on t.customer_id=c.customer_id
join products as p
on p.product_id=t.product_id
join sales as s
on s.product_id=p.product_id
group by c.name, p.product_name
having avg(t.total_amount)>80 and avg(s.sale_amount)>80
order by avg(t.total_amount) desc , avg(s.sale_amount) desc


select c.name, c.location from customers as c
where c.customer_id in
	(select t.customer_id from transactions as t
	where t.total_amount>80 and t.product_id in 
	(select p.product_id from products as p
	where p.product_id in (select s.product_id from sales as s where s.sale_amount >80)))

select * from customers

select * from products

select * from sales

select * from transactions

---apply group by , joins and case statements	
select c.name as "Customer", p.product_name as "Product", 
avg(s.sale_amount) as "Average amount of sale",
min(s.sale_amount) as "Minimum amount of sale", 
max(s.sale_amount) as "Maximum amoung of sale", 
sum(s.sale_amount) as "Total amoung of sale", 
avg(t.total_amount) as "Average amoung of transaction", 
min(t.total_amount) as "Minimum amoung of transaction",
max(t.total_amount) as "Maximum amoung of transaction", 
sum(t.total_amount) as "Total amoung of transaction",
	case when sum(t.total_amount)<50 then '>50'
		 when sum(t.total_amount)>50 AND sum(t.total_amount)<100 then '>50 and <100'
		 when sum(t.total_amount)>100 AND sum(t.total_amount)<150 then '>100 and >150'
		 when sum(t.total_amount)>150 AND sum(t.total_amount)<200 then '>150 and >200'
		 when sum(t.total_amount)>200 AND sum(t.total_amount)<250 then '>100 and >150'
	else '>250'
	end as "total amount criteria"
from customers as c
join transactions as t
on c.customer_id=t.customer_id
join products as p
on p.product_id=t.product_id
join sales as s
on s.product_id=p.product_id
group by c.name, p.product_name

---subquery ;- extract name of customer who spent more 100 dollars on sales in which amount was more than 50.
select name, location 
	from customers 
	where customer_id in 
	(select customer_id 
	from transactions 
	where total_amount>100 and product_id in 
	(select product_id 
	from products 
	where product_id in 
	(select product_id 
	from sales 
	where sale_amount >50)))
	
---Write a query to display all customers who are located in 
---the same cities as those who have made transactions greater than 50.
select name, location from customers 
where customer_id in(select customer_id from transactions where total_amount>50)

---Write a query to find customers whose spending is greater than the average spending of other customers in their city
select name, location
from customers 
where customer_id in 
(select customer_id 
from transactions 
where total_amount > (select avg(total_amount) from transactions))


