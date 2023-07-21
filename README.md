
# Project Overview [![CircleCI](https://dl.circleci.com/status-badge/img/gh/KhoaiLuoc/UDAProject4/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/KhoaiLuoc/UDAProject4/tree/master)
In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


# Project Tasks
This project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

Test your project code using linting
Complete a Dockerfile to containerize this application
Deploy your containerized application using Docker and make a prediction
Improve the log statements in the source code for this application
Configure Kubernetes and create a Kubernetes cluster
Deploy a container using Kubernetes and make a prediction
Upload a complete Github repo with CircleCI to indicate that your code has been tested


Other Libraries
While you still have your .devops environment activated, you will still need to install:

Docker
Hadolint
Kubernetes (Minikube)




# Set up the Environment

* Install Python3.7
```bash
sudo apt install libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.6 libgdm-dev libdb4o-cil-dev libpcap-dev
cd ~
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
tar xvf Python-3.7.3.tar.xz
cd Python-3.7.3
./configure
sudo make
# Regularly common way is make install
# sudo make install
# Or using make altinstall to avoid override the existing Python lower version
sudo make altinstall
```

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`



# Set up the Environment

* Install Python3.7
```bash
sudo apt install libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.6 libgdm-dev libdb4o-cil-dev libpcap-dev
cd ~
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
tar xvf Python-3.7.3.tar.xz
cd Python-3.7.3
./configure
sudo make
# Regularly common way is make install
# sudo make install
# Or using make altinstall to avoid override the existing Python lower version
sudo make altinstall
```

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`



# Description of the files
* .env: The environment variable file that contain secret variable for DockerHUB
* app.py: The API that use for predicting house pricing
* Dockerfile: The instruction for the docker build to build an image
* make_prediction.sh: The script to call POST API
* Makefile: The instruction file to set up environment, install dependencies, test and lint for APP
* requirements.txt: Contains all dependencies.
* run_docker.sh: The script for running app in Docker evironment.
* run_kubernetes.sh: The script for running app in Kubernates evironment.
* upload_docker.sh: The script for uploading an image into dockerhub.

