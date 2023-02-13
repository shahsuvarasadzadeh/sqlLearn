-- create new table 
create table test_2(
city_id INT AUTO_INCREMENT PRIMARY KEY,
 city_name varchar(255) NOT NULL,
 city_population int(11) not null);
 
 -- select
 select*from test_2;
 
 -- add
insert into test_2(city_name,city_population)
values('Baku',2000000),
('Lankaran', 800000),('Ganja',500000),
('Qabala',300000);

-- Full Joins
select user_Name,t2.city_name 
from test  join test_2 t2  on test.user_ID=t2.user_ID ;

-- left join
select *
from test left join test_2
on test.user_ID=test_2.user_ID;

-- where compare with  joins
select * from test , test_2
where test.user_ID=test_2.user_ID;

-- Inner Join:
select t.user_Age,t.user_Name,t2.city_name,t2.city_population FROM test t inner join test_2 t2
on t.user_ID=t2.user_ID; 

-- right join:


