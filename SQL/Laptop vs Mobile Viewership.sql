-- Laptop vs. Mobile Viewership [New York Times SQL Interview Question]

with laptopviews AS
(select COUNT(user_id) as laptop_views FROM viewership WHERE device_type = 'laptop'),
mobileviews AS
(SELECT COUNT(user_id) AS mobile_views FROM viewership WHERE device_type IN ('tablet', 'phone'))

SELECT l.laptop_views, m.mobile_views FROM laptopviews l, mobileviews m
