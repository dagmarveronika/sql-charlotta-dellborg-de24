-- AND
SELECT
	job_title,
	experience_level,
	(salary_in_usd * 10.68)/ 12 AS monthly_salary_sek
FROM
	main.data_jobs
WHERE
	(monthly_salary_sek > 20000)
	AND (monthly_salary_sek < 50000)
ORDER BY monthly_salary_sek DESC;

-- BETWEEN ... AND statement
SELECT
	job_title,
	experience_level,
	(salary_in_usd * 10.68)/ 12 AS monthly_salary_sek
FROM
	main.data_jobs
WHERE
	monthly_salary_sek BETWEEN 20000 AND 50000
ORDER BY monthly_salary_sek DESC;

-- OR
SELECT
	COUNT(*)
FROM
	main.data_jobs
WHERE
	experience_level = 'Senior'
	OR experience_level = 'Expert';


SELECT
	COUNT(*)
FROM
	main.data_jobs
WHERE
	NOT (experience_level = 'Senior'
	OR experience_level = 'Expert');