-- create table:
CREATE TABLE test(
user_ID int(20),
user_Name varchar(255),
user_Surname varchar(255),
user_Date varchar(50));

-- alter:
ALTER TABLE test
MODIFY COLUMN user_ID int(11) NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (user_ID); 

-- Select:
SELECT *FROM test;

-- table-e inputlar daxil etmek:
INSERT INTO test(user_Name,user_Surname,user_Date)
VALUES('Raheddin','Asadzade','30.09.1998');

-- yalniz ferqli olanlari cixartmaq:
SELECT distinct user_Name FROM test;

-- yalniz ferqli olanlarin sayini cixartmaq:
SELECT count(DISTINCT user_Name) from test;

-- ferqli olanlarin sayini ver ve DISTINCTUSER_NAME table-nin altinda:
select count(distinct user_Name) as DISTINCTUSER_NAME
from test;

-- where:
select * from test
where user_Date='30.09.1998';

-- add new column :
alter table test 
add column created_at timestamp default current_timestamp;

-- The AND operator displays a record if all the conditions separated by AND are TRUE.
select * from test
where user_Name='Raheddin' and user_id=4;

-- The OR operator displays a record if any of the conditions separated by OR is TRUE.
select * from test
where user_ID=4 or user_Date='08.08.1998';

-- The NOT operator displays a record if the condition(s) is NOT TRUE.
select * from test
where not user_ID=1;

-- ORDER BY  ASC-ascending (ARTAN), DESC-Ddescending(AZALAN):
SELECT user_Name from test
order by user_ID DESC;

-- Update:
update test
set user_Name='Taceddin', user_Date='15.12.2003'
where user_Id=1;

-- Delete:
delete from test where user_ID=6;

-- LIMIT:
SELECT * FROM test LIMIT 3;
SELECT * FROM test WHERE user_Surname='Asadzade' LIMIT 2; 

-- add new column
alter table test 
add column user_Age int(11) not null ;

-- update
update test 
set user_age=24 where user_ID=5; 

-- MIN AND MAX:
select min(user_Age) AS min_Age from test; 
select max(user_Age) as max_Age from test;

-- COUNT(), AVG() and SUM() Functions:
select count(user_Age) as Count from test;
select avg(user_Age) as avg_Age from test;
select sum(user_Age) as sum_Age from test;

-- LIKE:
SELECT * FROM test WHERE user_Surname
like 'aa%';

-- in :
select * from test where user_Surname='Asadzade'
in(user_ID=1 or user_ID=2 or user_ID=3);

-- between:
select * from test where user_ID
between 1 and 3;

-- 