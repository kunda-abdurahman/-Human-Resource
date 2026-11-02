USE attrition;

-- compare rates by department ,tenure,role,and salary band ,while checking small_group sample sizes. 

SELECT 
    Department,
    COUNT(*) AS headcount, -- getting the number of all the employees
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left, -- getting the number of employees who left the job 
    ROUND(CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS REAL) / COUNT(*) * 100, 2) AS attrition_rate_pct -- getting the percentage rate of the attrition
FROM employee
GROUP BY Department
ORDER BY attrition_rate_pct DESC;

-- Sales department has the highest attrition percentage rate of 20.63% and 92 employees who left. 
-- Human Resources has attrition percentage rate of 19.05% and 12 employees who left the job. 
-- Research $ Development department has attrition percentage rate of 13.84%
-- with highest number of employees who left the job.  