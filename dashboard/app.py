import streamlit as st
import pandas as pd
from dashboard_utils import load_data

st.title("University Academic Performance Dashboard")

df = load_data()

st.subheader("Department Average Marks")
st.bar_chart(df.groupby("department")["marks"].mean())

student_id = st.selectbox("Select Student", df["student_id"].unique())

st.line_chart(
    df[df["student_id"] == student_id]
    .sort_values("date_id")["marks"]
)