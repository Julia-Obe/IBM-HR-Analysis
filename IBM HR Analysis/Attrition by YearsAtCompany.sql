SELECT
	CASE
		WHEN YearsAtCompany <= 2 THEN 'New'
		WHEN YearsAtCompany BETWEEN 3 AND 5 THEN 'Mid'
		ELSE 'Long-term'
	END AS years_at_company_band,
	COUNT(*) AS total_employees,
	SUM(AttritionFlag) AS employees_left,
	ROUND(AVG(AttritionFlag) * 100, 2) AS attrition_rate
FROM hr_employees
GROUP BY years_at_company_band
ORDER BY attrition_rate DESC;