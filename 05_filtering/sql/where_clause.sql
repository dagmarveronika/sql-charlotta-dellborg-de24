SELECT * FROM main.data_jobs;

SELECT
	COUNT(*) AS jobs_lower_than_50k
FROM
	main.data_jobs
WHERE
	salary_in_usd < 50000;

SELECT
	*
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';

SELECT
	MEDIAN(salary_in_usd) AS median_salary_usd
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';

SELECT
	MEDIAN(salary_in_usd) AS median_salary_usd
FROM
	main.data_jobs
WHERE
	experience_level = 'EX';