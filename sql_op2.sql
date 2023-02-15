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
select *
from test full join test_2 on test.user_ID=test_2.user_ID
order by test.user_ID;

-- left join
-- left join olanda 2 table-in sol terefine baxaraq table-i
-- yaradir yeni sol terefde  siralama 4 sagda 5 dirse ozaman tableleri 
-- birlesdiren zaman yalniz 4-e qeder olanlari birlesdirir .
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
select *
from test t right join test_2 t2 
on t.user_ID=t2.user_ID;

--  join*
select t.user_Name,t2.city_name from test t ,test_2 t2
where t.user_ID<>t2.user_ID
and t.user_ID=t2.city_id order by t.user_Age asc;

-- self join
select * from test t, test t2 
where t.user_ID<>t2.user_ID
and t.user_Name=t.user_Name order by t.user_Date;

-- union and union all:
-- aralarindaki tek ferq union eyni olan stunu 2-ci defe vermir; 
select user_Name from test
union 
select city_name from test_2;

-- Group by:
select SUM(user_ID),user_Name,user_Age from test
group by user_Name ;






