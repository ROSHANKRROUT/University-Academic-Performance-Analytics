
CREATE TABLE dim_student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    department VARCHAR(100),
    enrollment_year INT
);

CREATE TABLE dim_course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    department VARCHAR(100)
);

CREATE TABLE dim_faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT,
    semester VARCHAR(20)
);

-- FACT TABLE

CREATE TABLE fact_academic_performance (
    performance_id INT AUTOINCREMENT,
    student_id INT,
    course_id INT,
    faculty_id INT,
    date_id DATE,
    marks FLOAT,
    attendance_percentage FLOAT,
    grade VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES dim_student(student_id),
    FOREIGN KEY (course_id) REFERENCES dim_course(course_id),
    FOREIGN KEY (faculty_id) REFERENCES dim_faculty(faculty_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);