# Write your MySQL query statement below
select r.contest_id, ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
from Users as u
right join Register as r
on u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC;