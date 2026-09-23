# Write your MySQL query statement below
SELECT employee_id, department_id
FROM Employee
WHERE employee_id IN (
       SELECT employee_id
       FROM Employee
       GROUP BY employee_id
       HAVING COUNT(*) = 1
   ) or primary_flag = 'Y'
order by employee_id
 