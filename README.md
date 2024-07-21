# Credit Scorecard Modelling 
<p align="center">
    <img src="https://www.simmonsbank.com/siteassets/content-hub/learning-center/credit-score-image.jpg" alt="Credit Score Image" height="500">
    <p align="center">
        Figure 1: Credit Score Illustration (<a href="https://www.simmonsbank.com/siteassets/content-hub/learning-center/credit-score-image.jpg">Source</a>).
    </p>
</p>

## Project Summary
In this project, we developed a credit score model leveraging Logistic Regression and Weight of Evidence techniques. The scoring methodology is based on the "point to double the odds" approach, utilizing Logistic Regression parameters, Weight of Evidence, and specific user-defined constraints to assign credit points for based on each predictor variable. Tools that will be used is [optbinning](https://gnpalencia.org/optbinning/installation.html) which is a library for credit scorecard development.


## Project Scope
The main objective is to create a reliable credit score model and develop a comprehensive credit scorecard.

## Tools and Technologies
The project is built using Python 3.12.4, with the following libraries and tools:
1. `pandas` and `numpy` for data manipulation.
2. `matplotlib` and `seaborn` for data visualization. 
3. `optbinning` for credit scorecard development (weight of evidence and information Value calculation).  
4. `scikit-learn`, and `optbinning` for training and evaluation credit score model.

## Installation and Setup
To run this project locally, you can use [Anaconda](https://docs.anaconda.com/free/anaconda/install/). Ensure your Python version is 3.12.4. Recommended using linux environment for setting up  environment. Then, install the required libraries from the requirements.txt file:
```bash
  make create_environment  # create conda environment
  conda activate credit-scorecard-modelling-with-optbinning  # access the environment
  make requirements  # install all libraries from the requirements.txt file
  make create_ipykernel  # create ipykernel
```
With this you can use run the code using the exact same dependencies that I used for this project.

For a detailed explanation of the project, please visit my [Medium blog post](https://medium.com/@aw_marcell/credit-score-modelling-project-11504f7ab530).
