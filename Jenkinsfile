pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                sh "python --version" 
            }
        }
        stage('Test') { 
            steps {
                sh "echo 2"
            }
        }
        stage('Deploy') {
            steps {
                sh "echo 3"
            }
        }
    }
}
