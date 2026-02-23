-- CTE: Top 5 Students Per Department

WITH ranked_students AS (
    SELECT 
        s.department,
        s.student_id,
        AVG(f.marks) AS avg_marks,
        RANK() OVER (PARTITION BY s.department ORDER BY AVG(f.marks) DESC) AS rank
    FROM fact_academic_performance f
    JOIN dim_student s ON f.student_id = s.student_id
    GROUP BY s.department, s.student_id
)
SELECT * FROM ranked_students WHERE rank <= 5;


-- Window Function: Moving Average

SELECT
    student_id,
    date_id,
    marks,
    AVG(marks) OVER (
        PARTITION BY student_id
        ORDER BY date_id
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg
FROM fact_academic_performance;