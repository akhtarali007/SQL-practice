/* Note:
 Query to see relevant data for data analysts 	
*/
SELECT 
    job_postings_fact.job_title_short, 
    job_postings_fact.job_location,
    job_postings_fact.job_via,
    job_postings_fact.salary_year_avg
FROM 
    job_postings_fact
WHERE 
    job_postings_fact.job_location IN ('Boston, MA', 'Anywhere')
    AND 
    (
        (job_postings_fact.job_title_short = 'Data Analyst' AND job_postings_fact.salary_year_avg > 100000)
        OR 
        (job_postings_fact.job_title_short = 'Business Analyst'AND job_postings_fact.salary_year_avg > 70000)
    );

ORDER BY salary_year_avg DESC
