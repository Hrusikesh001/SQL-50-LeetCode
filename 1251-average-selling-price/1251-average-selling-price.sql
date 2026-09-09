# Write your MySQL query statement below
select p.product_id, Round(ifnull(SUM(p.price * u.units)/sum(u.units),0), 2) as average_price
from Prices as p
left join UnitsSold as u
ON p.product_id = u.product_id
AND u.purchase_date >= p.start_date
AND u.purchase_date <= p.end_date
GROUP BY p.product_id;