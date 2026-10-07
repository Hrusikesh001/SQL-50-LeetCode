# Write your MySQL query statement below
select d.name as Department, e.name as Employee, e.salary as Salary
from Employee e inner join Department d
on e.departmentId = d.id
where 3 > (
    SELECT COUNT(DISTINCT e2.salary)
FROM Employee e2
WHERE e2.departmentId = e.departmentId
  AND e2.salary > e.salary
)
order by salary desc