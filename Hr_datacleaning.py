import pandas as pd
import numpy as np

# Loading the dataset
df = pd.read_csv("HR_Analytics.csv")


# Basic structural info
print(df.head())

print(df.info())

print(df.shape)

print(df.describe())

print(df.columns)


# Checking for missing values
print(df.isnull().sum())

# Handling missing values and converting float data type to int 
median_value = round(df["YearsWithCurrManager"].median())

df["YearsWithCurrManager"] = (
    df["YearsWithCurrManager"]
    .fillna(median_value)
    .astype(int)
)

# Checking duplicates
print("Duplicates:", df.duplicated().sum())

# Removing duplicates
df.drop_duplicates(inplace=True)

# Removing Unnecessary Columns
df.drop(columns=["EmployeeCount","Over18","StandardHours"],inplace=True)

# Merging similar columns

# Age and Age_group represents same info
df.drop(columns=["AgeGroup"], inplace=True)

# EmployeeNumber and EmpID both identify employees
df.drop(columns=["EmployeeNumber"], inplace=True)

# Renaming Coulmns
df.rename(columns={
    "DistanceFromHome":"Distance_From_Home",
    "MonthlyIncome":"Monthly_Income",
    "DailyRate":"Daily_Rate",
    "HourlyRate":"Hourly_Rate",
    "MonthlyRate":"Monthly_Rate",
    "JobRole":"Job_Role",
    "BusinessTravel":"Business_Travel",
    "WorkLifeBalance":"Work_Life_Balance",
    "YearsAtCompany":"Years_At_Company"
}, inplace=True)

# Verifying data type
print(df["YearsWithCurrManager"].dtype)

print(df.info())
print(df.shape)


from sqlalchemy import create_engine

# MySQL connection
username = "root"
password = "jannat123"
host = "localhost"
port = "3306"
database = "hr_analysis"

engine = create_engine(f"mysql+pymysql://{username}:{password}@{host}:{port}/{database}")

print("Connection Successful!")


# Upload the dataframe
df.to_sql("hr_data",con=engine,if_exists="replace",index=False)

print("Data uploaded successfully!")


# Read back sample
hr = pd.read_sql("SELECT * FROM hr_data LIMIT 5;",con=engine)

print(hr)
