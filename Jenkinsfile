pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker build -t ass ." 
            }
        }
        stage('Test') { 
            steps {
                sh "docker run -d -p 3333:5000 ass"
		sh "curl localhost:3333"
            }
        }
        stage('Deploy') {
            steps {
                sh "echo 3"
            }
        }
    }
}
