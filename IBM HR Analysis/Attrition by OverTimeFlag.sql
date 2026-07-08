SELECT
	OverTimeFlag,
	COUNT(*) AS total_employees,
	SUM(AttritionFlag) AS employees_left,
	ROUND(AVG(AttritionFlag) * 100, 2) AS attrition_rate
FROM hr_employees
GROUP BY OverTimeFlag
ORDER BY attrition_rate DESC;