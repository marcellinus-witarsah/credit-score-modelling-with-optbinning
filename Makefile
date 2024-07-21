#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = credit-scorecard-modelling-with-optbinning
PYTHON_VERSION = 3.12.4
PYTHON_INTERPRETER = python

#################################################################################
# COMMANDS                                                                      #
#################################################################################


## Install Python Dependencies
.PHONY: requirements
requirements:
	$(PYTHON_INTERPRETER) -m pip install -U pip
	$(PYTHON_INTERPRETER) -m pip install -r requirements.txt


## Delete all compiled Python files
.PHONY: clean
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

## Lint using flake8 and black (use `make format` to do formatting)
.PHONY: lint
lint:
	flake8 credit_scorecard_modelling_with_optbinning
	isort --check --diff --profile black credit_scorecard_modelling_with_optbinning
	black --check --config pyproject.toml credit_scorecard_modelling_with_optbinning

## Format source code with black
.PHONY: format
format:
	black --config pyproject.toml credit_scorecard_modelling_with_optbinning


## Set up python interpreter environment
.PHONY: create_environment
create_environment:
	conda create --name $(PROJECT_NAME) python=$(PYTHON_VERSION) -y
	
	@echo ">>> conda env created. Activate with:\nconda activate $(PROJECT_NAME)"
	

## Create a ipykernel
.PHONY: create_ipykernel
create_ipykernel:
	$(PYTHON_INTERPRETER) -m pip install ipykernel
	$(PYTHON_INTERPRETER) -m ipykernel install --user --name $(PROJECT_NAME) --display-name "$(PROJECT_NAME) (Python $(PYTHON_VERSION))"

	@echo ">>> ipykernel created"



#################################################################################
# PROJECT RULES                                                                 #
#################################################################################


## Make Dataset
.PHONY: data
data: requirements
	$(PYTHON_INTERPRETER) credit_scorecard_modelling_with_optbinning/dataset.py


#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys; \
lines = '\n'.join([line for line in sys.stdin]); \
matches = re.findall(r'\n## (.*)\n[\s\S]+?\n([a-zA-Z_-]+):', lines); \
print('Available rules:\n'); \
print('\n'.join(['{:25}{}'.format(*reversed(match)) for match in matches]))
endef
export PRINT_HELP_PYSCRIPT

help:
	@$(PYTHON_INTERPRETER) -c "${PRINT_HELP_PYSCRIPT}" < $(MAKEFILE_LIST)
