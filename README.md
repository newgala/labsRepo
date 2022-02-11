![alt text](https://github.com/newgala/IronAngela/blob/main/logo-ironhack-blue.png)
# Ironhack Homelab: predicting strokes incidences
![alt text](https://github.com/newgala/IronAngela/blob/main/stroke%20pic.jpg)
### Data: [Kaggle](https://www.kaggle.com/general/248836)

### Objective:
Predicting strokes incidences using the logistic regression classify and check the result accurancy 
***
### Built with:
[Tableau](https://www.tableau.com/)
* #### Data aggregations and visualisations:
 compare the variable have more impact on the incidence rate and we found out that the age and the BMI are highly correlated to the incidence of strokes.

 [Python](https://www.python.org/)
* #### Initial cleaning steps   
  deal with nulls and drop useless columns
* #### EDA
  review columns' distribution, counts and correlation
* #### Pre-processing: encode categories and scale numerics
* #### Train, test, split
* #### Define model
  Logistic regression classify
* #### Check accuracy of our classification model
* #### Fit the model to more balanced data
* #### Resampling techniques
  confusion_matrix and heatmap
* #### Correlating categories
  Random Under Sampler and Random Over Sampler
* #### AUC

[link to code ](http://localhost:8889/notebooks/Desktop/GitHub/filesforwork/Predicting_strokes_incidences%2008.02.2022.ipynb)

***

### Method:

### Insight

1. Our model can predict the incident of  of 84%
2. We suspect the following features to impact the customers decision to accept the most:

    mailer type
    credit rating
    income level
    reward
