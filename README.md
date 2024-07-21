# Credit Score Modelling 
<p align="center">
    <img src="https://www.simmonsbank.com/siteassets/content-hub/learning-center/credit-score-image.jpg" alt="Credit Score Image" height="500">
    <p align="center">
        Figure 1: Credit Score Illustration (<a href="https://www.simmonsbank.com/siteassets/content-hub/learning-center/credit-score-image.jpg">Source</a>).
    </p>
</p>

## Project Summary
In this project, we developed a credit score model leveraging Logistic Regression and Weight of Evidence techniques. The scoring methodology is based on the "point to double the odds" approach, utilizing Logistic Regression parameters, Weight of Evidence, and specific user-defined constraints to assign credit points for based on each predictor variable.

## Project Scope
The main objective is to create a reliable credit score model and develop a comprehensive credit scorecard.

## Tools and Technologies
The project is built using Python 3.10.13, with the following libraries and tools:
1. `pandas` and `numpy` for data manipulation.
2. `matplotlib` and `seaborn` for data visualization. 
3. `optbinning` for calculating Weight of Evidence and Information Value.  
4. `scikit-learn`, and `optbinning` for training and evaluation credit score model.

## Installation and Setup
To run this project locally, you can use [Anaconda](https://docs.anaconda.com/free/anaconda/install/) or [venv](https://virtualenv.pypa.io/en/latest/installation.html). Ensure your Python version is 3.10.13. Then, install the required libraries from the requirements.txt file:
```bash
  cd credit-scorecard-modelling
  pip install -r requirements.txt
```
For a detailed explanation of the project, please visit my [Medium blog post](https://medium.com/@aw_marcell/credit-score-modelling-project-11504f7ab530).

## Project Organization

```
├── LICENSE            <- Open-source license if one is chosen
├── Makefile           <- Makefile with convenience commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- Contain notebooks for data exploration and scorecard modelling
│
├── pyproject.toml     <- Project configuration file with package metadata for credit_scorecard_modelling_with_optbinning
│                         and configuration for tools like black
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures        <- Generated graphics and figures to be used in reporting
│
├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
│                         generated with `pip freeze > requirements.txt`
│
├── setup.cfg          <- Configuration file for flake8
```
--------