use food_supply;

--viewing the entire data table
select * from FoodBalanceSheets_E_Africa_NOFLAG;

--veiwing consumptions greater than 50 
select area_code, area, item, element, unit, y2014, y2015, y2016, y2017, y2018
from FoodBalanceSheets_E_Africa_NOFLAG
where y2015 > 50 and y2016 > 50 and y2017 >50 and y2018 > 50;

--veiwing consumptions less than 50 
select area_code, area, item, element, unit, y2014, y2015, y2016, y2017, y2018
from FoodBalanceSheets_E_Africa_NOFLAG
where y2015 < 50 and y2016 < 50 and y2017 <50 and y2018 < 50;

--veiwing consumptions greater than 50 in Algeria only
select area_code, area, item, element, unit, 
		y2014, y2015, y2016, y2017, y2018
from FoodBalanceSheets_E_Africa_NOFLAG
where y2015 > 50 and y2016 > 50 and y2017 >50
		and y2018 > 50 and area = 'algeria';

--consumption of eggs in algeria within the 5 years
select area,  sum(y2014) y2014, sum(y2015) y2015, 
	sum(y2016) y2016, sum(y2017) y2017, sum(y2018) y2018
from FoodBalanceSheets_E_Africa_NOFLAG
where item = 'eggs' and area = 'algeria'
group by area
order by Area desc;

--consumption of eggs in all countires within the 5 years
select area,  sum(y2014) y2014, sum(y2015) y2015, sum(y2016) y2016, sum(y2017) y2017, sum(y2018) y2018
from FoodBalanceSheets_E_Africa_NOFLAG
where item = 'eggs' 
group by area
order by y2014 desc;

--update cote divoire to proper spelling
update FoodBalanceSheets_E_Africa_NOFLAG
set area = 'Cote divoire'
where area like 'C?e%'

--updating all the food supply to proper spelling
update FoodBalanceSheets_E_Africa_NOFLAG
set element = 'Food supply'
where element like 'food%' 

--updating all the fat supply to proper spelling
update FoodBalanceSheets_E_Africa_NOFLAG
set element = 'Fat supply'
where element like 'fat%' 

--updating all protein supply to proper spelling
update FoodBalanceSheets_E_Africa_NOFLAG
set element = 'Protien supply'
where element like 'protein%' 

--removing all null values 
delete from FoodBalanceSheets_E_Africa_NOFLAG
where  y2014 is null or y2015 is null or y2016 is null or y2017 is null or y2018 is null

--viewing only the supply of food items to all countries
select * from FoodBalanceSheets_E_Africa_NOFLAG
where element = 'food supply'

--standardizing the decimals in all the years
alter table FoodBalanceSheets_E_Africa_NOFLAG
alter column y2014 integer
alter table FoodBalanceSheets_E_Africa_NOFLAG
alter column y2015 integer
alter table FoodBalanceSheets_E_Africa_NOFLAG
alter column y2016 integer
alter table FoodBalanceSheets_E_Africa_NOFLAG
alter column y2017 integer
alter table FoodBalanceSheets_E_Africa_NOFLAG
alter column y2018 integer;

--viewing the entire dataset again 
select * from FoodBalanceSheets_E_Africa_NOFLAG;

--deleting all the data with 0 input 
delete from FoodBalanceSheets_E_Africa_NOFLAG
where  y2014 = 0 and y2015 = 0 and y2016 = 0 and y2017 = 0 and y2018 = 0


select * from FoodBalanceSheets_E_Africa_NOFLAG
where item = 'population'

select * from FoodBalanceSheets_E_Africa_NOFLAG
where element = 'import quantity'

select * from FoodBalanceSheets_E_Africa_NOFLAG
where area = 'algeria' and item = 'grand total' 

select * from FoodBalanceSheets_E_Africa_NOFLAG
where element like 'domestic%'

select count(distinct(item)) 
from FoodBalanceSheets_E_Africa_NOFLAG

select avg(y2014) y2014, avg(y2015) y2015, avg(y2016) y2016, avg(y2017) y2017, avg(y2018) y2018
from FoodBalanceSheets_E_Africa_NOFLAG
where element = 'export quanlity';

select avg(y2014) y2014, avg(y2015) y2015, avg(y2016) y2016, avg(y2017) y2017, avg(y2018) y2018
from FoodBalanceSheets_E_Africa_NOFLAG

select * from FoodBalanceSheets_E_Africa_NOFLAG
where element = 'export quantity';

select * from FoodBalanceSheets_E_Africa_NOFLAG
where element = 'export quantity' and item = 'oats'


select * from FoodBalanceSheets_E_Africa_NOFLAG
where element = 'import quantity' and item = 'oats'

select distinct(item)
from FoodBalanceSheets_E_Africa_NOFLAG

select distinct(element)
from FoodBalanceSheets_E_Africa_NOFLAG
