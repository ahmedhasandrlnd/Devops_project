[![ahmedhasandrlnd](https://app.circleci.com/pipelines/github/ahmedhasandrlnd/Devops_project.svg?style=svg)](https://app.circleci.com/pipelines/github/ahmedhasandrlnd/Devops_project)

## Project Overview
### Ahmed Monjurul Hasan

In this project, we will apply the skills we have acquired in this course to operationalize a Machine Learning Microservice API. 

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests our ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Our project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project we will:
* Test our project code using linting
* Complete a Dockerfile to containerize this application
* Deploy our containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that our code has been tested

We can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase our abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
* 
### File Summary

* `Dockerfile`          : docker image, requirement libraries, running command
* `Makefile`            : python environment, requirement libraries installation, lint test
* `app.py`              : flask application of the project
* `model_data`          : housing prices dataset, machine learning model
* `make_prediction.sh`  : prediction script
* `run_docker.sh`       : docker running script
* `upload_docker.sh`    : docker repo upload script
* `run_kubernetes.sh`   : kubernetes running script
* `requirements.txt`    : python library for the project
* `output_txt_files`    : output prediction
* `kubernetes_out.txt`  : kubernetes output
* `.circleci`           : circleci configure file
