📊 # Google Play Store SQL Analysis

📌 **Project Overview**

This project analyzes a manually curated Google Play Store dataset using SQL.
The dataset was created and cleaned in Excel, then imported into MySQL for querying.
The goal is to practice SQL and demonstrate analytical thinking by solving business-style questions such as app performance, category insights, and pricing analysis.


🛠️ **Tech Stack**

   -  **Dataset**       : Manually created & cleaned in Excel (100 rows and 7 columns)
   -  **Database**      : MySQL
   -  **Tools**         : MySQL Workbench, Excel
   -  **Documentation** : GitHub README


📂 **Repository Structure**

playstore-sql-analysis/
│
├── data/
│   └── google_playstore_apps.csv       # Clean dataset (Excel → CSV)
│
├── queries/
│   └── google_playstore_analysis.sql   # 21 SQL queries with comments
│
├── results/
│   ├── Q01_full_snapshot.csv
│   ├── Q02_unique_categories.csv
│   ├── ...
│   └── Q21_top10_rated.csv
│
└── README.md                          # Project documentation


🔎 **Key Analysis Questions**

The following queries were designed to address business-style questions such as dataset profiling, category trends, app performance, pricing insights, and maintenance activity
    
     Dataset Profiling  : Retrieve all records, unique categories, and unique app names.
     Category Insights  : Identify categories with the highest number of apps, or average ratings above 4.2.
     App Performance    : Find top 5 most installed apps, bottom 5 lowest-rated apps, and top 10 highest-rated apps.
     Pricing Analysis   : Analyze premium apps (price > 600), most expensive apps, and budget apps under 300.
     Maintenance Trends : Track apps last updated after Jan 2023 to evaluate active development.


📊 **Sample Insights**

     - Communication, Gaming, and Education emerge as competitive categories.
     - A small number of apps dominate installs, reflecting strong network effects.
     - Categories like Education & Learning show higher average ratings, suggesting user trust.
     - Premium-priced apps are rare compared to free apps.


🚀 **Next Steps**

     - Extend project with window functions and subqueries.
     - Create an Excel or Power BI dashboard from exported CSV results.
     - Document business recommendations based on insights (e.g., which categories are underserved vs. saturated).
     - These extensions would make the project more applicable to real-world business analytics scenarios.

