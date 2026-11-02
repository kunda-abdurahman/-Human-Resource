USE attrition;

SELECT *
FROM employee;

-- - calculate attrition and time period,employees who left from average headcount. 

SELECT
COUNT(CASE WHEN attrition = 'yes' THEN 1 END) AS employees_left,
COUNT(*) AS Total_headcount, -- employees who left from the total_headcount
ROUND(
(CAST(COUNT(CASE WHEN attrition = 'yes' THEN 1 END) AS FLOAT)/COUNT(*))* 100, 2
) AS attrition_Rate_percentage -- employees_left from the total_headcount and the average attrition
FROM employee;
-- total employees who left the work are 237 from the total headcount 1470.
-- the attrition percentage rate is 16.12% . 








 

