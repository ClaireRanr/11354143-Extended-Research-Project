# Extended-Research-Project

This repository contains four Python notebooks (EDA.ipynb, LSTM.ipynb, XGBoost.ipynb, Random Forest.ipynb) and one R script (use nasapower.R)

Due to data protection, I am unable to provide the datasets used here, but if needed, you can apply to access the relevant data on this website.

[https://analytics.airqo.net/](https://analytics.airqo.net/)

# Dependencies
#### This project requires the following Python libraries:

NumPy: For numerical operations.

Pandas: For data manipulation and analysis.

Matplotlib: For creating static, interactive, and animated visualizations in Python.

Seaborn: For high-level interface for drawing attractive and informative statistical graphics.

Scikit-learn: Includes tools for data preprocessing, model training, and evaluation; also specifically used here for RandomForestRegressor, Pipeline, StandardScaler, TimeSeriesSplit, and RandomizedSearchCV.

XGBoost: An implementation of gradient boosted decision trees designed for speed and performance.

PyTorch: A deep learning framework that provides flexibility and speed in building deep learning models, including modules such as torch.nn and torch.optim.

GeoPandas: For working with geospatial data in Python.

SciPy: Used for scientific and technical computing, here particularly for statistical distributions.

#### This project requires the following R Packages:

nasapower: Retrieves meteorological data for agroclimatology purposes from NASA's POWER (Prediction of Worldwide Energy Resource) project.

readr: Provides a fast and friendly way to read rectangular data (like CSV, TSV, and FWF).

# Workflow

Start with EDA.ipynb to import the data and select all site names and coordinates, then save this as sorted_sites.csv.

Run use nasapower.R to import sorted_sites.csv and match it with environmental data from NASA's POWER project.

Return to EDA.ipynb to integrate the matched environmental data into your original dataset, and continue with the rest of exploratory data analysis.

Proceed with the model training notebooks: LSTM.ipynb, Random Forest.ipynb, and XGBoost.ipynb, using the enhanced dataset for training, testing and forecasting.

# EDA.ipynb
Purpose: Performs the initial exploratory data analysis on the dataset.  

Contents: Data importation. Handling of missing values and outliers. Data visualization. Feature engineering.

# use nasapower.R
Purpose: Integrates additional environmental data into the PM2.5 dataset.

Contents: Fetching temperature, relative humidity, and precipitation data from NASA's POWER project.
          Data matching by latitude, longitude, and timestamps.
          Augmentation of the original air quality measurements with meteorological data.

# LSTM.ipynb
Purpose: Constructs and evaluates a Long Short-Term Memory (LSTM) model for forecasting PM2.5 levels.

Contents: Model training. Model testing. Future forecasts.

# XGBoost.ipynb
Purpose: Employs an XGBoost model for forecasting purposes.

Contents: Model training. Model testing. Future forecasts.

# Random Forest.ipynb
Purpose: Utilizes a Random Forest model to predict PM2.5 levels.

Contents: Model training. Model testing. Future forecasts.
