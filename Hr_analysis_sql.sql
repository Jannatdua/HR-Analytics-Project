-- Q1. Which department has the most employees?
 SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM hr_data
GROUP BY Department
ORDER BY Total_Employees DESC;

-- Q2.Which department pays the highest salaries?
 SELECT
    Department,
    ROUND(AVG(Monthly_Income),2) AS Average_Salary
FROM hr_data
GROUP BY Department
ORDER BY Average_Salary DESC;

-- Q3.Top 10 highest-paid employees. 
 SELECT
    EmpID,
    Job_Role,
    Department,
    Monthly_Income
FROM hr_data
ORDER BY Monthly_Income DESC
LIMIT 10;

-- Q4.  Which department has younger or older employees?
SELECT
    Department,
    ROUND(AVG(Age),1) AS Average_Age
FROM hr_data
GROUP BY Department;

-- Q5. Which educational background is most common?
 SELECT
    EducationField,
    COUNT(*) AS Total_Employees
FROM hr_data
GROUP BY EducationField
ORDER BY Total_Employees DESC;

-- Q6. Which department retains employees the longest? 
SELECT
    Department,
    ROUND(AVG(Years_At_Company),2) AS Average_Tenure
FROM hr_data
GROUP BY Department
ORDER BY Average_Tenure DESC;

-- Q7. How many employees have each performance rating?
SELECT
    PerformanceRating,
    COUNT(*) AS Number_of_Employees
FROM hr_data
GROUP BY PerformanceRating;

-- Q8. Compare work-life balance across departments.
SELECT
    Department,
    ROUND(AVG(Work_Life_Balance),2) AS Avg_WorkLifeBalance
FROM hr_data
GROUP BY Department
ORDER BY Avg_WorkLifeBalance DESC;

-- Q9. How many employees are working overtime by department 
SELECT
    Department,
    SUM(CASE WHEN OverTime='Yes' THEN 1 ELSE 0 END) AS Overtime_Employees,
    COUNT(*) AS Total_Employees
FROM hr_data
GROUP BY Department;

-- Q10. Why Are Employees Leaving?
SELECT
    OverTime,
    SalarySlab,
    Work_Life_Balance,
    JobSatisfaction,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr_data
GROUP BY
    OverTime,
    SalarySlab,
    Work_Life_Balance,
    JobSatisfaction
ORDER BY Attrition_Rate DESC;