USE attrition;

-- getting total revenues from each departments 
SELECT 
    Department,
    SUM(MonthlyIncome) AS Total_Revenue
FROM employee
    
GROUP BY 
    Department
ORDER BY Total_Revenue DESC;

-- Research $ Development has the highest revenue of 6036284
-- Sales has 3103791 reveunes
-- Human Resources has 419234 revenues. 