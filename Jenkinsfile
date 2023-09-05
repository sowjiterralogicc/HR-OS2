pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout the Git repository
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/spandanasy/automation_task.git']]])
            }
        }
        stage('Run Tests') {
            steps {
                // First, navigate to the directory for module 1 tests
                dir('C:\\Users\\Thippeswamy U-3061\\PycharmProjects\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                    // Run Robot Framework tests for module 1
                    bat 'robot testcase1.robot'
                }
                // Then, navigate to the directory for module 2 tests
                dir('C:\\Users\\Thippeswamy U-3061\\PycharmProjects\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                    // Run Robot Framework tests for module 2
                    bat 'robot testcase2.robot'
                }
                // Navigate to the directory for module 2 tests
                dir('C:\\Users\\Thippeswamy U-3061\\PycharmProjects\\Robot_Framework\\framework\\TestCycles\\Module2\\Testscenerio') {
                    // Run Robot Framework tests for module 2
                    bat 'robot testcase1.robot'
                }
                // Then, navigate to the directory for module 2 tests
                dir('C:\\Users\\Thippeswamy U-3061\\PycharmProjects\\Robot_Framework\\framework\\TestCycles\\Module2\\Testscenerio') {
                    // Run Robot Framework tests for module 2
                    bat 'robot testcase2.robot'
                }
            }
        }
    }
}
