# BSAN 450 - Assignment 2 (Spring 2025)
---

## Assignment Overview:
### Problem 1: Analysis of Evaporated and Sweetened Condensed Milk Stocks (1971-1980)
#### Data File: `evapmilk.csv`
- **Variable Name:** `Stock`

#### Tasks:
1. **Read & Plot:** Import data into R and plot the time series & sample ACF. Determine if the series is stationary.
2. **First Difference:** Plot & analyze the first difference of the series.
3. **12th Difference:** Plot & analyze the 12th difference.
4. **1st & 12th Difference:** Plot and analyze the combination.
5. **Modeling:** Postulate a time series model based on plots.
6. **Model Estimation:** Estimate two different models and analyze residuals.
7. **Model Comparison:** Compare the two models and justify the better fit.
8. **Forecasting:** Generate 24-month forecasts for both models and compare results.

---

### Problem 2: Modeling Monthly US Government Receipts (12-Year Period)
#### Data File: `GovRec.csv`
- **Variable Name:** `Receipts`

#### Tasks:
1. **Read & Plot:** Import data into R and determine stationarity.
2. **Transformation Suggestion:** Propose a transformation for stabilizing variance.
3. **Log Transformation:** Compute log of Receipts and analyze its effect.
4. **First Difference Analysis:** Assess stationarity after first differencing.
5. **12th Difference Analysis:** Assess stationarity after taking the 12th difference.
6. **1st & 12th Difference Analysis:** Assess stationarity after applying both differences.
7. **Modeling with 12th Difference:** Fit a model with a single 12th difference and check diagnostics.
8. **Modeling with 1st & 12th Differences:** Fit a model with both differences and check diagnostics.
9. **Model Comparison:** Compare the two models using estimated values of \( \sigma^2_e \) to determine the better fit.

---

### Problem 3: Time Series Modeling for College Station, Texas Revenues
#### Data File: `CSrev.csv`
- **Variable Name:** `Revenues`

#### Task:
- Develop an **appropriate time series model** for the given data.

---

## Guidelines & Requirements
- **Programming Language:** R
- **Libraries to Use (if needed):** `forecast`, `tseries`, `ggplot2`, `TSA`
- **Code Documentation:** Include comments in R scripts explaining each step.
- **Report Format:** Clearly present answers with supporting plots, calculations, and explanations.

---

## Getting Started
1. Clone this repository:
   ```bash
   git clone https://github.com/themoemansour/BSAN450_Assignment2.git
   ```
2. Navigate to the directory:
   ```bash
   cd BSAN450_Assignment2
   ```
3. Open R Studio and load the data files:
   ```r
   evapmilk <- read.csv("evapmilk.csv")
   govrec <- read.csv("GovRec.csv")
   csrev <- read.csv("CSrev.csv")
   ```
4. Follow the problem breakdown above to implement the required tasks.

---

## License
This assignment is for academic purposes ONLY. Do not distribute solutions publicly.

---


