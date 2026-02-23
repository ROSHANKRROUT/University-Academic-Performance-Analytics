import pandas as pd

def transform_data(df: pd.DataFrame) -> pd.DataFrame:
    df = df.dropna()
    df["grade"] = df["marks"].apply(assign_grade)
    return df

def assign_grade(marks: float) -> str:
    if marks >= 90:
        return "A"
    elif marks >= 75:
        return "B"
    elif marks >= 60:
        return "C"
    else:
        return "D"