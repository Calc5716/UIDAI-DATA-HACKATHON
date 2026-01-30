# When and Where Indians Update Aadhaar  
### A Seasonal and Regional Analysis of Biometric Update Demand

📊 **UIDAI Data Hackathon 2026 Submission**

---

## 📌 Overview

This project analyzes **1.86 million Aadhaar biometric update records** to uncover **seasonal, regional, and temporal patterns** in biometric update behavior across India.  
The goal is to provide **actionable insights** for UIDAI to optimize **resource allocation, enrollment infrastructure, and awareness campaigns**.

Key finding: **Seasonality alone explains ~49% of variance** in biometric update rates, with **spring months showing massive demand surges**.

---

## 🎯 Problem Statement

Aadhaar biometric updates are **not uniformly distributed** across time or geography. Understanding these patterns is critical for:

- 📈 Operational efficiency (anticipating demand surges)
- 🏛️ Policy design (identifying underserved regions)
- 🧑‍💼 Service delivery (staffing and infrastructure planning)

---

## 🧠 Methodology

### 1. Data Cleaning & Standardization
- Normalized inconsistent state/district names (974+ districts)
- Resolved historical boundary changes (e.g., Telangana, Ladakh)
- Aligned population data with **Census 2011**

### 2. Feature Engineering
- Population-normalized rates (per 100k)
- Seasonal classification (Indian climatic seasons)
- Region mapping (7 geographic regions)
- Temporal features: month, quarter, weekend indicator

### 3. Statistical Modeling (R)
- Additive models: `region + season`
- Interaction models: `region × season`
- ANCOVA with month and weekend covariates
- Effect size analysis using **η² (eta-squared)**

### 4. Visualization (Python)
- Seasonal trends
- Regional disparities
- Weekend effects
- Heatmaps and choropleth maps of India

---

## 📊 Key Findings

### 🌸 Seasonal Dominance
- **Spring update rates are ~28–30x higher than winter**
- Seasons explain **49% of total variance**

### 🗺️ Regional Disparities
- Central Region shows **5.2x higher update rates** than Southern Region
- Indicates infrastructure, awareness, or accessibility gaps

### 🔥 Region × Season Interaction
- North-Eastern Region shows a **strong spring surge**
- Likely driven by agricultural cycles, campaigns, and accessibility windows

### 📅 Weekend Paradox
- Update rates are **lower on weekends**
- Suggests institutional or operational constraints

### 📈 Temporal Momentum
- Linear monthly trend suggests **deadline-driven behavior**
- Strong ramp-up before **March 31 (financial year-end)**

---

## 🧩 Impact & Applications

### Administrative Impact
- Enables **90-day demand forecasting**
- Supports evidence-based staffing and budgeting
- Optimizes seasonal deployment of enrollment centers

### Policy Impact
- Targeted interventions for underperforming regions
- Campaign timing aligned with regional-seasonal patterns
- Scalable framework for future UIDAI datasets

### Social Impact
- Highlights equity gaps affecting access to:
  - Banking
  - Welfare schemes
  - Digital public infrastructure

---

## 🛠️ Tech Stack

**Python**
- pandas, numpy
- matplotlib, seaborn, plotly
- geopandas (for choropleth mapping)

**R**
- stats (`lm`, `aov`)
- effectsize
- tidyverse

---

---

## 🚀 Future Work

- District-level hierarchical models
- Time-series forecasting (SARIMA)
- Causal inference (DiD, ITS)
- Integration with socioeconomic indicators

---

## 👤 Authors

- **Prajesh Bandhu Banerjee**  
- **Paramesh Bandhu Banerjee**

---

## 🔗 References

- UIDAI Aadhaar Enrolment & Update Dataset  
- Census of India 2011  
- R & Python open-source libraries

---

⭐ If you find this project useful, consider starring the repository!



