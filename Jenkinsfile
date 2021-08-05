pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker build -t ass/toolbox:latest ."
            }
        }
        stage('Test') { 
            steps {
                sh "docker run -d -p 3333:5000 ass/toolbox:latest"
		sh "docker ps"
		sh "echo $MY_IP_I"
		sh "curl ${MY_IP_I}:3333"
		sh "./script1.sh"
		sh 'docker rm -f $(docker ps | grep ass | cut -d" " -f1)'
            }
        }
        stage('Deploy') {
            steps {
	        withCredentials([usernamePassword(credentialsId: "max_dh", usernameVariable: "USERNAME", passwordVariable: "PASSWORD")]) {
                sh """docker login -u $USERNAME -p $PASSWORD"""
		}
		sh '''docker push ass/toolbox:latest'''
            }
        }
    }
}
