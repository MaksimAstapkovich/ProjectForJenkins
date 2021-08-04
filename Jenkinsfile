pipeline {
    agent { 
        docker 'python3'
    }
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
