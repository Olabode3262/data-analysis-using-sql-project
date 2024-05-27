use food_supply;


select * from FoodBalanceSheets_E_Africa_NOFLAG
where element like 'import%'

select * from FoodBalanceSheets_E_Africa_NOFLAG
where unit like 'kg'


delete from FoodBalanceSheets_E_Africa_NOFLAG
where  item = 'grand total'

update FoodBalanceSheets_E_Africa_NOFLAG
set element = 'Food consumed'
where unit like 'kcal%' 

update FoodBalanceSheets_E_Africa_NOFLAG
set element = 'protein consumed'
where unit like 'g/%' 

select * from FoodBalanceSheets_E_Africa_NOFLAG
where element = 'protein consumed' 

select * from FoodBalanceSheets_E_Africa_NOFLAG
where element =  'food consumed'

select * from FoodBalanceSheets_E_Africa_NOFLAG
where element =  'production' and item = 'oats'

--viewing the total production of nigerian food
select item, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag 
where area = 'nigeria' and element = 'production'
group by item
order by '2014' desc;

--veiwing the country with most production
select area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'production' and unit = '1000 tonnes'
group by area, element
order by '2014' desc;

--veiwing the country with most imports by items
select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'import quantity' and unit = '1000 tonnes'
group by area_code, area, item, element
order by '2014' desc;

--viewing the countries total import over 5 years
select area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'import quantity' and unit = '1000 tonnes'
group by area, element
order by '2014' desc;


select * from FoodBalanceSheets_E_Africa_NOFLAG
where element like 'other%';

--veiwing the countries with exports by items
select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'export quantity' and unit = '1000 tonnes'
group by area_code, area, item, element
order by '2014' desc;

--viewing the countries total exports in 5 years
select area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'export quantity' and unit = '1000 tonnes'
group by area, element
order by '2014' desc;

--viewing the countries total production within the 5 years
select area_code, area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'production' and unit = '1000 tonnes'
group by area_code, area, element
order by '2014' desc;

--viewing countries with production by items
select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'production' and unit = '1000 tonnes'
group by area_code, area, item, element
order by '2014' desc;

select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'food consumed'
group by area_code, area, item, element
order by '2014' desc;

select area_code, area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element = 'food consumed'
group by area_code, area, element
order by '2014' desc;

select area_code, area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'domestic%'
group by area_code, area, element
order by '2014' desc;


select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'domestic%'
group by area_code, area, item, element
order by '2014' desc;

select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'stock%'
group by area_code, area, item, element
order by '2014' desc;

select area_code, area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'stock%'
group by area_code, area, element
order by '2014' desc;

select area_code, area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'losses'
group by area_code, area, element
order by '2014' desc;

select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'losses'
group by area_code, area, item, element
order by '2014' desc;

select area_code, area, item, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'food supply'
group by area_code, area, item, element
order by '2014' desc;


select area_code, area, element, sum(y2014) '2014', sum(y2015) '2015', 
		sum(y2016) '2016', sum(y2017) '2017', sum(y2018) '2018'
from foodbalancesheets_e_africa_noflag
where element like 'food supply'
group by area_code, area, element
order by '2014' desc;