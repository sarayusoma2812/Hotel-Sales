with hotels as(
select * from Hoteldata.dbo.['2018$']
union
select * from Hoteldata.dbo.['2019$']
union
select * from Hoteldata.dbo.['2020$'])

select * from hotels
left join Hoteldata.dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join Hoteldata.dbo.meal_cost$
on meal_cost$.meal = hotels.meal
