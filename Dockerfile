# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Define environment variables (e.g., browser and environment)
ENV BROWSER chrome
ENV ENV dev

# Run your Robot Framework tests
CMD ["robot", "-d", "Results", "-v", "BROWSER:${BROWSER}", "-v", "ENV:${ENV}", "Framework/TestCycles/Module1/Testscenerio/testcase3.robot"]
CMD ["robot", "-d", "Results", "-v", "BROWSER:${BROWSER}", "-v", "ENV:${ENV}", "Framework/TestCycles/Module1/Testscenerio/testcase4.robot"]
CMD ["robot", "-d", "Results", "-v", "BROWSER:${BROWSER}", "-v", "ENV:${ENV}", "Framework/TestCycles/Module1/Testscenerio/testcase41.robot"]
CMD ["robot", "-d", "Results", "-v", "BROWSER:${BROWSER}", "-v", "ENV:${ENV}", "Framework/TestCycles/Module1/Testscenerio/testcase42.robot"]
CMD ["robot", "-d", "Results", "-v", "BROWSER:${BROWSER}", "-v", "ENV:${ENV}", "Framework/TestCycles/Module1/Testscenerio/testcase43.robot"]
CMD ["robot", "-d", "Results", "-v", "BROWSER:${BROWSER}", "-v", "ENV:${ENV}", "Framework/TestCycles/Module1/Testscenerio/testcase44.robot"]


## Update package lists
#FROM python:3.11-slim
#WORKDIR /c/Users/Sowjanya\ N-3147/Downloads/Robot_Framework/Robot_Framework
#RUN apt-get update
## Install Robot Framework and SeleniumLibrary
#RUN pip install selenium
#RUN pip install --no-cache-dir robotframework
#RUN pip install robotframework-seleniumlibrary

# Set Chrome WebDriver path
#ENV PATH="${PATH}:/c/Users/Sowjanya\ N-3147/Downloads/chromedriver_win32/chromedriver.exe"

#
## Use a Python base image for Windows
#FROM python:3.11-slim
#
#
#
## Set the working directory
#WORKDIR /c/Users/Sowjanya\ N-3147/Downloads/Robot_Framework/Robot_Framework
#
## Install Robot Framework (if needed)
# RUN pip install --no-cache-dir robotframework
# RUN pip install selenium
# RUN pip install --upgrade robotframework-seleniumlibrary
# # Install Chrome and Chrome WebDriver
##RUN apt-get update && apt-get install -y chromium-driver chromium && rm -rf /var/lib/apt/lists/*
#
#
## Copy your Robot Framework test suite and other necessary files into the container
#COPY . .
#
## Set Chrome WebDriver path
#ENV PATH="${PATH}:/c/Users/Sowjanya\ N-3147/Downloads/chromedriver_win32/chromedriver.exe"
#
#
## Copy your Robot Framework test suite and other necessary files into the container
#
#
#
#
##
##COPY . .
##
### Specify the command to run your Robot Framework tests
##CMD ["robot", "/c/Users/Sowjanya N-3147/Downloads/Robot_Framework/Robot_Framework/framework/TestCycles/Module1/Testscenerio/testcase3.robot"]
#


#
#pipeline {
#    agent any
#
#    stages {
#        stage('Build Docker Image') {
#            steps {
#                script {
#                    // Define the Docker image name
#                    def dockerImage = 'my-robot-tests'
#
#                    // Build the Docker image
#                    docker.build(dockerImage, '-f path/to/Dockerfile .')
#
#                    // Push the Docker image to a registry if needed
#                    // docker.withRegistry('https://hub.docker.com/repository/docker/sowjiterralogic/robot_automation/general', 'your-registry-credent') {
#                    //     dockerImage.push()
#                    // }
#                }
#            }
#        }
#
##        stage('Run Tests in Docker Container') {
##            steps {
##                script {
##                    // Run Robot Framework tests in a Docker container
##                    docker.image('my-robot-tests')
##                        .inside('-v ${PWD}C:\\Users\\Sowjanya N-3147\\Downloads\\Robot_Framework\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio:/tests') {
##                            // Assuming you have Robot Framework installed in your Docker image
##                            sh 'robot /tests/testcase3.robot'
##                            sh 'robot /tests/testcase4.robot'
##                            sh 'robot /tests/testcase41.robot'
##                            sh 'robot /tests/testcase42.robot'
##                            sh 'robot /tests/testcase43.robot'
##                            sh 'robot /tests/testcase44.robot'
##
##                        }
##                }
##            }
##        }
##    }
##
##    post {
##        always {
##            // Clean up resources if needed
##            script {
##                docker.image('my-robot-tests').remove()
##            }
##        }
##    }
##}
