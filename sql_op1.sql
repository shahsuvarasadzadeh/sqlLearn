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

-- 