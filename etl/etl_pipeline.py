from extract import extract_from_csv
from transform import transform_data
from load import load_to_snowflake

def run_etl():
    df = extract_from_csv("data/student_performance.csv")
    df_transformed = transform_data(df)
    load_to_snowflake(df_transformed)

if __name__ == "__main__":
    run_etl()