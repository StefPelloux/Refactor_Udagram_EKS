






VERSION DOCKER 
Appli has been already cut in 4 parts
db, backend api, backend user and frontend
reversProxy added

## Tips
Take a look on Classroom_Project_Instructions folders to have all information




# Udagram Image Filtering Application

Udagram is a simple cloud application developed alongside the Udacity Cloud Developer Nanodegree. It allows users to register and log into a web client, post photos to the feed, and process photos using an image filtering microservice.

The project is split into two parts:
1. Frontend - Angular web application built with Ionic Framework
2. Backend RESTful API - Node-Express application

## Getting Started
> _tip_: it's recommended that you start with getting the backend API running since the frontend web application depends on the API.

### Prerequisite
1. The depends on the Node Package Manager (NPM). You will need to download and install Node from [https://nodejs.com/en/download](https://nodejs.org/en/download/). This will allow you to be able to run `npm` commands.
2. Environment variables will need to be set. These environment variables include database connection details that should not be hard-coded into the application code.

#### Environment Script
A file named `set_env.sh` has been prepared as an optional tool to help you configure these variables on your local development environment.
 
Afterwards, we can prevent the file from being included in your solution by adding the file to our `.gitignore` file.

### 1. Database
Db based on postgres docker image


### 2. S3
Create an AWS S3 bucket. The S3 bucket is used to store images that are displayed in Udagram.
Set the config values for environment variables prefixed with `AWS_` in `set_env.sh`.
Exemple here tcn-my-bucket

### 3. Backend API

Docker images based on node:14

### 4. Frontend App

Docker images based on  beevelop/ionic:v2021.06.1 

### 5. Frontend App

Reverse proxy nginx



