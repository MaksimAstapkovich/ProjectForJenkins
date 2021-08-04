pipeline {
    agent none 
    stages {
        stage('Build') {
            steps {
                sh "echo 1" 
            }
        }
        stage('Test') { 
            agent any
            steps {
                sh "echo 2"
            }
        }
        stage('Deploy') {
            agent any 
            steps {
                sh "echo 3"
            }
        }
    }
}
