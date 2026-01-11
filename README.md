##  Phase 1: Data Engineering & Cleaning
**Objective:** Processed 1 million+ raw transaction records from the Dubai Land Department to prepare for investment analysis.

**Key Challenges Solved:**

* **Handling Missing Data:** Implemented domain-specific heuristic rules to impute missing 'Room' numbers based on property size (e.g., <50 sqm = Studio).
* **Outlier Removal:** Applied Interquartile Range (IQR) method to remove statistical anomalies in Price and Area, reducing data noise by ~4%.
* **Dimensionality Reduction:** Dropped high-cardinality columns with >90% missing values (e.g., `rent_value`) to optimize memory usage.

**Tech Stack:** Python, Pandas, NumPy, Regex.

## Phase 2: The Analysis Engine (SQL)
**Objective:** Migrated cleaned data into a SQL database to answer the client's core question: *"Where is the smart money going?"*

**The "Investment Logic" Queries:**
I designed 3 strategic SQL queries to segment the market:
1.  **Liquidity Check:** Identified top 10 areas by transaction volume to ensure exit strategy safety.
2.  **Asset Class Analysis:** Compared `Price_Per_SqFt` between Villas, Apartments, Land to find capital efficiency.
3.  **Unit Configuration:** Analyzed sales volume across Studio, 1-Bed, 2-Bed, 3-Bed units.
4.  
** Key Findings from SQL Analysis:**
* **The Liquidity King:** **1-Bedroom Apartments** dominate the market volume, outperforming Studios 2-Beds, 3-Beds . This represents the safest asset class for rental yields.
* **Value Arbitrage:** While Villas have higher absolute prices, **Apartments (Units)** trade at a premium per square foot, indicating higher demand intensity in prime vertical communities.
* **Top Volume Area:** "Bussiness Bay" is currently the most active market.

**Tech Stack:** SQLite, Python (pandasql), Window Functions.

## 📊 Phase 3: The Executive Dashboard (Power BI)
**Objective:** Visualize the SQL insights to answer the client's core question: *"Where should I put 2 Million AED?"*

**Key Visuals:**
* **The Hotspot:** Bar chart showing **Business Bay** as the #1 volume area.
* **The Value Gap:** Scatter plot revealing that **Apartments** have a higher Price Per SqFt than Villas.
* **Liquidity Check:** Donut chart confirming **1-Bedrooms** as the dominant asset class.

**Tech Stack:** Power BI, DAX Measures.


