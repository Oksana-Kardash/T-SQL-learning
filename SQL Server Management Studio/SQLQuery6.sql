select datename (weekday, getdate () );

select concat ('june 25, 2020 is on a', datename (weekday, '06/25/2020'));

select concat ('june 25, 2020 is on a', datename (dayofyear, '06/25/2020'), 'of the year' , datename(year, '06/25/2020'));

select datename (weekday, getdate ()), datename (month, getdate()), datename (QUARTER, getdate());
select datepart (weekday, getdate ()), datepart (month, getdate()), datepart (QUARTER, getdate());