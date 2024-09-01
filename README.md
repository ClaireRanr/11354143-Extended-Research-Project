# Extended-Research-Project

This repository contains four Python notebooks (EDA.ipynb, LSTM.ipynb, XGBoost.ipynb, Random Forest.ipynb) and one R script (use nasapower.R)

EDA.ipynb
Purpose: Performs the initial exploratory data analysis on the dataset.
Contents: Data importation. Handling of missing values and outliers. Data visualization. Feature engineering.

LSTM.ipynb
Purpose: Constructs and evaluates a Long Short-Term Memory (LSTM) model for forecasting PM2.5 levels.
Contents: Model training. Model testing. Future forecasts.

Random Forest.ipynb
Purpose: Utilizes a Random Forest model to predict PM2.5 levels.
Contents: Model training. Model testing. Future forecasts.

XGBoost.ipynb
Purpose: Employs an XGBoost model for forecasting purposes.
Contents: Model training. Model testing. Future forecasts.

use nasapower.R
Purpose: Integrates additional environmental data into the PM2.5 dataset.
Contents: Fetching temperature, relative humidity, and precipitation data from NASA's POWER project.
          Data matching by latitude, longitude, and timestamps.
          Augmentation of the original air quality measurements with meteorological data.
