# Cloud-Native Application Using Python

In this project, I built a cloud-native system monitoring application by containerising the app with Docker and set up an ECR registry using the AWS SDK.
## Overview

In this project I:
- Creating a Python application using Flask.
- Containerising the application with Docker.
- Using AWS Boto3 to set up an ECR registry on AWS.
- Pushing the Docker image to the ECR registry.

![image_alt](https://github.com/GitCadet/cn-metric-app/blob/main/ss-system-monitoring-app.png?raw=true)

## Steps

### 1. Build a Flask Application

First, I created a Flask application in Python.

### 2. Containerising the Application

Next, I containerised the Flask application by creating a "`Dockerfile`". This file defines the environment for the Flask app, installing the necessary dependencies and exposing the required ports. Once the `Dockerfile` was set up, I built the Docker image.

### 3. Setting Up an ECR Registry on AWS

To store the Docker images, I used AWS Boto3 (AWS SDK for Python) to create an Elastic Container Registry (ECR) on AWS.

![image](https://github.com/GitCadet/cn-metric-app/blob/main/ecr-repo.png?raw=true)

### 4. Pushing the Docker Image to ECR

Once the Docker image was built, I pushed it to the ECR registry using Docker commands. With the image stored in ECR, I can now manage and deploy it to various AWS services like Amazon ECS or EKS.

![image_alt](https://github.com/GitCadet/cn-metric-app/blob/main/pushed-image.png?raw=true)

## Technologies Used

- **Flask** – A lightweight web framework for Python, used to build the application.
- **Docker** – A platform for containerizing the application to ensure consistency across different environments.
- **AWS ECR** – Amazon Elastic Container Registry, used to store and manage Docker images.
- **Boto3** – The AWS SDK for Python, which I used to interact with AWS services like ECR.

## Skills Demonstrated

- **Containerisation** – Using Docker to create and manage containers for consistent, portable applications.
- **Infrastructure as Code (IaC)** – Utilizing Boto3 to automate the setup and management of AWS resources (ECR in this case)
- **Python & Flask** – Developing a Python web application using the Flask to build a Metric app.




