pipeline {
    agent none 
    stages {
        stage('Build') {
            agent { 
                docker 'python3:latest'
	    }
            steps {
                sh "python --version" 
            }
        }
        stage('Test') { 
            agent any
            steps {
                sh "./script2.sh"
            }
        }
        stage('Deploy') {
            agent any 
            steps {
                sh "./script3.sh"
            }
        }
    }
}
