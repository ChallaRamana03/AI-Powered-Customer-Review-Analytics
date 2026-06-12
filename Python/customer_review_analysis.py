import pandas as pd

# Load Dataset
df = pd.read_csv("customer_reviews_raw.csv")

# First 5 Rows
print("First 5 Rows:")
print(df.head())

# KPI Analysis
print("\nTotal Reviews:", len(df))

print("Average Rating:",
      round(df["Rating"].mean(), 2))

print("Recommendation Rate:",
      round(df["Recommended IND"].mean() * 100, 2), "%")

# Top 5 Categories
print("\nTop 5 Categories:")
print(
    df["Class Name"]
    .value_counts()
    .head()
)

# Average Rating by Department
print("\nAverage Rating by Department:")
print(
    df.groupby("Department Name")["Rating"]
    .mean()
    .round(2)
)
