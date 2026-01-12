#  Dubai Real Estate Market Analysis (End-to-End Pipeline)

![Dashboard Preview](dashboard/dubai_dashboard_final.png)

##  Project Overview
This project is a full-stack data analytics simulation designed to answer a specific business question for a hypothetical investor: **"Where should I invest 2 Million AED in the Dubai Real Estate market for maximum stability and yield?"**

Using a dataset of **100,000+ real estate transactions**, I built an end-to-end pipeline—from raw data cleaning in Python to SQL-based market segmentation and final executive visualization in Power BI.

> ** Data Context:** This project utilizes the 2022-2023 transaction dataset from the Dubai Land Department to demonstrate a scalable analytics workflow. The insights reflect market conditions during that period.

---

##  Key Business Insights (Executive Summary)

### 1. The "Liquidity King": 1-Bedroom Apartments
* **Finding:** 1-Bedroom units significantly outperform Studios and 2-Bedroom apartments in transaction volume.
* **Recommendation:** Investors prioritizing liquidity (ease of exit/renting) should target 1-Bedroom configurations.

### 2. The "Value" Arbitrage: Villas vs. Units
* **Finding:** While Villas command higher absolute ticket prices, **Apartments (Units)** trade at a significantly higher **Price Per SqFt**.
* **Insight:** Investors get more "land" value with Villas, but the market places a higher premium on vertical density (Apartments) in prime locations.

### 3. The Top Volume Hotspot
* **Finding:** **Business Bay** recorded the highest transaction volume, identifying it as the current center of investor activity.

---

##  Technical Workflow

### Phase 1: Data Engineering (Python & Pandas)
* **Objective:** Transform raw, messy data into a clean analytical dataset.
* **Key Challenges Solved:**
    * **Data Cleaning:** Handled missing 'Room' values using domain-specific imputation logic (e.g., mapping area size ranges to room counts).
    * **Outlier Removal:** Applied the **Interquartile Range (IQR)** method to remove statistical anomalies in price and area, reducing dataset noise by ~4%.
    * **Standardization:** Normalized messy text fields (e.g., "3 B/R" vs "Three Bed") using Regex.

### Phase 2: The Analysis Engine (SQL)
* **Objective:** Migrate clean data to a SQL database to run high-performance queries.
* **Tech:** SQLite, Python `sqlite3`.
* **Key Queries:**
    * **Market Segmentation:** Aggregated sales data by `property_type` to compare Asset Classes.
    * **Price Efficiency:** Calculated `Price_Per_SqFt` dynamically to find undervalued sectors.
    * **Volume Analysis:** Ranked top performing areas by transaction count.

### Phase 3: Executive Dashboard (Power BI)
* **Objective:** Visualize insights for non-technical stakeholders.
* **Key Visuals:**
    * **Scatter Plot:** Value analysis correlating *Total Price* vs. *Price Efficiency*.
    * **Donut Chart:** Market share breakdown by Unit Configuration.
    * **KPI Cards:** High-level market volume metrics.

---

##  Repository Structure

```text
├── data/
│   ├── cleaned_dubai_data.csv    # The final processed dataset
│   └── raw_data_sample.csv       # Sample of original data
├── notebooks/
│   └── data_cleaning_pipeline.ipynb  # Phase 1: Python Cleaning Logic
├── sql_queries/
│   ├── analysis_engine.py        # Phase 2: Python script running SQL queries
│   └── key_metrics.sql           # Raw SQL queries used for analysis
├── dashboard/
│   └── dubai_dashboard_final.png # Phase 3: Power BI Visualization
├── README.md                     # Project Documentation
└── requirements.txt              # Python dependencies
