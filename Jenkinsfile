pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Git repository
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/sowjiterralogicc/HR-OS.git']]])
            }
        }

        stage('Run Tests') {
            steps {
                // First, navigate to the directory for module 1 tests
                dir('C:\\Users\\Sowjanya N-3147\\Downloads\\Robot_Framework\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                    // Run Robot Framework tests for module 1
                    bat 'robot testcase3.robot'
                }

                // Then, navigate to the directory for module 2 tests
                dir('C:\\Users\\Sowjanya N-3147\\Downloads\\Robot_Framework\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                    // Run Robot Framework tests for module 2
                    bat 'robot testcase4.robot'
                }
                dir('C:\\Users\\Sowjanya N-3147\\Downloads\\Robot_Framework\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                    // Run Robot Framework tests for module 2
                    bat 'robot testcase41.robot'
                }
                dir('C:\\Users\\Sowjanya N-3147\\Downloads\\Robot_Framework\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                    // Run Robot Framework tests for module 2
                    bat 'robot testcase42.robot'
                }
                dir('C:\\Users\\Sowjanya N-3147\\Downloads\\Robot_Framework\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                  // Run Robot Framework tests for module 2
                   bat 'robot testcase43.robot'
                }
                dir('C:\\Users\\Sowjanya N-3147\\Downloads\\Robot_Framework\\Robot_Framework\\framework\\TestCycles\\Module1\\Testscenerio') {
                     // Run Robot Framework tests for module 2
                   bat 'robot testcase44.robot'
                }

            }
        }
    }
}
