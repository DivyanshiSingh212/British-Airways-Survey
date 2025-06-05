use  british_airways;
select * from ba_reviews;
select*from countries;

#Country wise analysis
#1.Top 5 countries by volume of reviews
select place as country, count(*) as vol_reviews
from ba_reviews
group by place
order by vol_reviews desc;

#2.Average rating by country
select place as country, avg(rating) as avg_rating
from ba_reviews
group by place
order by avg_rating desc;

#3.Top and bottom countries by rating
select place as country,count(*) as num_reviews, avg(rating) from ba_reviews
group by place
order by num_reviews desc;

#4.Average aggregate analysis
SELECT 
  AVG(rating) AS avg_rating,
  AVG(cabin_staff_service),
  AVG(entertainment),
  AVG(food_beverages),
  AVG(ground_service),
  AVG(seat_comfort),
  AVG(value_for_money)
FROM ba_reviews;

#Aircraft wise analysis
#5.Average rating of aircrafts
SELECT aircraft,
  AVG(rating) AS avg_rating
FROM ba_reviews
GROUP BY aircraft
ORDER BY avg_rating DESC;

#6.Total number of reviews per aircraft type
select aircraft,count(*) as total_reviews from ba_reviews
group by aircraft
order by total_reviews desc;

#7.Average rating for all aspects per aircraft
SELECT Aircraft,
       AVG(cabin_staff_service) AS Avg_Cabin_Staff,
       AVG(entertainment) AS Avg_Entertainment,
       AVG(food_beverages) AS Avg_Food,
       AVG(ground_service) AS Avg_Ground_Service,
       AVG(seat_comfort) AS Avg_Seat_Comfort,
       AVG(value_for_money) AS Avg_Value
FROM ba_reviews
GROUP BY Aircraft;

#8.Comparing experiences for different seat types:
SELECT Seat_Type,
       AVG(cabin_staff_service) AS Avg_Cabin_Staff,
       AVG(entertainment) AS Avg_Entertainment,
       AVG(food_beverages) AS Avg_Food,
       AVG(ground_service) AS Avg_Ground_Service,
       AVG(seat_comfort) AS Avg_Seat_Comfort,
       AVG(value_for_money) AS Avg_Value
FROM ba_reviews
GROUP BY Seat_Type;

