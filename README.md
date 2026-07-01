# HR Analytics End-to-End Project

## Overview

This project demonstrates an end-to-end HR Analytics workflow using Python, MySQL, and Power BI. The objective is to transform raw HR data into meaningful business insights through data cleaning, SQL analysis, and interactive visualizations. The project follows a complete analytics pipeline, from data preprocessing to dashboard creation, making it suitable for learning, portfolio building, and showcasing data analytics skills.

---

## Dataset

The project uses an HR Analytics dataset containing employee information such as:

* Employee Demographics
* Department and Job Role
* Monthly Income
* Education and Experience
* Performance Rating
* Job Satisfaction
* Work-Life Balance
* Overtime
* Attrition

The dataset was cleaned and prepared before being used for analysis and visualization.

---

## Tools & Technologies

* **Python** – Data loading, cleaning, and preprocessing
* **Pandas & NumPy** – Data manipulation
* **MySQL** – Data storage and SQL analysis
* **SQLAlchemy** – Database connection
* **Power BI** – Interactive dashboard creation
* **GitHub** – Project hosting

---

## Project Workflow

### 1. Data Loading

* Imported the HR dataset using Pandas.
* Explored the dataset structure, columns, and summary statistics.

### 2. Data Cleaning

* Handled missing values.
* Removed duplicate records.
* Removed unnecessary columns.
* Renamed columns for consistency.
* Verified data types.
* Prepared a clean dataset for analysis.

### 3. Database Integration

* Connected Python to MySQL.
* Exported the cleaned dataset into a MySQL database.
* Verified successful data import.

### 4. SQL Analysis

Performed SQL queries to answer business questions, including:

* Employee distribution by department
* Average salary analysis
* Top-paid employees
* Workforce demographics
* Performance rating distribution
* Work-life balance analysis
* Overtime analysis
* Attrition analysis and key contributing factors

### 5. Power BI Dashboard

Built an interactive HR Analytics dashboard featuring:

* Total Employees
* Employees Left
* Attrition Rate
* Average Employee Age
* Average Tenure
* Department-wise Employee Distribution
* Salary Analysis
* Education Distribution
* Overtime Analysis
* Attrition Insights

Interactive slicers allow users to filter data by department, job role, gender, and attrition status.

---

## Dashboard Highlights

The Power BI dashboard provides:

* Workforce overview through KPI cards
* Department-wise employee analysis
* Salary comparison across departments
* Employee demographic insights
* Overtime and work-life balance analysis
* Attrition trends and contributing factors
* Interactive filtering for deeper exploration

---

## Key Results

* Successfully cleaned and transformed the HR dataset.
* Integrated Python with MySQL for efficient data storage and querying.
* Identified workforce trends through SQL analysis.
* Built an interactive dashboard for business decision-making.
* Generated actionable insights related to employee distribution, compensation, performance, and attrition.
* Delivered a complete end-to-end HR Analytics solution from raw data to visualization.

---

## Project Structure

```text
HR-Analytics-End-to-End-Project/
│
├── data/
│   ├── HR_Analytics.csv
│
├── python/
│   └── hr_analysis.py
│
├── sql/
│   └── hr_analysis_queries.sql
│
├── powerbi/
│   ├── HR_Analytics_Dashboard.pbix
│
├── README.md
```

---

## How to Run

### 1. Clone the Repository

```bash
git clone 
```

### 2. Install Required Libraries

```bash
pip install pandas numpy SQLAlchemy
```

### 3. Configure MySQL

* Create a MySQL database.
* Update the database credentials in the Python script.

### 4. Run the Python Script

```bash
python hr_analysis.py
```

This will:

* Load the dataset
* Clean the data
* Export the cleaned dataset to MySQL

### 5. Execute SQL Queries

Run the SQL script in MySQL Workbench to perform business analysis.

### 6. Open the Power BI Dashboard

Open the `.pbix` file in Power BI Desktop to explore the interactive dashboard.

---

## Future Improvements

* Predict employee attrition using Machine Learning.
* Automate dashboard refresh using scheduled data updates.
* Deploy the dashboard to the Power BI Service.
* Integrate additional HR metrics for deeper workforce analysis.

---

# HR-Analytics-Project
An end-to-end HR Analytics project that cleans employee data using Python, performs business analysis with MySQL, and visualizes workforce insights through an interactive Power BI dashboard.
