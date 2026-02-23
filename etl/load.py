from snowflake.connector import connect
from config.config import SNOWFLAKE_CONFIG

def load_to_snowflake(df):
    conn = connect(**SNOWFLAKE_CONFIG)
    cursor = conn.cursor()

    for _, row in df.iterrows():
        cursor.execute(
            """
            INSERT INTO fact_academic_performance 
            (student_id, course_id, faculty_id, date_id, marks, attendance_percentage, grade)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
            """,
            tuple(row)
        )

    conn.commit()
    cursor.close()
    conn.close()