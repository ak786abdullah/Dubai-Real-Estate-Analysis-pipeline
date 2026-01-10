##  Phase 1: Data Engineering & Cleaning
**Objective:** Processed 1 million+ raw transaction records from the Dubai Land Department to prepare for investment analysis.

**Key Challenges Solved:**

* **Handling Missing Data:** Implemented domain-specific heuristic rules to impute missing 'Room' numbers based on property size (e.g., <50 sqm = Studio).
* **Outlier Removal:** Applied Interquartile Range (IQR) method to remove statistical anomalies in Price and Area, reducing data noise by ~4%.
* **Dimensionality Reduction:** Dropped high-cardinality columns with >90% missing values (e.g., `rent_value`) to optimize memory usage.

**Tech Stack:** Python, Pandas, NumPy, Regex.
