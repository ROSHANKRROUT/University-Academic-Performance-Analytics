-- Clustering
ALTER TABLE fact_academic_performance
CLUSTER BY (student_id, date_id);

-- Time Travel
SELECT * FROM fact_academic_performance
AT (TIMESTAMP => DATEADD('minute', -10, CURRENT_TIMESTAMP()));