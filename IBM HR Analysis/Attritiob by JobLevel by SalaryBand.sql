SELECT
	JobLevel,
	CASE 
		WHEN MonthlyIncome < 3000 THEN 'Low'
		WHEN MonthlyIncome BETWEEN 3000 AND 6000 THEN 'Medium'
		ELSE 'High'
	END AS salary_band,
	COUNT(*) AS total_employees,
	SUM(AttritionFlag) AS employees_left,
	ROUND(AVG(AttritionFlag) * 100, 2) AS attrition_rate 
FROM hr_employees
GROUP BY JobLevel, salary_band
ORDER BY JobLevel, attrition_rate DESC;