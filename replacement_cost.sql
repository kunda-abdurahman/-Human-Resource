-- Estimate the replacement cost of a employee. 
USE attrition;


SELECT *
FROM employee;


SELECT 
    COUNT(*) AS total_departed_employees,
    ROUND(AVG(MonthlyIncome)) AS avg_monthly_income,
    ROUND(AVG(MonthlyIncome) * 12) AS avg_annual_salary,
    ROUND(SUM(MonthlyIncome) * 12) AS total_annual_salary_lost,
    ROUND((SUM(MonthlyIncome) * 12)) AS estimated_total_replacement_cost_75pct
FROM employee
WHERE Attrition = 'Yes';

-- the estimate total replacement cost for the department is 1361449200. 
-- total annual salary lost is 13614492 which is closely to the replacement cost.


-- estimate replacement cost from each department
SELECT 
    JobRole,
    COUNT(*) AS department_count,
    ROUND(AVG(MonthlyIncome)) AS main_monthly_income,
    ROUND(AVG(MonthlyIncome) * 12) AS main_annual_salary,
    ROUND(SUM(MonthlyIncome) * 12) AS total_annual_salary_lost,
    ROUND((SUM(MonthlyIncome) * 12)) AS estimated_replacement_cost_75pct
FROM employee
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY total_annual_salary_lost DESC;

-- Sales Executive has the highest  replacement cost of 5122476 
-- Research Director has the lowest replacement cost of 465492 


 