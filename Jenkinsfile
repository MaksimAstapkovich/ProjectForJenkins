pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker build -t mastapkovich/projcore:latest ."
            }
        }
        stage('Test') { 
            steps {
                sh "docker run -d -p 3333:5000 mastapkovich/projcore:latest"
		sh "docker ps"
		sh "echo $MY_IP_I"
		sh "curl ${MY_IP_I}:3333"
		sh "./script1.sh"
		sh 'docker rm -f $(docker ps | grep mastap | cut -d" " -f1)'
            }
        }
        stage('Deploy') {
            steps {
	        withCredentials([usernamePassword(credentialsId: "max_dh", usernameVariable: "USERNAME", passwordVariable: "PASSWORD")]) {
                sh """docker login -u $USERNAME -p $PASSWORD"""
		}
		sh '''docker push mastapkovich/projcore:latest'''
            }
        }
    }
}
