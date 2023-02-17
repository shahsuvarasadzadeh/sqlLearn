-- drop database:
drop database ccb_task;

-- create database:
create database sql_ques;

-- use :
use sql_ques;

-- create table :
create table country(
 country_id int not null auto_increment primary key,
 country_name varchar(255) not null,
 region_id int(11)not null);
 
 -- select:
 select*from country;
 
 -- drop table:
drop table counti;

-- ALTER TABLE:
alter table country
add date_of_birth year;

alter table country
modify date_of_birth datetime;

alter table country
drop region_id;

-- Constraints(mehdudiyyetler)
-- NOT NULL: stun null deyer qebul ede bilmez:
CREATE TABLE city(
city_id int auto_increment not null primary key,
city_name varchar(255) not null,
city_population int(11) not null);

-- UNIQUE: bir stun icerisindeki deyerler feqli olmalidir .
ALTER TABLE city
add unique(city_id,city_name);
alter table country
add constraint uc_country unique(country_name,country_id);

-- 	PRIMARY KEY:
alter table country
add primary key(country_id,country_name) ;

insert into country(date_of_birth)
values(0000-00-00);

-- select:
select*from city;

-- ass column:
alter table city
add column population_weight int(11) not null check(population_weight<150);

-- FORIGIN KEY:
ALTER TABLE city 
add foreign key(country_id) references country(country_id);

-- check:
alter table city
add CHECK(city_id>=18);

insert into city(population_age)
values(17);

show create table city;




 