SELECT
	MonthlyIncome,
		CASE MonthlyIncome < 3000 SET AS Low,
		CASE MonthlyIncome BETWEEN 3000- 6000 SET AS Medium,
		ELSE High
	END
	COUNT(*) AS total_employees,
	SUM(AttritionFlag) AS employees_left,
	ROUND(AVG(AttritionFlag) * 100, 2) AS attr
		