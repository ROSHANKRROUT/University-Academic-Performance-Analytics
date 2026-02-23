CREATE ROLE analyst_role;
GRANT SELECT ON fact_academic_performance TO ROLE analyst_role;

CREATE MASKING POLICY marks_mask AS (val FLOAT) 
RETURNS FLOAT ->
CASE
    WHEN CURRENT_ROLE() IN ('ADMIN') THEN val
    ELSE NULL
END;

ALTER TABLE fact_academic_performance
ALTER COLUMN marks SET MASKING POLICY marks_mask;