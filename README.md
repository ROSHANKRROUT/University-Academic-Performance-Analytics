University Academic Performance Analytics
Project Overview

This project is a basic academic-level Data Engineering and Analytics project that analyzes university student performance data using SQL, Python, Apache Spark, and Snowflake concepts.

The system simulates how universities can track, process, and analyze student academic performance using modern data tools.

# Architecture

Source Systems  
⬇  
Python ETL  
⬇  
Snowflake Data Warehouse  
⬇  
Apache Spark Processing  
⬇  
Analytics Layer  
⬇  
Streamlit Dashboard  


# Project Structure
university-academic-performance-analytics
│
├── data/ # Sample CSV datasets
├── database/ # SQL scripts (Star Schema + Advanced Queries)
├── etl/ # Python ETL pipeline
├── spark/ # Spark batch & streaming scripts
├── dashboard/ # Streamlit dashboard code
├── architecture/ # Architecture diagram (Markdown)
├── presentation/ # Final project PPT
├── requirements.txt # Required Python libraries
└── README.md # Project documentation

# Technologies Used

- SQL (CTE, Window Functions, Indexing)
- Python (Pandas, SQLAlchemy)
- Apache Spark (Batch + Streaming)
- Snowflake Concepts (Clustering, Time Travel)
- Streamlit (Interactive Dashboard)
- Git & GitHub

---

# Data Warehouse Design

The project uses a **Star Schema**:

# Dimension Tables:
- dim_student
- dim_course
- dim_department
- dim_date

# Fact Table:
- fact_academic_performance

# Advanced SQL Implemented

- Common Table Expressions (CTE)
- Window Functions (RANK, Moving Average)
- Aggregations
- Partitioning Concepts
